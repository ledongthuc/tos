BINUTILS_SRC=binutils-2.36
GCC_SRC=gcc-11.1.0

PREFIX=$(HOME)/opt/cross
TARGET=i686-elf

build: ${PREFIX} binutils gcc

binutils: ${BINUTILS_SRC}
	mkdir -p binutils
	cd binutils; \
	export PATH=$(PREFIX)/bin:$$PATH; \
	../${BINUTILS_SRC}/configure --target=${TARGET} --prefix="${PREFIX}" --with-sysroot --disable-nls --disable-werror; \
	make; \
	make install

gcc: ${GCC_SRC}
	mkdir -p gcc
	cd gcc; \
	export PATH=$(PREFIX)/bin:$$PATH; \
	which -- ${TARGET}-as || echo ${TARGET}-as is not in the PATH; \
	../${GCC_SRC}/configure --target=${TARGET} --prefix="${PREFIX}" --disable-nls --enable-languages=c,c++ --without-header;s \
	make all-gcc; \
	make all-target-libgcc; \
	make install-gcc; \
	make install-target-libgcc

${BINUTILS_SRC}:
	rm -rf ${BINUTILS_SRC} ${BINUTILS_SRC}.tar.gz
	curl -o ${BINUTILS_SRC}.tar.gz https://ftp.gnu.org/gnu/binutils/${BINUTILS_SRC}.tar.gz
	tar -xvzf ${BINUTILS_SRC}.tar.gz

${GCC_SRC}:
	rm -rf ${GCC_SRC} ${GCC_SRC}.tar.gz
	curl -o ${GCC_SRC}.tar.gz https://ftp.gnu.org/gnu/gcc/${GCC_SRC}/${GCC_SRC}.tar.gz
	tar -xvzf ${GCC_SRC}.tar.gz

${PREFIX}:
	mkdir -p ${PREFIX}

clean:
	rm -rf ${BINUTILS_SRC} ${BINUTILS_SRC}.tar.gz ${GCC_SRC} ${GCC_SRC}.tar.gz binutils gcc
