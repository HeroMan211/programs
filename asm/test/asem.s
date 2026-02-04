    .section .bss
buffer:
    .skip 128          

    .section .data
prompt:
    .string "Enter a number: "
prompt_len = . - prompt

hello:
    .string "Your Number is , "
hello_len = . - hello

newline:
    .byte 10           

    .section .text
    .globl _start
_start:
    mov $1, %rax       
    mov $1, %rdi       
    lea prompt(%rip), %rsi
    mov $prompt_len, %rdx
    syscall

    mov $0, %rax        
    mov $0, %rdi       
    lea buffer(%rip), %rsi
    mov $128, %rdx      
    syscall
    mov %rax, %rcx     

    mov $1, %rax
    mov $1, %rdi
    lea hello(%rip), %rsi
    mov $hello_len, %rdx
    syscall

    mov $1, %rax
    mov $1, %rdi
    lea buffer(%rip), %rsi
    mov %rcx, %rdx
    syscall

    mov $1, %rax
    mov $1, %rdi
    lea newline(%rip), %rsi
    mov $1, %rdx
    syscall

    mov $60, %rax       
    xor %rdi, %rdi
    syscall
