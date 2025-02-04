%include 'functions.s'

section .bss
num     resb 2
section .data
msg     db 'hello', 0

section .text
global  _start

_start:
	mov rcx, 1

count_loop:
	cmp rcx, 11
	jge end_loop

	mov rax, rcx
	add al, 48
	mov [num], al

	mov byte [num + 1], 0

	mov  rdi, num
	push rcx
	call sprintLF
	pop  rcx

	inc rcx
	jmp count_loop

end_loop:
	call quit
