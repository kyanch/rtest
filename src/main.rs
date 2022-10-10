use std::{io::{self, Write}, vec};

fn main() {
    let mut vec = Vec::new();
    vec.push(123);
    let mut bbox = Box::new(vec);
    let mut x = &mut bbox;
    let mut b = x[0];
    let mut stdout = io::stdout().lock();
    stdout.write(b"Hello world").unwrap();
}
