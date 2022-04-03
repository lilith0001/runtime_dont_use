use rand::Rng;

fn main() {
    let n = 50000;
    let mut a = vec![0; n];
    let mut min: i32;
    let mut min_index: usize;
    let mut rng = rand::thread_rng();

    for i in 0..n {
        a[i] = rng.gen_range(0..100);
    }

    let start = std::time::Instant::now();

    for i in 0..n {
        min = a[i];
        min_index = i;
        for j in i + 1..n {
            if a[j] < min {
                min = a[j];
                min_index = j;
            }
        }

        let temp = a[i];
        a[i] = min;
        a[min_index] = temp;
    }

    let diff = start.elapsed();
    println!("{} milliseconds", diff.as_millis());
}
