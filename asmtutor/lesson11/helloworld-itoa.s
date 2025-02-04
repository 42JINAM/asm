%include 'functions.s'
section  .data

test:
	db 'hello', 0

	section .text

	global _start

_start:
	mov rcx, 0

nextNumber:
	inc  rcx
	mov  rdi, rcx
	push rcx
	call iprintLF
	pop  rcx
	cmp  rcx, 10
	jne  nextNumber

	call quit
