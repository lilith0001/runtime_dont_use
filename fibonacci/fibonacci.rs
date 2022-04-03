use std::time::Instant;

fn fib(n: u32) -> u32 {
    if n < 3 {
        return 1;
    } else {
        return fib(n - 1) + fib(n - 2);
    }
}

fn main() {
    let n = 40;
    let start = Instant::now();
    let res = fib(n);
    let time = start.elapsed().as_millis();

    println!("fib({}) = {}", n, res);
    println!("time    = {} milliseconds", time);
}
