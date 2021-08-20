COSS_PATH=$(HOME)/opt/cross

build: build/boot.o

build/boot.o: build-folder
	$(COSS_PATH)/bin/i686-elf-as boot.s -o build/boot.o

build-folder:
	mkdir -p build
