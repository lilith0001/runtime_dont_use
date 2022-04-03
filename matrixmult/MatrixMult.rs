fn init_matrices() -> (Vec<u32>, Vec<u32>) {
    let n = 800;
    let mut a: Vec<u32> = Vec::with_capacity(800 * 800);

    for i in 0..n * n {
        a.push(i);
    }

    return (a.clone(), a);
}

fn matmul(a: Vec<u32>, b: Vec<u32>) {
    let n = 800;
    let mut c: Vec<u32> = Vec::with_capacity(800 * 800);

    for i in 0..n {
        for j in 0..n {
            let mut sum = 0;
            for k in 0..n {
                sum += a[i * n + k] * b[k * n + j];
            }
            c.push(sum);
        }
    }
}

fn main() {
    let mut start = std::time::Instant::now();
    let (a, b) = init_matrices();
    let mut duration = start.elapsed();
    println!("init_matrices: {:?}", duration);

    start = std::time::Instant::now();
    matmul(a, b);
    duration = start.elapsed();
    println!("mul: {:?}", duration);
}
