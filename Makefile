
setup:
	sudo apt-get -y install \
		build-essential \
		nasm genisoimage \
		bochs \
		bochs-sdl

version:
	as --version
	gcc --version
	ld --version
