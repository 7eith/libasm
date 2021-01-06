section .text
global ft_strlen

ft_strlen:
	xor rax, rax

.loop:
	cmp byte [rdi + rax], 0
	je ft_strlen.exit
	inc rax
	jmp ft_strlen.loop

.exit:
	ret
