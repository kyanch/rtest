use std::io::{self, Write};

fn main() {
    let mut stdout = io::stdout().lock();
    stdout.write(b"Hello world").unwrap();
}
