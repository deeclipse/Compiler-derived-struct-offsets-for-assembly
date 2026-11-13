#!/usr/bin/env bash
set -euo pipefail
SRC=${1:-src/asm-offsets.c}
NAME=$(basename "$SRC" .c)

build() {  # $1 = label, $2 = compiler
    mkdir -p "build-wsl/$1"
    "$2" -S -ffreestanding -Iinclude "$SRC" -o "build-wsl/$1/$NAME.s"
    python3 scripts/extract.py "build-wsl/$1/$NAME.s" "build-wsl/$1/$NAME.h"
    echo "$1: $(grep -c '#define' build-wsl/$1/$NAME.h) defines"
}

build host    gcc
build aarch64 aarch64-linux-gnu-gcc
build riscv64 riscv64-linux-gnu-gcc
build arm32   arm-linux-gnueabihf-gcc

for t in aarch64 riscv64 arm32; do
    if diff <(sort build-wsl/host/$NAME.h) <(sort build-wsl/$t/$NAME.h) >/dev/null; then
        echo "$t: IDENTICAL to host"
    else
        echo "$t: DIFFERS from host"
    fi
done
