#pragma once
#include <stdint.h>

struct pt_regs {
    uint32_t r0, r1, r2, r3, r4, r5, r6, r7,
        r8, r9, r10, r11, r12, r13, r14, r15,
        r16, r17, r18, r19, r20, r21, r22, r23,
        r24, r25;
    uint32_t pc;
    uint32_t esr;
    uint32_t fsr;
};