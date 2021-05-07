global _ft_strcmp

section .text

_ft_strcmp: mov rcx, 0

.loop	mov	dl, byte [rdi + rcx]
		mov bl, byte [rsi + rcx]
		cmp	dl, 0
		jz	.j1
		cmp	bl, 0
		jz	.j1
		cmp	dl, bl
		jne	.j1
		inc	rcx
		jmp .loop

.j1		mov rax, rdx
		sub	rax, rbx
		ret
