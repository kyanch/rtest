use std::{io, vec};

use crossterm::{
    event::{self, Event, KeyCode, MouseEvent},
};
use tui::{
    backend::Backend,
    layout::{Constraint, Direction, Layout as TuiLayout, Rect},
    Frame, Terminal,
};

use super::DynamicBlock;

pub struct App {
    focus: bool,
    rects: Vec<DynamicBlock>,
    focused_rect: usize,
    messages: Vec<(String, String)>,
}
impl App {
    pub fn new() -> Self {
        Self::with_area(Rect::default())
    }
    pub fn with_area(area: Rect) -> Self {
        let mut app = Self {
            focus: false,
            messages: [
                ("jack".to_string(), "hello everyone".to_string()),
                ("belle".to_string(), "hello jack".to_string()),
            ]
            .to_vec(),
            rects: vec![
                DynamicBlock::default(),
                DynamicBlock::default(),
                DynamicBlock::default(),
                DynamicBlock::default(),
            ],
            focused_rect: 0,
        };
        app.split_rect(area);
        app
    }
    pub fn run<B: Backend>(mut self, terminal: &mut Terminal<B>) -> io::Result<()> {
        // let tik_rat = 60;
        loop {
            match event::read()? {
                Event::FocusGained => self.focus = true,
                Event::FocusLost => self.focus = false,
                Event::Key(key) => match key.code {
                    KeyCode::Char('q') => break,
                    _ => {}
                },
                Event::Mouse(_mouse) => self.handle_mouse(_mouse),
                Event::Paste(_s) => self.rects[0].set_title_string(format! {"paste: {}",_s}),
                Event::Resize(width, height) => self.split_rect(Rect {
                    x: 0,
                    y: 0,
                    width,
                    height,
                }),
            }
            terminal.draw(|f| App::draw_ui(&self, f))?;
            // thread::sleep(Duration::from_millis(1000 / tik_rat));
        }
        Ok(())
    }
    fn split_rect(&mut self, area: Rect) {
        let rect_vec = &mut self.rects;
        let chunks = TuiLayout::default()
            .direction(Direction::Vertical)
            .margin(0)
            .constraints([Constraint::Min(5), Constraint::Length(1)].as_ref())
            .split(area);
        rect_vec[0].set_area(chunks[1]);

        let func_chunks = TuiLayout::default()
            .direction(Direction::Horizontal)
            .constraints([Constraint::Percentage(80), Constraint::Percentage(20)].as_ref())
            .split(chunks[0]);
        rect_vec[1].set_area(func_chunks[1]);

        let main_chunk = TuiLayout::default()
            .direction(Direction::Vertical)
            .constraints([Constraint::Min(1), Constraint::Length(3)].as_ref())
            .split(func_chunks[0]);
        rect_vec[2].set_area(main_chunk[0]);
        rect_vec[3].set_area(main_chunk[1]);
    }
    fn draw_ui<B: Backend>(&self, f: &mut Frame<B>) {
        for block in self.rects.iter() {
            block.draw(f);
        }
    }
    fn handle_mouse(&mut self, mouse: MouseEvent) {
        match mouse.kind {
            event::MouseEventKind::Down(down) => {
                let mut is_focused = false;
                for (idx, block) in self.rects.iter_mut().enumerate() {
                    block.focus = if !is_focused && block.is_contain((mouse.column, mouse.row)) {
                        self.focused_rect = idx;
                        is_focused = true;
                        block.set_title_string(format!(
                            "focused at ({},{})",
                            mouse.column, mouse.row
                        ));
                        true
                    } else {
                        block.set_title("unfocused");
                        false
                    }
                }
            }
            event::MouseEventKind::Up(_) => (),
            event::MouseEventKind::Drag(_) => (),
            event::MouseEventKind::Moved => (),
            event::MouseEventKind::ScrollDown => (),
            event::MouseEventKind::ScrollUp => (),
        }
    }
}
