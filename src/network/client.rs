use rmp_serde::encode;
use tokio::{io::AsyncWriteExt, net::TcpStream};

use crate::network::{MsgHead, data};

#[test]
fn test() {
    tokio::runtime::Builder::new_multi_thread()
        .enable_all()
        .build()
        .unwrap()
        .block_on(async {
            info!("Hello, world!");
            let mut socket = TcpStream::connect("127.0.0.1:9900").await.unwrap();
            let username = b"jack";
            socket.write_u32(username.len() as u32).await.unwrap();
            socket.write_all(username).await.unwrap();
            let s = String::from("Hello world");
            let head = MsgHead {
                length: s.len() as u32,
                r#type: crate::network::DataType::Msg,
                to_server: true,
                receiver: None ,
            };
            let head = data::encode(&head).unwrap();
            socket.write_u32(head.len() as u32).await.unwrap();
            socket.write_all(&head).await.unwrap();
            socket.write_all(s.as_bytes()).await.unwrap();
        });
}
