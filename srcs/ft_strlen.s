section .text
global ft_strlen

ft_strlen:
	xor rax, rax				; init rax to 0

loop:
	cmp byte [rdi + rax], 0		; check if null or reach null 
	je exit						; if instruct at top is true jump to exit
	inc rax						; increment rax
	jmp loop					; tell asm to restart loop

exit:
	ret							; return rax
