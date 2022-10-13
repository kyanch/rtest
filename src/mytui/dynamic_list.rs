use tui::{
    backend::Backend,
    layout::Rect,
    style::Style,
    widgets::{Block, Borders, List, ListItem, ListState},
    Frame,
};

#[allow(unused)]
#[derive(Default)]
struct DynamicList {
    focus: bool,
    area: Rect,
    style: Style,
    title: String,
    list_state: ListState,
}
#[allow(unused)]
impl DynamicList {
    pub fn with_area(rect: Rect) -> Self {
        Self {
            focus: false,
            area: rect,
            style: Style::default(),
            title: String::default(),
            list_state: ListState::default(),
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
impl DynamicList {
    #[inline(always)]
    pub fn draw<B: Backend, T, Adapter: FnMut(&T) -> ListItem>(
        &self,
        frame: &mut Frame<B>,
        data: Vec<T>,
        adapter: &mut Adapter,
    ) {
        let items: Vec<ListItem> = data.iter().map(|i| adapter(i)).collect();
        let list = List::new(items).block(
            if self.focus {
                Block::default().borders(Borders::ALL)
            } else {
                Block::default().borders(Borders::NONE)
            }
            .title(self.title.as_str())
            .style(self.style),
        );
        frame.render_widget(list, self.area)
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
