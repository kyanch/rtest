mod client;
mod server;

use serde::{Deserialize, Deserializer, Serialize};
pub use server::server;

#[derive(Clone, Copy, Debug, Deserialize, Serialize)]
#[repr(u8)]
pub enum DataType {
    Beat = 0,
    Msg = 1,
    Binary = 2,
}
type MsgTypeParseError = String;
impl TryFrom<u8> for DataType {
    type Error = MsgTypeParseError;

    fn try_from(value: u8) -> Result<Self, Self::Error> {
        match value {
            0 => Ok(DataType::Beat),
            1 => Ok(DataType::Msg),
            2 => Ok(DataType::Binary),
            _ => Err(format!("MsgType Parse Error: value = {}", value)),
        }
    }
}
#[derive(Debug, Deserialize, Serialize)]
pub struct MsgHead {
    pub length: u32,
    pub r#type: DataType,
    pub receiver: Vec<String>,
}
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
#[test]
fn test() {
    let x = MsgHead {
        length: 1234,
        r#type: DataType::Beat,
        receiver: vec!["1234".to_string(), "张三".to_string(), "jack".to_string()],
    };
    println!("{:?}", x.receiver);
    let buf =rmps::to_vec(&x).unwrap();
    println!("{:?}", buf);
    let buf =rmps::to_vec_named(&x).unwrap();
    println!("{:?}", buf);
    let x: MsgHead = rmps::from_slice(&buf).unwrap();
    println!("{:?}", x);
}
