	; first argument- rdi - address of string
	; rax - length of string

	global ft_strlen

ft_strlen:
	;xor rax, rax; rax = 0
	mov  rax, 0; rax = 0
	jmp  .loop

.loop:
	cmp BYTE [rdi + rax], 0
	je  .done
	inc rax
	jmp .loop

.done:
	ret
