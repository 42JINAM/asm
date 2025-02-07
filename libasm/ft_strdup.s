	;      char *strdup(const char *s)
	;      rdi == src
	extern ft_strlen
	extern malloc
	extern ft_strcpy

	section .text
	global  ft_strdup

ft_strdup:
	call ft_strlen; rax = len of srcs
	add  rax, 1

	; call malloc void *malloc(size_t size)
	; rax == address

	push rdi
	mov  rdi, rax

	call malloc

	;   check the results
	cmp rax, 0
	je  error_handle

	;    call ft_strcpy
	;    first argument : rdi dst
	;    second argument : rsi src
	mov  rdi, rax
	pop  r8
	mov  rsi, r8
	call ft_strcpy
	ret

error_handle:
	mov rax, 0
	ret
