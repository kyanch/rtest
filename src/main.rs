use std::{hash::{Hash, Hasher}, collections::hash_map::DefaultHasher};

#[derive(Hash)]
struct Test {
    name:String
}
impl Test {
    pub fn new(s:&str)->Self{
        Test { name: s.to_string() }
    }
    pub fn calculate_hash(self:&Self)->u64{
        // 这里指定 hash 函数
        let mut s= DefaultHasher::new();
        self.hash(&mut s);
        s.finish()
    }
}
fn main() {
    let t= Test::new("abc");
    print!("{}",t.calculate_hash());
}
