	;ssize_t write(int fd, const void *buf, size_t count)
	; 1st argument rdi
	; 2nd argument  rsi
	; 3rd argument rdx

	extern  __errno_location
	section .data
	SYS_WRITE db 0

	section .text
	global  ft_write

ft_write:
	mov rax, 1
	syscall
	cmp rax, 0
	jl  error_handle
	ret

error_handle:
	neg rax; - => +, + => -; errornumber
	mov r8, rax
	mov [rax], r8
	mov rax, -1
	ret
