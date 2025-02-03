	;ssize_t write(int fd, const void *buf, size_t count)
	; 1st argument rdi
	; 2nd argument  rsi
	; 3rd argument rdx

	section .data
	SYS_WRITE db 0

	section .text
	global  ft_write

ft_write:
