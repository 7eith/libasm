section .text
global ft_strlen

ft_strlen:
	xor rax, rax

loop:
	cmp byte [rdi + rax], 0
	je exit
	inc rax
	jmp loop

exit:
	ret
