section .data
msg     db 'Hello world!'

section .text
global  _start

_start:
	mov rdx, 13
	mov rcx, msg
	mov rax, 4
	int 80h
