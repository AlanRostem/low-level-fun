section .text

extern printf
global _start

_start:
    mov edx,len ; lead message length
    mov ecx,msg ; load message addr 
    mov ebx,1   ; stdout file descriptor
    mov eax,4   ; syscall (sys_write)
    int 0x80    ; calling display-interrupt

    mov eax,1   ; syscall (sys_exit)
    int 0x80    ; calling exit-interrupt
    
section .data

msg db 'Hello World!',0xA
len equ $ - msg
