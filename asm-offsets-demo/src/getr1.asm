INCLUDE offsets.inc

.code

PUBLIC get_r0
get_r0 PROC
    mov rax, [rcx + PT_R0]
    ret
get_r0 ENDP

PUBLIC get_r1
get_r1 PROC
    mov rax, [rcx + PT_R1]
    ret
get_r1 ENDP

PUBLIC get_r2
get_r2 PROC
    mov rax, [rcx + PT_R2]
    ret
get_r2 ENDP

PUBLIC get_pc
get_pc PROC
    mov rax, [rcx + PT_PC]
    ret
get_pc ENDP

PUBLIC set_pc
set_pc PROC
    mov [rcx + PT_PC], rdx
    ret
set_pc ENDP

END