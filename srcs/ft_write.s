section .text
global ft_write
extern __ernno_location

ft_write:
	push r9
	mov rax, 0x1
	SYSCALL
	pop r9
	ret
