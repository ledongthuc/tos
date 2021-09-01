COSS_PATH=$(HOME)/opt/cross

build: build/thucos.iso
	grub-file --is-x86-multiboot build/thucos.bin

build/boot.o: build-folder
	$(COSS_PATH)/bin/i686-elf-as boot.s -o build/boot.o

build/kernel.o: build-folder
	$(COSS_PATH)/bin/i686-elf-gcc -c kernel.c -o build/kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

build/thucos.bin: build-folder build/boot.o build/kernel.o
	$(COSS_PATH)/bin/i686-elf-gcc -T linker.ld -o build/thucos.bin -ffreestanding -O2 -nostdlib build/boot.o build/kernel.o -lgcc
	grub-file --is-x86-multiboot build/thucos.bin

build/thucos.iso: build/thucos.bin
	mkdir -p build/isodir/boot/grub
	cp build/thucos.bin build/isodir/boot/thucos.bin
	cp grub.cfg build/isodir/boot/grub/grub.cfg
	cp grub.cfg build/isodir/boot/grub/grub.cfg
	grub-mkrescue -o build/thucos.iso build/isodir

build-folder:
	mkdir -p build
