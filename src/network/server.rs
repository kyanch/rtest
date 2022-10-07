use std::{
    borrow::Cow,
    collections::HashMap,
    io::{self, Error, ErrorKind},
    os::linux::fs::MetadataExt,
    sync::Arc,
};

use tokio::{
    io::{AsyncReadExt, AsyncWriteExt},
    net::{TcpListener, TcpStream},
    sync::{mpsc, Mutex, RwLock},
};

use super::{client, data, DataType, MsgHead};

#[test]
fn test(){
    server();
}

#[derive(Debug, Clone)]
enum Cmd {
    Msg(Arc<String>),
    Binary(Arc<Vec<u8>>),
}

pub fn server() {
    tokio::runtime::Builder::new_multi_thread()
        .enable_all()
        .build()
        .unwrap()
        .block_on(async {
            let (server_status, recv) = ServerStatus::new();
            tokio::spawn(handle_server(server_status.clone(), recv));
            tokio::select! {
                _ = super::handle_ctrl_c() =>{
                    server_status.set_stop_signal().await
                },
                res = listen(server_status.clone())=>{
                    res.unwrap();
                }
            }
        });
}
struct ServerStatus {
    stop_signal: RwLock<bool>,
    conn_map: RwLock<HashMap<String, Arc<Mutex<TcpStream>>>>,
    sender: mpsc::Sender<Cmd>,
}
impl ServerStatus {
    pub fn new() -> (Arc<Self>, mpsc::Receiver<Cmd>) {
        trace!("Server status build!");
        let (tx, rx) = mpsc::channel(200);
        (
            Arc::new(Self {
                stop_signal: RwLock::new(false),
                conn_map: RwLock::new(HashMap::new()),
                sender: tx.clone(),
            }),
            rx,
        )
    }
    pub async fn is_continue(&self) -> bool {
        // equal to `return  !self.stop_signal`
        return *(self.stop_signal.read().await) != true;
    }
    pub async fn set_stop_signal(&self) {
        // equal to ` self.stop_signal = true`
        let mut x = self.stop_signal.write().await;
        *x = true;
    }
    pub async fn client_connect(
        &self,
        mut socket: TcpStream,
    ) -> io::Result<(String, Arc<Mutex<TcpStream>>)> {
        // 获取用户名长度
        let mut len = socket.read_u32().await? as usize;
        // 获取用户名
        let mut username = Vec::with_capacity(len);
        username.resize(len, 0);
        len = socket.read_exact(&mut username).await?;
        let username = String::from_utf8(username).unwrap();
        // 获取map的写锁
        let mut map = self.conn_map.write().await;
        match map.get(&username) {
            Some(_) => {
                // 已有用户名 拒绝连接
                socket.write_u8(2).await?;
                Err(Error::new(
                    ErrorKind::Other,
                    format!("Username : \"{}\" has existed!", username),
                ))
            }
            None => {
                let socket = Arc::new(Mutex::new(socket));
                // 无用户名 保存到map中,并返回用户名
                map.insert(username.clone(), socket.clone());
                Ok((username, socket.clone()))
            }
        }
    }
    pub async fn remove_client(&self, name: &String) {
        let mut map = self.conn_map.write().await;
        let _ = map.remove(name);
    }
}

async fn listen(server_status: Arc<ServerStatus>) -> io::Result<()> {
    let listen_ip = "0.0.0.0:9900";
    let listener = TcpListener::bind(listen_ip).await?;
    info!("Listen on {}", listen_ip);

    loop {
        match listener.accept().await {
            Ok((socket, _addr)) => match server_status.client_connect(socket).await {
                Ok((name, socket)) => {
                    let server_status = server_status.clone();
                    tokio::spawn(async move {
                        trace!("New client : \"{}\".", name);
                        let _ = handle_client(&name, socket, server_status.clone()).await;
                        // 后处理
                        server_status.remove_client(&name).await;
                        trace!("Close client : \"{}\".", name);
                    });
                }
                Err(e) => {
                    debug!("{}", e.to_string());
                }
            },
            Err(e) => {
                debug!("Connection establish failed: {}", e.to_string());
                continue;
            }
        }
    }
    Ok(())
}
async fn handle_client(
    _name: &String,
    socket: Arc<Mutex<TcpStream>>,
    server_status: Arc<ServerStatus>,
) -> io::Result<()> {
    let mut len: usize;
    let mut buf = Vec::with_capacity(200);
    let sender_to_server = server_status.sender.clone();
    while server_status.is_continue().await {
        // get lock
        let mut socket = socket.lock().await;
        // read head
        len = socket.read_u32().await? as usize;
        buf.resize(len, 0);
        socket.read_exact(&mut buf).await?;
        let head: MsgHead = data::decode(&buf).unwrap();
        // parse head
        match head.r#type {
            super::DataType::Beat => continue,
            super::DataType::Msg => {
                // 获取 消息
                buf.resize(head.len(), 0);
                socket.read_exact(&mut buf).await?;
                // 数据获取完毕，立即释放锁
                drop(socket);
                // 消息入堆
                let message = Arc::new(String::from_utf8(buf.clone()).unwrap());
                // 发送给服务器
                if head.to_server {
                    let sender_to_server = sender_to_server.clone();
                    let message = message.clone();
                    tokio::spawn(async move {
                        sender_to_server.send(Cmd::Msg(message)).await.unwrap();
                    });
                }
                // 发送给其它客户端
                if let Some(clients) = &head.receiver {
                    // 准备发送数据
                    let message = message.clone();
                    let head = MsgHead {
                        length: message.len() as u32,
                        r#type: DataType::Msg,
                        to_server: true,
                        receiver: None,
                    };
                    let head = Arc::new(data::encode(&head).unwrap());
                    let map = server_status.conn_map.read().await;
                    for client_name in clients {
                        match map.get(client_name) {
                            Some(client_socket) => {
                                let name = client_socket.clone();
                                // 准备发送数据
                                let message = message.clone();
                                let head = head.clone();
                                // 启动发送协程
                                tokio::spawn(async move {
                                    // 获取锁
                                    let mut sender = name.lock().await;
                                    sender.write_u32(head.len() as u32).await.unwrap();
                                    sender.write_all(&head).await.unwrap();
                                    sender.write_all(message.as_bytes()).await.unwrap();
                                });
                            }
                            None => info!("Client \"{}\" NOT FOUND in conn_map!", client_name),
                        }
                    }
                }
            }
            super::DataType::Binary => todo!(),
        }
    }
    Ok(())
}
async fn handle_server(server_status: Arc<ServerStatus>, mut recv: mpsc::Receiver<Cmd>) {
    info!("Handle Server Startup!");
    while server_status.is_continue().await {
        let cmd = recv.recv().await.unwrap();
        match cmd {
            Cmd::Msg(msg) => {
                eprintln!("{}", msg);
            }
            Cmd::Binary(_) => todo!(),
        }
    }
    info!("Handle Server shutdown!");
}
