mod network;

#[macro_use]
extern crate log;

use std::collections::HashMap;
use std::io;
use std::io::{Error, ErrorKind};
use std::sync::Arc;
use tokio::io::{AsyncReadExt, AsyncWriteExt};
use tokio::net::tcp::{OwnedReadHalf, OwnedWriteHalf};
use tokio::net::{TcpListener, TcpStream};
use tokio::sync::{broadcast, mpsc, Mutex};
use crate::network::MsgHead;

// 用于server 内部数据交换
#[derive(Debug, Clone)]
#[allow(dead_code)]
enum Cmd {
    BEAT,
    // 服务内部消息
    Status(Status),
    // socket消息
    Msg(Vec<String>, Vec<u8>),
}

#[derive(Debug, Clone, Copy)]
#[allow(dead_code)]
enum Status {
    Quit,
    Pause,
    Normal,
}

struct ServerStatus {
    msg_sender: mpsc::Sender<Cmd>,
    msg_receiver: mpsc::Receiver<Cmd>,
    kill_broadcaster: Arc<broadcast::Sender<bool>>,
    conn_map: Arc<Mutex<HashMap<String, OwnedWriteHalf>>>,
}

impl ServerStatus {
    pub fn new(kill_broadcaster: Arc<broadcast::Sender<bool>>) -> Self {
        let (msg_sender, msg_receiver) = mpsc::channel(200);
        Self {
            msg_sender,
            msg_receiver,
            kill_broadcaster,
            conn_map: Arc::new(Mutex::new(HashMap::new())),
        }
    }
    // 接收socket，尝试建立连接，并转化为reader和writer，自留writer以便主动发送信息
    pub async fn client_connect(&mut self, mut socket: TcpStream) -> io::Result<OwnedReadHalf> {
        let mut len = socket.read_u32().await? as usize;
        let mut username = Vec::with_capacity(len);
        username.resize(len, 0);
        len = socket.read_exact(&mut username).await?;
        let username = String::from_utf8(username).unwrap();
        let mut map = self.conn_map.lock().await;
        match map.get(&username) {
            Some(_) => {
                socket.write_u8(2).await?;
                Err(Error::new(ErrorKind::Other, "Username has existed!"))
            }
            None => {
                let (reader, writer) = socket.into_split();
                map.insert(username, writer);
                Ok(reader)
            }
        }
    }
}

pub async fn handle_sender_msg(server: &mut ServerStatus) -> io::Result<()> {
    let mut go = true;
    let mut kill_rx = server.kill_broadcaster.subscribe();
    let mut clients_map = server.conn_map.clone();
    while go {
        // 接收程序终止信号
        go = kill_rx.recv().await.unwrap_or(true);
        // 接收消息
        match server.msg_receiver.recv().await.unwrap() {
            Cmd::BEAT => {}
            Cmd::Msg(clients, msg) => {
                // 根据clients发送给客户端
                for c in clients {
                    match clients_map.lock().await.get_mut(&c) {
                        None => { continue; }
                        Some(writer) => {
                            let head = MsgHead::wrap(&msg);
                            writer.write_all(& head.into()).await?;
                            writer.write_all(&msg).await?;
                        }
                    }
                }
            }
            Cmd::Status(_) => {}
        }
    }
    Ok(())
}

fn main() {
    env_logger::init();
    println!("Hello, world!");
    debug!("yes");
    tokio::runtime::Builder::new_multi_thread()
        .enable_all()
        .build()
        .unwrap()
        .block_on(async {
            let (kill_tx, kill_rx) = broadcast::channel(10);
            let kill_tx = Arc::from(kill_tx);
            network::handle_ctrl_c(kill_tx.clone());
            tokio::select! {
                _ = kill_rx.recv() =>debug!("Closing server..."),
                res = listen(kill_tx.clone()) => res.unwrap(),
            }
        })
}

async fn listen(kill_tx: Arc<broadcast::Sender<bool>>) -> io::Result<()> {
    let listen_ip = "0.0.0.0:9900";
    let listener = TcpListener::bind(listen_ip).await?;
    info!("Listen on {}",listen_ip);
    let mut server_status = ServerStatus::new(kill_tx);
    tokio::spawn(handle_sender_msg(&mut server_status));
    loop {
        match listener.accept().await {
            Ok((mut socket, _addr)) => {
                let s = server_status.client_connect(socket).await;
            }
            Err(e) => {
                debug!("Connection establish failed: {}",e.to_string());
                continue;
            }
        }
    }
    Ok(())
}


