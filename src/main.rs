mod mytui;
use std::io;

fn main() -> io::Result<()> {
    let mut terminal = mytui::capture()?;
    let app = mytui::App::with_area(terminal.size().unwrap());
    let _ = app.run(&mut terminal);
    mytui::close(terminal)?;
    Ok(())
}
