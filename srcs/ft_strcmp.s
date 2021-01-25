; 64-bit linux parameters order: rdi, rsi, rdx, rcx, r8, and r9.

section .text
global ft_strcmp

;64-bit linux parameters order: rdi, rsi, rdx, rcx, r8, and r9.

ft_strcmp:
	push r8			; init r8
	xor r8, r8		; index

loop:
	cmp byte [rdi + r8], 0		; si s1
	je exit
	cmp byte [rsi + r8], 0		;
	je exit
	cmp rdi, rsi				; comp r8 & r9
	ja higher
	jb less
	inc r8
	jmp loop

higher:
	mov rax, 1
	pop r8
	ret
less:
	mov rax, -1
	pop r8
	ret
exit:
	mov rax, 0
	pop r8
	ret
