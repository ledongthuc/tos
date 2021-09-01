# ThucOS

## General info

 - Dev OS: Ubuntu 21
 - Virtual: bochs
 - Assembly: nasm
 - C compiler: GCC
 - Bootloader: grub2

## Setup

 - Make sure machine have `make` (https://www.gnu.org/software/make/).
 - Run `sudo make setup` to install library and tools.
 - Run `sudo make build-gcc` to build gcc, binutils for building kernel. Output is in `$HOME/opt/cross`.
 - Run `make build-kernel` to build output kernel iso file. Output is in `./kernel/build/thucos.iso`.
 - Run `make emu-test` to build kernel and run the test on emulator.

## Check software versions

 - Run `make version`
