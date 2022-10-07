pub use rmp_serde::from_slice as decode;
pub use rmp_serde::to_vec as encode;
pub use rmp_serde::to_vec_named as encode_named;
use serde::{Deserialize, Serialize};

#[derive(Clone, Debug, Deserialize, Serialize)]
#[repr(u8)]
#[serde(tag = "type")]
pub enum DataType {
    #[serde(rename = "0")]
    Beat = 0,
    #[serde(rename = "1")]
    Msg = 1,
    #[serde(rename = "2")]
    Binary = 2,
}

#[derive(Debug, Deserialize, Serialize)]
pub struct MsgHead {
    pub length: u32,
    pub r#type: DataType,
    pub to_server: bool,
    pub receiver: Option<Vec<String>>,
}
impl MsgHead {
    pub fn len(&self) -> usize {
        self.length as usize
    }
}

#[test]
fn test() {
    let x = MsgHead {
        length: 1234,
        to_server: true,
        r#type: DataType::Msg,
        receiver: Some(vec![
            "1234".to_string(),
            "张三".to_string(),
            "jack".to_string(),
        ]),
    };
    println!("{:?}", x.receiver);
    let buf = rmp_serde::to_vec(&x).unwrap();
    println!("{:?}", buf);
    let buf = rmp_serde::to_vec_named(&x).unwrap();
    println!("{:?}", buf);
    let mut x: MsgHead = rmp_serde::from_slice(&buf).unwrap();
    println!("{:?}", x);
    x.receiver = None;
    let buf = rmp_serde::to_vec(&x).unwrap();
    println!("{:?}", buf);
}
