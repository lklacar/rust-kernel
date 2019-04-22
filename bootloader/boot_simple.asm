global _start

section .text
bits 32         ;32-bit instructions in protected mode
                ;64-bit in long mode

_start:
    ;print `Hello, World!` to screen
    mov dword [0xB8000], 0x2F652F48
    mov dword [0xB8004], 0x2F6C2F6C
    mov dword [0xB8008], 0x2F2C2F6F
    mov dword [0xB800C], 0x2F572F20
    mov dword [0xB8010], 0x2F722F6F
    mov dword [0xB8010], 0x2F642F6C
    mov dword [0xB8014], 0x2F202F21
    hlt         ;halt the CPU