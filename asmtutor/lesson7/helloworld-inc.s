%include 'functions.s'
section  .data
msg1     db 'Hello, brave new world!', 0h
msg2     db 'This is how we recycle in NASM.', 0h

section .text
global  _start

_start:
	mov  rdi, msg1
	call sprintLF

	mov  rdi, msg2
	call sprintLF

	call quit
