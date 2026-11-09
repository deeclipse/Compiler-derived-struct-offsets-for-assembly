#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include "regs.h"
#include "offsets.h"

_Static_assert(offsetof(struct regs, r0) == PT_R0, "stale offsets: r0");
_Static_assert(offsetof(struct regs, r1) == PT_R1, "stale offsets: r1");
_Static_assert(offsetof(struct regs, r2) == PT_R2, "stale offsets: r2");
_Static_assert(offsetof(struct regs, pc) == PT_PC, "stale offsets: pc");

extern uint64_t get_r0(struct regs* r);
extern uint64_t get_r1(struct regs* r);
extern uint64_t get_r2(struct regs* r);
extern uint64_t get_pc(struct regs* r);
extern void     set_pc(struct regs* r, uint64_t v);

static int check(const char* name, uint64_t got, uint64_t want)
{
    int ok = (got == want);
    printf("%-10s got %llu, want %llu  %s\n", name,
        (unsigned long long)got, (unsigned long long)want,
        ok ? "OK" : "FAIL");
    return !ok;
}

int main(void)
{
    struct regs r = { 0, 10, 20, 30, 40 };
    int fails = 0;

    fails += check("get_r0", get_r0(&r), 10);
    fails += check("get_r1", get_r1(&r), 20);
    fails += check("get_r2", get_r2(&r), 30);
    fails += check("get_pc", get_pc(&r), 40);

    set_pc(&r, 0x1234);
    fails += check("set_pc", r.pc, 0x1234);
    fails += check("r2 intact", r.r2, 30);

    return fails ? 1 : 0;
}