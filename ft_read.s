extern __error

global _ft_read

section .text

_ft_read_:
	mov rax, 0x02000003
	syscall
	jc .error
	ret

.error:
	push	rax
	call	__error
	pop		qword [rax]
	mov		rax, -1
	ret
