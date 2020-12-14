section	.text
	global _ft_strcpy
	extern _ft_strlen
_ft_strcpy:
		mov	rcx, 0
_loop:
		cmp byte [rsi + rcx], 0
		je	_exit
		mov	rdi, rsi
		inc	rcx
		jmp	_loop
_exit:
		mov rax, rdi
		ret