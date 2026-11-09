	.file	"asm-offsets.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
#APP
# 9 "src/asm-offsets.c" 1
	
.ascii "->PT_PC $104 offsetof(struct pt_regs, pc)"
# 0 "" 2
# 10 "src/asm-offsets.c" 1
	
.ascii "->PT_ESR $108 offsetof(struct pt_regs, esr)"
# 0 "" 2
# 11 "src/asm-offsets.c" 1
	
.ascii "->PT_FSR $112 offsetof(struct pt_regs, fsr)"
# 0 "" 2
# 12 "src/asm-offsets.c" 1
	
.ascii "->PT_R0 $0 offsetof(struct pt_regs, r0)"
# 0 "" 2
# 13 "src/asm-offsets.c" 1
	
.ascii "->PT_R1 $4 offsetof(struct pt_regs, r1)"
# 0 "" 2
# 14 "src/asm-offsets.c" 1
	
.ascii "->PT_R2 $8 offsetof(struct pt_regs, r2)"
# 0 "" 2
# 15 "src/asm-offsets.c" 1
	
.ascii "->PT_R3 $12 offsetof(struct pt_regs, r3)"
# 0 "" 2
# 16 "src/asm-offsets.c" 1
	
.ascii "->PT_R4 $16 offsetof(struct pt_regs, r4)"
# 0 "" 2
# 17 "src/asm-offsets.c" 1
	
.ascii "->PT_R5 $20 offsetof(struct pt_regs, r5)"
# 0 "" 2
# 18 "src/asm-offsets.c" 1
	
.ascii "->PT_R6 $24 offsetof(struct pt_regs, r6)"
# 0 "" 2
# 19 "src/asm-offsets.c" 1
	
.ascii "->PT_R7 $28 offsetof(struct pt_regs, r7)"
# 0 "" 2
# 20 "src/asm-offsets.c" 1
	
.ascii "->PT_R8 $32 offsetof(struct pt_regs, r8)"
# 0 "" 2
# 21 "src/asm-offsets.c" 1
	
.ascii "->PT_R9 $36 offsetof(struct pt_regs, r9)"
# 0 "" 2
# 22 "src/asm-offsets.c" 1
	
.ascii "->PT_R10 $40 offsetof(struct pt_regs, r10)"
# 0 "" 2
# 23 "src/asm-offsets.c" 1
	
.ascii "->PT_R11 $44 offsetof(struct pt_regs, r11)"
# 0 "" 2
# 24 "src/asm-offsets.c" 1
	
.ascii "->PT_R12 $48 offsetof(struct pt_regs, r12)"
# 0 "" 2
# 25 "src/asm-offsets.c" 1
	
.ascii "->PT_R13 $52 offsetof(struct pt_regs, r13)"
# 0 "" 2
# 26 "src/asm-offsets.c" 1
	
.ascii "->PT_R14 $56 offsetof(struct pt_regs, r14)"
# 0 "" 2
# 27 "src/asm-offsets.c" 1
	
.ascii "->PT_R15 $60 offsetof(struct pt_regs, r15)"
# 0 "" 2
# 28 "src/asm-offsets.c" 1
	
.ascii "->PT_R16 $64 offsetof(struct pt_regs, r16)"
# 0 "" 2
# 29 "src/asm-offsets.c" 1
	
.ascii "->PT_R17 $68 offsetof(struct pt_regs, r17)"
# 0 "" 2
# 30 "src/asm-offsets.c" 1
	
.ascii "->PT_R18 $72 offsetof(struct pt_regs, r18)"
# 0 "" 2
# 31 "src/asm-offsets.c" 1
	
.ascii "->PT_R19 $76 offsetof(struct pt_regs, r19)"
# 0 "" 2
# 32 "src/asm-offsets.c" 1
	
.ascii "->PT_R20 $80 offsetof(struct pt_regs, r20)"
# 0 "" 2
# 33 "src/asm-offsets.c" 1
	
.ascii "->PT_R21 $84 offsetof(struct pt_regs, r21)"
# 0 "" 2
# 34 "src/asm-offsets.c" 1
	
.ascii "->PT_R22 $88 offsetof(struct pt_regs, r22)"
# 0 "" 2
# 35 "src/asm-offsets.c" 1
	
.ascii "->PT_R23 $92 offsetof(struct pt_regs, r23)"
# 0 "" 2
# 36 "src/asm-offsets.c" 1
	
.ascii "->PT_R24 $96 offsetof(struct pt_regs, r24)"
# 0 "" 2
# 37 "src/asm-offsets.c" 1
	
.ascii "->PT_R25 $100 offsetof(struct pt_regs, r25)"
# 0 "" 2
#NO_APP
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 15.2.0-16ubuntu1) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
