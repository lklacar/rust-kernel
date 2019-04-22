#!/usr/bin/env bash

cargo +nightly build --release
mv ./target/release/librust_os.rlib ./bootloader/boot_simple.o

cd bootloader
./run.sh
cd ..