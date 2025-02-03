section .data

msg db 'Hello, brave new world!', 0Ah

section .text
global  _start

_start:
	mov rdi, msg
	mov rsi, rdi

nextchar:
	cmp byte [rsi], 0
	jz  finished
	inc rsi
	jmp nextchar

finished:
	sub rsi, rdi; len last address - first address
	;   write
	;   fd - rdi, str - rsi, len - rdx
	mov rdx, rsi
	mov rsi, rdi
	mov rdi, 1
	mov rax, 1
	syscall

	mov rdi, 0
	mov rax, 60
	syscall
