Milestones, each with a pass criterion
#	Work	Acceptance test
M0	Host build (x86-64, WSL): generate asm-offsets.h for the 26-register struct.	grep -c '#define' gives 29; PT_R10 equals 40.
M1	Add _Static_assert(offsetof(...) == PT_...) checks in a C file that includes the generated header.	Build passes. After you edit the struct, the asserts still match.
M2	Cross-compile for AArch64 and RISC-V, and compare the generated headers.	Offsets agree for fixed-width types. With unsigned long, 32-bit and 64-bit targets differ, and you document that.
M3	Write entry.S that saves registers into pt_regs using PT_*, calls a C handler, and restores them. Run it in QEMU.	The handler modifies one saved register, and after the restore the CPU shows that value. Output goes via semihosting or UART.
M4	Mutation tests: a script adds a field before r0 and (a) rebuilds normally, (b) rebuilds with the generated header frozen.	(a) passes. (b) must fail, either at build time (_Static_assert) or in the QEMU test. If (b) passes, the checks are too weak.
M5	CI on GitHub Actions running M0 to M4 for every push.	Green on main, red on a deliberately broken branch.