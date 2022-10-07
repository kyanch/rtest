use std::{io, sync::Arc, vec};

use rmp_serde::encode;
use tokio::{
    io::{AsyncReadExt, AsyncWriteExt, BufReader, AsyncBufReadExt},
    net::{
        tcp::{self, OwnedReadHalf, OwnedWriteHalf},
        TcpStream,
    },
    select,
    sync::broadcast,
};

use crate::network::{data, handle_ctrl_c, MsgHead};
pub fn client() {
    tokio::runtime::Builder::new_multi_thread()
        .enable_all()
        .build()
        .unwrap()
        .block_on(async {
            info!("Hello, world!");
            // 建立链接
            let socket = build_connect().await;
            // 准备接收终止信号
            let (kill_tx, _) = broadcast::channel(2);
            let a_kill_tx = Arc::new(kill_tx);

            let kill_tx = a_kill_tx.clone();
            tokio::spawn(async move {
                handle_ctrl_c().await;
                kill_tx.send(false).unwrap();
            });
            let (reader, writer) = socket.into_split();
            tokio::select! {
                res = send(a_kill_tx.subscribe(),writer) =>{
                    match res {
                        Ok(_) => todo!(),
                        Err(_) => todo!(),
                    }
                },
                res = receive(a_kill_tx.subscribe(),reader)=>{
                    match res {
                        Ok(_) => todo!(),
                        Err(_) => todo!(),
                    }
                },
            }
            //启动发送和接收
            // let s = String::from("Hello world");
            // let head = MsgHead {
            //     length: s.len() as u32,
            //     r#type: crate::network::DataType::Msg,
            //     to_server: true,
            //     receiver: Some(vec!["nihao".to_string()]),
            // };
            // let head = data::encode(&head).unwrap();
            // socket.write_u32(head.len() as u32).await.unwrap();
            // socket.write_all(&head).await.unwrap();
            // socket.write_all(s.as_bytes()).await.unwrap();
        });
}

#[test]
fn test() {
    client();
}

async fn build_connect() -> TcpStream {
    let mut socket = TcpStream::connect("127.0.0.1:9900").await.unwrap();
    println!("input username:");
    let mut username = String::new();
    std::io::stdin().read_line(&mut username).unwrap();
    let username = username.trim().to_string();
    socket.write_u32(username.len() as u32).await.unwrap();
    socket.write_all(username.as_bytes()).await.unwrap();
    socket
}
async fn send(
    mut kill_rx: broadcast::Receiver<bool>,
    mut tcp_sender: OwnedWriteHalf,
) -> io::Result<()> {
    let mut buf = String::new();
    let mut head = MsgHead{ length: 0, r#type: super::DataType::Msg, to_server: true, receiver: Some(vec!["jack".to_string()]) };
    while kill_rx.try_recv().unwrap_or(true) {
        let mut stdin_reader = BufReader::new(tokio::io::stdin());
        stdin_reader.read_line(&mut buf).await?;
        head.length = buf.len() as u32;
        let head = data::encode(&head).unwrap();
        tcp_sender.write_u32(head.len() as u32).await?;
        tcp_sender.write_all(&head).await?;
        tcp_sender.write_all(buf.as_bytes()).await?;
    }
    Ok(())
}
async fn receive(
    mut kill_rx: broadcast::Receiver<bool>,
    mut tcp_receiver: OwnedReadHalf,
) -> io::Result<()> {
    let mut len: usize;
    let mut buf = Vec::with_capacity(200);
    while kill_rx.try_recv().unwrap_or(true) {
        len = tcp_receiver.read_u32().await? as usize;
        buf.resize(len, 0);
        tcp_receiver.read_exact(&mut buf).await?;
        let head: MsgHead = data::decode(&buf).unwrap();
        match head.r#type {
            super::DataType::Msg => {
                len = head.len();
                buf.resize(len, 0);
                tcp_receiver.read_exact(&mut buf).await?;
                eprintln!("Receiv: {}", String::from_utf8(buf.clone()).unwrap());
            }
            super::DataType::Binary => todo!(),
            super::DataType::Beat => (),
        }
    }
    Ok(())
}
