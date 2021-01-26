section .text
global ft_write
extern	__errno_location

ft_write:
	mov rax, 0x1
	SYSCALL
	cmp rax, 0
	jl error_exit
	ret

error_exit:
	neg rax
	mov rdi, rax
	call __errno_location
	mov [rax], rdi
	mov rax, -1
	ret
