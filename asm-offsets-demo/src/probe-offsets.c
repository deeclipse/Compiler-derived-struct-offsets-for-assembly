#include <stddef.h>
#include "probe.h"

#define DEFINE(sym, val) \
    asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))

int main(void)
{
    DEFINE(PR_A, offsetof(struct probe, a));
    DEFINE(PR_B, offsetof(struct probe, b));
    DEFINE(PR_C, offsetof(struct probe, c));
    DEFINE(PR_D, offsetof(struct probe, d));
    DEFINE(PR_E, offsetof(struct probe, e));
    DEFINE(PR_SIZE, sizeof(struct probe));
    return 0;
}