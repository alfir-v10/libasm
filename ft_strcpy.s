global	_ft_strcpy

section .text

_ft_strcpy:
	mov		rcx, 0
	mov		rax, rdi

.loop	mov		dl, byte [rsi + rcx]
	mov		[rdi + rcx], dl
	inc		rcx
	cmp		dl, 0
	jz		.ret
	jmp		.loop

.ret	ret
