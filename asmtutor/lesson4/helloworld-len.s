section .data
msg     db 'hello, brave new world!', 0Ah

section .text
global  _start

_start:
	mov  rdi, msg
	call strlen

	mov rdx, rax
	mov rsi, rdi
	mov rdi, 1
	mov rax, 1
	syscall

	mov rdi, 0
	mov rax, 60
	syscall

strlen:
	push rbx
	push rdi
	mov  rbx, rdi

nextchar:
	cmp byte [rdi], 0
	jz  finished
	inc rdi
	jmp nextchar

finished:
	sub rdi, rbx
	mov rax, rdi
	pop rdi
	pop rbx
	ret
