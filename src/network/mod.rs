
mod server;
mod client;
pub use server::server;


#[derive(Clone, Copy, Debug)]
#[repr(u8)]
pub enum MsgType {
    Beat = 0,
    ToServer = 1,
    ToClients = 2,
    Broadcast = 3,
}
type MsgTypeParseError = String;
impl TryFrom<u8> for MsgType {
    type Error = MsgTypeParseError;

    fn try_from(value: u8) -> Result<Self, Self::Error> {
        match value {
            0 => Ok(MsgType::Beat),
            1 => Ok(MsgType::ToServer),
            2 => Ok(MsgType::ToClients),
            3 => Ok(MsgType::Broadcast),
            _ => Err(format!("MsgType Parse Error: value = {}", value)),
        }
    }
}
#[derive(Debug)]
pub struct MsgHead {
    pub length: u32,
    pub r#type: MsgType,
}
impl MsgHead {
    // const SIZE: usize = std::mem::size_of::<MsgHead>();
    pub const SIZE: usize = 4 + 1;
    pub fn wrap(data:&Vec<u8>)->Self{
        MsgHead{ length: data.len() as u32, r#type: MsgType::ToServer}
    }
    pub fn len(&self) -> u32 {
        self.length
    }
    pub fn msg_type(&self) -> MsgType {
        self.r#type
    }
}
impl From<[u8; MsgHead::SIZE]> for MsgHead {
    fn from(data: [u8; MsgHead::SIZE]) -> Self {
        let length = u32::from_be_bytes(data[0..4].try_into().unwrap());
        let r#type = data[4].try_into().unwrap();
        MsgHead { length, r#type }
    }
}
impl From<MsgHead> for Vec<u8> {
    fn from(head: MsgHead) -> Self {
        let mut vec = head.len().to_be_bytes().to_vec();
        vec.push(head.msg_type() as u8);
        vec
    }
}
// 阻塞，直至C-^ 信号到来
pub async fn handle_ctrl_c(){
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