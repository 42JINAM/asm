%include 'functions.s'
section  .data
msg1     db 'Hello, brave new world!', 0Ah, 0h
msg2     db 'This is how we recycle in NASM.', 0Ah, 0h

section .text
global  _start

_start:
	mov  rdi, msg1
	call sprint

	mov  rdi, msg2
	call sprint

	call quit
