	; strcpy(char *dst, cons char *src)
	; first argument : rdi
	; second argument : rsi

	section .text
	global  ft_strcpy

ft_strcpy:
	mov rax, rdi
	jmp .loop

.loop:
	mov r8b, byte [rsi]
	mov byte[rdi], r8b

	cmp r8b, 0
	je  .done
	inc rsi
	inc rdi
	jmp .loop

.done:
	ret
