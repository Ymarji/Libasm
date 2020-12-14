section .text
	global _ft_strlen
	extern _ft_strcpy

_ft_strlen:
		mov rcx, 0

_loop:
		cmp BYTE [rdi + rcx], 0
		je _exit
		inc rcx
		jmp _loop
_exit:
		mov rax, rcx
		ret