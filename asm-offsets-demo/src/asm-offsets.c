#include <stddef.h>
#include "pt_regs.h"

#define DEFINE(sym, val) \
    asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))

int main(void)
{
    DEFINE(PT_PC, offsetof(struct pt_regs, pc));
    DEFINE(PT_ESR, offsetof(struct pt_regs, esr));
    DEFINE(PT_FSR, offsetof(struct pt_regs, fsr));
    DEFINE(PT_R0, offsetof(struct pt_regs, r0));
    DEFINE(PT_R1, offsetof(struct pt_regs, r1));
    DEFINE(PT_R2, offsetof(struct pt_regs, r2));
    DEFINE(PT_R3, offsetof(struct pt_regs, r3));
    DEFINE(PT_R4, offsetof(struct pt_regs, r4));
    DEFINE(PT_R5, offsetof(struct pt_regs, r5));
    DEFINE(PT_R6, offsetof(struct pt_regs, r6));
    DEFINE(PT_R7, offsetof(struct pt_regs, r7));
    DEFINE(PT_R8, offsetof(struct pt_regs, r8));
    DEFINE(PT_R9, offsetof(struct pt_regs, r9));
    DEFINE(PT_R10, offsetof(struct pt_regs, r10));
    DEFINE(PT_R11, offsetof(struct pt_regs, r11));
    DEFINE(PT_R12, offsetof(struct pt_regs, r12));
    DEFINE(PT_R13, offsetof(struct pt_regs, r13));
    DEFINE(PT_R14, offsetof(struct pt_regs, r14));
    DEFINE(PT_R15, offsetof(struct pt_regs, r15));
    DEFINE(PT_R16, offsetof(struct pt_regs, r16));
    DEFINE(PT_R17, offsetof(struct pt_regs, r17));
    DEFINE(PT_R18, offsetof(struct pt_regs, r18));
    DEFINE(PT_R19, offsetof(struct pt_regs, r19));
    DEFINE(PT_R20, offsetof(struct pt_regs, r20));
    DEFINE(PT_R21, offsetof(struct pt_regs, r21));
    DEFINE(PT_R22, offsetof(struct pt_regs, r22));
    DEFINE(PT_R23, offsetof(struct pt_regs, r23));
    DEFINE(PT_R24, offsetof(struct pt_regs, r24));
    DEFINE(PT_R25, offsetof(struct pt_regs, r25));
    return 0;
}