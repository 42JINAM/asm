	;int    strcmp(const char *s1, const char *s2)
	;       s1 == rdi
	;       s2 == rsi
	section .text
	global  ft_strcmp

ft_strcmp :
	mov rax, 0
	jmp .loop

.loop:
	movzx rdx, BYTE [rdi]
	movzx r10, BYTE [rsi]
	cmp   rdx, r10
	jne   .done
	cmp   rdx, 0
	je    .done
	inc   rdi
	inc   rsi
	jmp   .loop

.done:
	mov rax, rdx
	sub rax, r10
	ret
