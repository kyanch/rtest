use std::{io, thread, time::Duration, vec};

use crossterm::{
    event::{self, Event, KeyCode},
    terminal,
};
use tui::{
    backend::Backend,
    layout::{Constraint, Direction, Layout as TuiLayout, Rect},
    style::{Color, Modifier, Style},
    text::{Span, Spans, Text},
    widgets::{Block, Borders, List, ListItem, ListState, Paragraph},
    Frame, Terminal,
};

pub struct App {
    focus: bool,
    rects: Vec<Rect>,
    messages: Vec<(String, String)>,
    // message_state:ListState,
}
impl App {
    pub fn new() -> Self {
        Self {
            focus: false,
            messages: [
                ("jack".to_string(), "hello everyone".to_string()),
                ("belle".to_string(), "hello jack".to_string()),
            ]
            .to_vec(),
            rects: Vec::new(),
        }
    }
    pub fn with_area(area: Rect) -> Self {
        Self {
            focus: false,
            messages: [
                ("jack".to_string(), "hello everyone".to_string()),
                ("belle".to_string(), "hello jack".to_string()),
            ]
            .to_vec(),
            rects: App::split_rect(area),
        }
    }
    pub fn run<B: Backend>(mut self, terminal: &mut Terminal<B>) -> io::Result<()> {
        let tik_rat = 60;
        loop {
            terminal.draw(|f| App::draw_ui(&self, f))?;
            match event::read()? {
                Event::FocusGained => self.focus = true,
                Event::FocusLost => self.focus = false,
                Event::Key(key) => match key.code {
                    KeyCode::Char('q') => break,
                    _ => {}
                },
                Event::Mouse(_mouse) => continue,
                Event::Paste(_s) => continue,
                Event::Resize(_width, _height) => continue,
            }
            thread::sleep(Duration::from_millis(1000 / tik_rat));
        }
        Ok(())
    }
    fn split_rect(area: Rect) -> Vec<Rect> {
        let mut rect_vec = Vec::with_capacity(3);
        let chunks = TuiLayout::default()
            .direction(Direction::Vertical)
            .margin(0)
            .constraints([Constraint::Min(5), Constraint::Length(1)].as_ref())
            .split(area);
        rect_vec.push(chunks[1]);

        let func_chunks = TuiLayout::default()
            .direction(Direction::Horizontal)
            .constraints([Constraint::Percentage(80), Constraint::Percentage(20)].as_ref())
            .split(chunks[0]);
        rect_vec.push(func_chunks[1]);

        let main_chunk = TuiLayout::default()
            .direction(Direction::Vertical)
            .constraints([Constraint::Min(1), Constraint::Length(3)].as_ref())
            .split(func_chunks[0]);
        rect_vec.push(main_chunk[0]);
        rect_vec.push(main_chunk[1]);
        rect_vec
    }
    fn draw_ui<B: Backend>(&self, f: &mut Frame<B>) {
        let rects = App::split_rect(f.size());
        let msg = vec![Span::raw("This is info text!")];
        let mut info_text = Text::from(Spans::from(msg));
        info_text.patch_style(Style::default().add_modifier(Modifier::BOLD));
        let info_text = Paragraph::new(info_text).style(Style::default().bg(Color::Blue));
        // .block(Block::default().borders(Borders::ALL).title(title as &str));
        f.render_widget(info_text, rects[0]);

        let user_list = Block::default()
            .borders(Borders::ALL)
            .title("user list")
            .style(Style::default().bg(Color::Gray));
        // .block(Block::default().borders(Borders::ALL).title(title as &str));
        f.render_widget(user_list, rects[1]);
        let message_list = Block::default()
            .borders(Borders::ALL)
            .title("message list")
            .style(Style::default().bg(Color::Cyan));

        let item: Vec<ListItem> = self
            .messages
            .iter()
            .map(|(name, msg)| {
                let msg = vec![
                    Span::styled(name, Style::default().add_modifier(Modifier::ITALIC)),
                    Span::raw(" : "),
                    Span::raw(msg),
                ];
                ListItem::new(Spans::from(msg))
            })
            .collect();
        let message_list = List::new(item)
            .block(Block::default().borders(Borders::ALL).title("message list"))
            .highlight_style(Style::default().bg(Color::Green).fg(Color::Cyan));
        // .block(Block::default().borders(Borders::ALL).title(title as &str));
        // f.render_widget(message_list, rects[2],);
        static message_state:ListState = ListState::default();
        f.render_stateful_widget(
            message_list,
            rects[2],
        );
        let input = Block::default()
            .borders(Borders::ALL)
            .title("input")
            .style(Style::default().bg(Color::Green));
        // .block(Block::default().borders(Borders::ALL).title(title as &str));
        f.render_widget(input, rects[3]);
    }
}
