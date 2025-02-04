	; int slen(string message)
	; string len calculation function

	section .data
	newline db 10, 0

	section .text

slen:
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

	; void sprint(string message)
	; String printing function

sprint:
	push rdi
	call slen
	mov  rdx, rax
	mov  rsi, rdi
	mov  rdi, 1
	mov  rax, 1

	syscall

	pop rdi
	ret
	; void sprintLF(string message)
	; sring printing with line feed function

sprintLF:
	push rdi
	call sprint
	mov  rdi, newline
	call sprint
	pop  rdi
	ret

	; void quit()
	; Exit program and resources

quit:
	mov rdi, 0
	mov rax, 60
	syscall
	ret
