#pragma once
#include <stdint.h>

struct regs {
    char tag;
    uint64_t r0, r1, r2;
    uint64_t pc;
};