section .text
global ft_strcmp

ft_strcmp:
	mov al, byte [rdi]
	mov cl, byte [rsi]
	cmp al, 0
	je exit
	cmp cl, 0
	je exit
	cmp al, cl
	ja higher
	jb less
	inc rdi
	inc rsi
	jmp ft_strcmp

higher:
	mov rax, 1
	ret

less:
	mov rax, -1
	ret

exit:
	sub al, cl
	ja higher
	jb less
	mov rax, 0
	ret
