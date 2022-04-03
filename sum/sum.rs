fn main() {
    let lst = (1..1000000).collect::<Vec<i64>>();
    let start = std::time::Instant::now();
    let x: i64 = lst.iter().sum();
    let end = std::time::Instant::now();
    println!("{}", x);
    println!("{:?}", end.duration_since(start));
}
