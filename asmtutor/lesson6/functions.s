	; int slen(string message)
	; string len calculation function

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
	push rdx
	push rcx
	push rbx
	push rax
	;    call slen
	call slen

	mov rdx, rax
	pop rax
	mov rsi, rdi
	mov rdi, 1
	mov rbx, 1
	mov rax, 1
	syscall

	pop rbx
	pop rcx
	pop rdx
	pop rdi
	ret

	; void quit()
	; Exit program and resources

quit:
	mov rdi, 0
	mov rax, 60
	syscall
	ret
