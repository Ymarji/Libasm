section	.text
	global	_ft_strcmp

_ft_strcmp:
	mov	R8, -1

_loop:
	inc R8
	mov cl , byte [rdi + R8]
	mov dl , byte [rsi + R8]
	cmp cl, dl
	jg _exit_great
	jl _exit_less
	je _exit_equal
	jmp _loop

_exit_great:
	mov rax, 1
	ret

_exit_equal:
	cmp cl, 0
	jne _loop
	cmp dl, 0
	jne _loop
	mov rax, 0
	ret

_exit_less:
	mov rax, -1
	ret