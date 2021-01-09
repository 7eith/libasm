section .text
global ft_strcpy

ft_strcpy:
    push r8                     ; init r8
    xor r8, r8                  ; init r8 to 0
    xor rax, rax                ; init rax (counter)

loop:
    cmp byte [rsi + rax], 0     ; check if src + count is null
    je exit                     ; if instruct at top is true jump to exit
    mov r8b, [rsi + rax]        ; move src[count] to r8
    mov [rdi + rax], r8b        ; move r8 to dst[count]
    inc rax                     ; increment counter
    cmp byte [rsi + rax], 0     ; check if src + count is null
    jne loop                    ; if instruct at top is false restart loop

exit
    mov byte [rdi + rax], 0     ; add null char to end of dest
    mov rax, rdi                ; mov dest to rax register to return
    pop r8                      ; uninit r8
    ret                         ; return rax