#!/usr/bin/env sh

run_bench() {
    printf '\nRunning %s benches...\n' "$1"
    cd "$1"
    ./run.sh
    cd ..
    printf "\nDone!\n\n\n"
}

run_bench "fibonacci"
run_bench "matrixmult"
run_bench "selection"
run_bench "sum"
