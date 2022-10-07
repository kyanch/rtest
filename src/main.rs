use std::env;

use crate::network::{client, server};

mod network;

extern crate rmp_serde;
extern crate serde;

#[macro_use]
extern crate log;

fn main() {
    env_logger::init();
    println!("Hello, world!");
    let x: Vec<String> = env::args().collect();
    if x.len() < 2 {
        return;
    }
    match x[1].parse::<u8>().unwrap() {
        1 => server(),
        2 => client(),
        _ => (),
    }
    return;
}
