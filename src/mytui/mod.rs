mod app;
use std::io::{self, Stdout};

use crossterm::{
    event::{DisableMouseCapture, EnableMouseCapture},
    terminal::{disable_raw_mode, enable_raw_mode, EnterAlternateScreen, LeaveAlternateScreen},
};
use tui::{
    backend::{Backend, CrosstermBackend},
    layout::Rect,
    style::Style,
    widgets::{Block, Borders},
    Frame, Terminal,
};

pub use app::App;

pub fn capture() -> io::Result<Terminal<CrosstermBackend<Stdout>>> {
    enable_raw_mode()?;
    let mut stdout = io::stdout();
    crossterm::execute!(stdout, EnterAlternateScreen, EnableMouseCapture)?;
    let backend = CrosstermBackend::new(stdout);
    Terminal::new(backend)
}
pub fn close(mut terminal: Terminal<CrosstermBackend<Stdout>>) -> io::Result<()> {
    disable_raw_mode()?;
    crossterm::execute!(
        terminal.backend_mut(),
        LeaveAlternateScreen,
        DisableMouseCapture
    )?;
    terminal.show_cursor()?;
    Ok(())
}

#[derive(Default)]
pub struct DynamicBlock {
    focus: bool,
    area: Rect,
    style: Style,
    title: String,
}
impl DynamicBlock {
    pub fn with_area(rect: Rect) -> Self {
        Self {
            focus: false,
            area: rect,
            style: Style::default(),
            title: String::default(),
        }
    }
    pub fn set_area(&mut self, area: Rect) {
        self.area = area
    }
    pub fn get_area(&self) -> Rect {
        self.area
    }
    pub fn set_title(&mut self, title: &str) {
        self.title = title.to_string();
    }
    pub fn set_title_string(&mut self, title: String) {
        self.title = title;
    }
}
impl DynamicBlock {
    #[inline(always)]
    pub fn draw<B: Backend>(&self, frame: &mut Frame<B>) {
        let block = if self.focus {
            Block::default().borders(Borders::ALL)
        } else {
            Block::default().borders(Borders::NONE)
        }
        .title(self.title.as_str())
        .style(self.style);
        frame.render_widget(block, self.area);
    }
    pub fn is_contain(&self, location: (u16, u16)) -> bool {
        let (x, y) = location;
        self.area.intersects(Rect {
            x,
            y,
            width: 1,
            height: 1,
        })
    }
}
