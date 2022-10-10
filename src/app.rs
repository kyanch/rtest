use std::{io, vec, time::Duration, thread};

use crossterm::event::{self, Event, KeyCode};
use tui::{
    backend::Backend,
    layout::{Constraint, Direction, Layout as tLay},
    style::{Color, Style},
    widgets::Block,
    Frame, Terminal,
};

pub struct App<'a> {
    pub titles: Vec<&'a str>,
    pub index: usize,
}
impl<'a> App<'a> {
    pub fn new() -> Self {
        Self {
            titles: vec!["message", "input", "user"],
            index: 0,
        }
    }
    pub fn next(&mut self) {
        self.index = (self.index + 1) % self.titles.len();
    }
    pub fn run<B: Backend>(mut self, terminal: &mut Terminal<B>) -> io::Result<()> {
        let tik_rat = 30;
        loop {
            terminal.draw(|f| App::draw_ui(&self, f))?;
            match event::read()? {
                Event::FocusGained => continue,
                Event::FocusLost => continue,
                Event::Key(key) => match key.code {
                    KeyCode::Char('q') => break,
                    _ => {}
                },
                Event::Mouse(_mouse) => continue,
                Event::Paste(_) => continue,
                Event::Resize(_, _) => continue,
            }
            thread::sleep(Duration::from_millis(1000/tik_rat));
        }
        Ok(())
    }
    fn draw_ui<B: Backend>(&self, f: &mut Frame<B>) {
        let size = f.size();
        let chunks = tLay::default()
            .direction(Direction::Horizontal)
            .margin(1)
            .constraints([Constraint::Percentage(80),Constraint::Min(1), Constraint::Percentage(20)].as_ref())
            .split(size);
        let right = tLay::default()
            .direction(Direction::Vertical)
            .constraints([Constraint::Percentage(80), Constraint::Min(5)].as_ref())
            .split(chunks[0]);
        let usr_block = Block::default().style(Style::default().bg(Color::Black).fg(Color::White));
        f.render_widget(usr_block, chunks[2]);
        let message_block =
            Block::default().style(Style::default().bg(Color::Green).fg(Color::White));
        f.render_widget(message_block, right[0]);
        let input_block =
            Block::default().style(Style::default().bg(Color::Cyan).fg(Color::White));
        f.render_widget(input_block, right[1]);
    }
}
