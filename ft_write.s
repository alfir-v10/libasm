extern ___error

global _ft_write

section .text

_ft_write:
	mov		rax, 0x2000004
	syscall
	jc		.err
	ret

.err
	push	rax
	call	___error
	pop		qword [rax]
	mov		rax, -1
	ret
