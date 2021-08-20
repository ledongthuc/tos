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

## Check software versions

 - Run `make version`
