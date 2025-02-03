section .data
msg     db 'hello world!'

section .text
global  _start

_start:
	mov rdi, 1
	mov rsi, msg
	mov rdx, 13
	mov rax, 1
	syscall

	mov rdi, 0
	mov rax, 60
	syscall
