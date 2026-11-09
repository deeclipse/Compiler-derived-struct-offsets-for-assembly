#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stddef.h>
#include "regs.h"

static FILE* fi, * fh;

#define EMIT(sym, member) do { \
    size_t off = offsetof(struct regs, member); \
    fprintf(fi, "%s EQU %zu\n", #sym, off); \
    fprintf(fh, "#define %s %zu\n", #sym, off); \
} while (0)

int main(int argc, char** argv)
{
    if (argc < 3) {
        fprintf(stderr, "usage: gen_offsets out.inc out.h\n");
        return 2;
    }
    fi = fopen(argv[1], "w");
    fh = fopen(argv[2], "w");
    if (!fi || !fh) { perror("fopen"); return 1; }

    EMIT(PT_R0, r0);
    EMIT(PT_R1, r1);
    EMIT(PT_R2, r2);
    EMIT(PT_PC, pc);

    fclose(fi);
    fclose(fh);
    printf("Wrote %s and %s\n", argv[1], argv[2]);
    return 0;
}