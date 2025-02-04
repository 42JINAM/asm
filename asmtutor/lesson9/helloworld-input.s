	;hello   world program (getting input)
	;compile with: nasm -f elf64 helloworld-input.s
	;link    with: ld helloworld-input.o -o helloworld-input
	;        run with: ./helloworld-input

	%include 'functions.s'

	SECTION .data
	msg1    db 'Please enter your name: ', 0
	msg2    db 'Hello, ', 0

	SECTION .bss

sinput:
	resb 255; buffer(size: 255bytes)

	SECTION .text
	global  _start

_start:
	;print msg1
	mov    rdi, msg1
	call   sprint

	;getting input(sys_read)
	mov      rax, 0
	mov      rdi, 0
	mov      rsi, sinput
	mov      rdx, 255
	syscall

	;print msg2
	mov    rdi, msg2
	call   sprint

	;print input
	mov    rdi, sinput
	call   sprint

	;exit
	call quit
