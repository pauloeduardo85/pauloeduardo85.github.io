global _start

section .data
    message db "Hello, World!", 0x0a      ; string with line feed
    message_len equ $ - message         ; calculate string length

section .text
_start:
    ; write(1, message, message_len)
    mov rax, 1                          ; system call 1 is sys_write
    mov rdi, 1                          ; file descriptor 1 is stdout
    mov rsi, message                    ; pointer to string
    mov rdx, message_len                ; number of bytes
    syscall                             ; invoke kernel

    ; exit(0)
    mov rax, 60                         ; system call 60 is sys_exit
    xor rdi, rdi                        ; exit code 0
    syscall                             ; invoke kernel
