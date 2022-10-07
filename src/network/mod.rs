mod client;
mod server;
mod data;

pub use server::server;
pub use client::client;
pub use data::{DataType,MsgHead};

// 阻塞，直至C-^ 信号到来
pub async fn handle_ctrl_c() {
    info!("Safe exit READY! Waiting for signal C-^ ...");
    match tokio::signal::ctrl_c().await {
        Ok(()) => {
            info!("Signal C-^ trigger.");
        }
        Err(e) => {
            error!("Unable to listen for signal c-^ :{}", e);
            panic!("Unable to listen for signal c-^ :{}", e)
        }
    }
}
