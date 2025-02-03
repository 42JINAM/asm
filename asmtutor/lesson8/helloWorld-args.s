%include 'functions.s'
section  .data
msg1     db 'Hello, brave new world!', 0Ah, 0h
msg2     db 'This is how we recycle in NASM.', 0Ah, 0h
msg3     db 'finish', 0Ah, 0h

section .text
global  _start

_start:
	pop rcx

nextArg:
	cmp  rcx, 0h
	jz   noMoreArgs
	pop  rdi
	call sprintLF
	dec  rcx
	jmp  nextArg

noMoreArgs:
	call quit
