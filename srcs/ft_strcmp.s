; 64-bit linux parameters order: rdi, rsi, rdx, rcx, r8, and r9.

section .text
global ft_strcmp

ft_strcmp:
	push r8			; init r8
	push r9			; init r9
	xor r8, r8		; index
	xor r9, r9		; ?

loop:
	cmp byte [rdi + r8], 0		; si diff exit
	je exit
	cmp byte [rsi + r8], 0
	je exit
	cmp r8, r9			; comp r8 & r9
	ja higher
	jb less
	jne exit			; not equals exit
	inc r8
	jmp loop

higher:
	mov rax, 1
	pop r9
	pop r8
	ret
less:
	mov rax, -1
	pop r9
	pop r8
	ret
exit:
	mov rax, 0
	pop r9
	pop r8
	ret
