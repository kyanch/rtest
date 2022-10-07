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

use super::{data, MsgHead};

#[derive(Debug, Clone)]
enum Cmd {
    Msg(String),
    Binary(Vec<u8>),
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
                buf.resize(head.len(), 0);
                socket.read_exact(&mut buf).await?;
                if head.to_server {
                    sender_to_server
                        .send(Cmd::Msg(String::from_utf8(buf.clone()).unwrap()))
                        .await
                        .unwrap();
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
