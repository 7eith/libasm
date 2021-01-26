section .text
global ft_strcpy

ft_strcpy:
    push r8
    xor r8, r8
    xor rax, rax

loop:
    cmp byte [rsi + rax], 0
    je exit
    mov r8b, [rsi + rax]
    mov [rdi + rax], r8b
    inc rax
    cmp byte [rsi + rax], 0
    jne loop

exit:
    mov byte [rdi + rax], 0
    mov rax, rdi
    pop r8
    ret
