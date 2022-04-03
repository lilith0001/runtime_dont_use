#!/usr/bin/sh

name="Selection"

run_compiled() {
    chmod +x $name.o
    ./$name.o
    rm -f $name.o
}

exists() {
    if [ -f "$1" ]; then
        return 0
    else
        return 1
    fi
}

# C
run_gcc() {
    printf "C (gcc)\n"
    /usr/bin/env gcc $name.c -O2 -o $name.o > /dev/null 2>&1
    run_compiled
}
(exists "$name.c" && type "gcc" > /dev/null && run_gcc) || printf "\nC (gcc) not found, skipping\n"


run_clang() {
    printf "\nC (clang)\n"
    /usr/bin/env clang $name.c -O2 -o $name.o > /dev/null 2>&1
    run_compiled
}
(exists "$name.c" && type "clang" > /dev/null && run_clang) || printf "\nC (clang) not found, skipping\n"

# Rust (cargo)
run_cargo() {
    printf "\nRust (cargo)\n"
    cd rust || return
    /usr/bin/env cargo build -r > /dev/null 2>&1
    ./target/release/rust
    cd ..
}
(exists "rust/Cargo.toml" && type "cargo" > /dev/null && run_cargo) || printf "\nRust (cargo) not found, skipping\n"

# Rust (rustc)
run_rustc() {
    printf "\nRust\n"
    /usr/bin/env rustc -C opt-level=3 $name.rs -o $name.o > /dev/null 2>&1
    run_compiled
}
(exists "$name.rs" && type "rustc" > /dev/null && run_rustc) || printf "\nRust (rustc) not found, skipping\n"

# Java
run_javac() {
    printf "\nJava\n"
    /usr/bin/env javac $name.java > /dev/null 2>&1
    /usr/bin/env java $name
    rm -f $name.class
}
(exists "$name.java" && type "javac" > /dev/null && run_javac) || printf "\nJava not found, skipping\n"

# C#
run_csc() {
    printf "\nC#\n"
    /usr/bin/env csc $name.cs /out:$name.exe > /dev/null 2>&1
    /usr/bin/env mono $name.exe
    rm -f $name.exe
}
(exists "$name.cs" && type "csc" > /dev/null && run_csc) || printf "\nC# not found, skipping\n"

# Haskell
run_ghc() {
    printf "\nHaskell\n"
    /usr/bin/env ghc -O2 $name.hs -o $name.o > /dev/null 2>&1
    run_compiled
}
(exists "$name.hs" && type "ghc" > /dev/null && run_ghc) || printf "\nHaskell not found, skipping\n"

#Python
run_python() {
    printf "\nPython\n"
    /usr/bin/env python3 $name.py
}
(exists "$name.py" && type "python3" > /dev/null && run_python) || printf "\nPython not found, skipping\n"
