section .data
SYS_WRITE equ 1
STD_IN  equ 1
SYS_EXIT equ 60
EXIT_CODE equ 0

NEW_LINE db 0xa
WRONG_ARGC db "Must be two command line argument", 0xa

section .text
global  _start

_start:
	;;  argc -> rcx
	pop rcx
	cmp rcx, 3
	jne argcError

	;;  skip argv[0] program name
	add rsp, 8

	;;   get argv[1] -> rsi
	pop  rsi
	;;   convert str to int -> rax -> r10
	call str_to_int
	mov  r10, rax
	;;   get argv[2] -> rsi
	pop  rsi
	;;   convert str to int -> rax -> r11
	call str_to_int
	mov  r11, rax

	add r10, r11

	;;  convert int to str
	mov rax, r10
	xor r12, r12
	jmp int_to_str

argcError:
	mov rax, 1
	mov rdi, 1
	mov rsi, WRONG_ARGC
	mov rdx, 34
	syscall
	jmp exit

int_to_str:
	;;reminder from division
	mov        rdx, 0
	;;         base
	mov        rbx, 10
	;;         rax = rax/10
	div        rbx
	;;         add \0
	add        rdx, 48
	;;push     reminder to stack
	push       rdx
	;;         go next
	inc        r12;; nums of characters
	;;         chheck factor with 0
	cmp        rax, 0x0
	;;         loop again
	jne        int_to_str
	;;         print result
	jmp        print

str_to_int:
	xor rax, rax
	mov rcx, 10

next:
	cmp [rsi], byte 0
	je  return_str
	mov bl, [rsi]
	sub bl, 48
	mul rcx
	add rax, rbx
	inc rsi
	jmp next

return_str:
	ret

print:
	;;  r12 => length
	mov rax, 1
	mul r12
	mov r12, 8;; => length * 8 (for systemcall)
	mul r12
	mov rdx, rax

	mov rax, SYS_WRITE
	mov rdi, STD_IN
	mov rsi, rsp
	syscall

	jmp printNewline

printNewline:
	mov rax, SYS_WRITE
	mov rdi, STD_IN
	mov rsi, NEW_LINE
	mov rdx, 1
	syscall
	jmp exit

exit:
	mov rax, SYS_EXIT
	mov rdi, EXIT_CODE
	syscall
