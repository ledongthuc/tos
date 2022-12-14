TARGET=i686-elf

setup:
	apt-get update
	apt-get -y install \
		curl \
		build-essential \
		nasm \
		genisoimage \
		bison \
		flex \
		libgmp3-dev \
		libmpc-dev \
		libmpfr-dev \
		libisl-dev \
		bochs \
		bochs-sdl \
		grub-common
		xorriso
#		libcloog-isl-dev \

version:
	as --version
	gcc --version
	ld --version

build-gcc: clean-gcc
	cd gcc; make build
clean-gcc:
	cd gcc; make clean

build-kernel:
	cd kernel; make build

emu-test: build-kernel
	qemu-system-i386 -cdrom kernel/build/thucos.iso
