#!/usr/bin/env bash

nasm -f elf64 multiboot_header.asm
#nasm -f elf64 boot_simple.asm
ld -n -o ./isofiles/boot/kernel.bin -T linker.ld multiboot_header.o boot_simple.o

#objdump -h kernel.bin

grub2-mkrescue -o min-os.iso isofiles

qemu-system-x86_64 -cdrom min-os.iso