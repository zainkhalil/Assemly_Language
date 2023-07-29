
;  Assemble: nasm -felf64 HelloWorld.nasm
;  Link:     ld HelloWorld.o -o myexe
;  usage:    ./myexe

Section .data
   msg db "Hello World ", 0xA
   EXIT_STATUS equ 54

Section .bss
; nothing is present in .bss section in this program

SECTION .text
   global _start
   _start:
;display a message on stdout
      Mov Rax,1
      mov rdi,1 
      mov rsi,msg
      mov rdx,26
      Syscall    
;exit the program
      mov rax,60
      mov rdi,EXIT_STATUS
      syscall  
