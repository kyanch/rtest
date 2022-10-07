mod network;

extern crate serde;
extern crate rmp_serde;

#[macro_use]
extern crate log;

fn main() {
    env_logger::init();
    println!("Hello, world!");
    info!("Start up");

    network::server();

    return;
}