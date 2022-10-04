use std::{
    collections::HashMap,
    sync::{Arc, Mutex}, io,
};

use tokio::{
    net::{tcp::{OwnedReadHalf, OwnedWriteHalf}, TcpListener},
    sync::{broadcast, mpsc},
};

struct Cmd {}
pub fn server() {
    tokio::runtime::Builder::new_multi_thread()
        .enable_all()
        .build()
        .unwrap()
        .block_on(async {
            let (kill_tx, kill_rx) = broadcast::channel(10);
            let kill_tx = Arc::from(kill_tx);
            super::handle_ctrl_c(kill_tx.clone());
            tokio::select! {
                _ = kill_rx.recv() =>debug!("Closing server..."),
                res = listen(kill_tx.clone()) => res.unwrap(),
            }
        });
}
async fn listen(kill_tx: Arc<broadcast::Sender<bool>>)-> io::Result<()> {
    let listen_ip = "0.0.0.0:9900";
    let listener = TcpListener::bind(listen_ip).await?;
    info!("Listen on {}",listen_ip);

    let map = Arc::new(Mutex::new(HashMap::new()));

    // 发送数据相关的channel
    let (sender_msg_tx,sender_msg_rx) = mpsc::channel(200);

    // 
    tokio::spawn(handle_sender_msg(kill_tx.subscribe(),map.clone(),sender_msg_rx));
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
// 处理接收信号
fn handle_client_recv(
    kill_rx: broadcast::Receiver<bool>,
    client_reader: OwnedReadHalf,
    msg_sender: mpsc::Sender<Cmd>,
) {
}

// 处理发送数据
async fn handle_sender_msg(
    // 接收终止信号
    kill_rx: broadcast::Receiver<bool>,
    // clients的map
    clients_map: Arc<Mutex<HashMap<String, OwnedWriteHalf>>>,
    //接收server内部消息
    msg_receiver: mpsc::Receiver<Cmd>,
) {
}

fn server_handle(
    kill_rx: broadcast::Receiver<bool>,
    msg_receiver: mpsc::Receiver<Cmd>,
    msg_sender: mpsc::Sender<Cmd>,
) {
}
