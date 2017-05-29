FROM buildpack-deps:xenial
FROM cfitsio

RUN cd /tmp && \
	wget ftp://ftp.atnf.csiro.au/pub/software/wcslib/wcslib.tar.bz2 && \
	tar xf wcslib.tar.bz2 && \
	cd wcslib-* && \
	./configure --without-pgplot LIBS="-pthread -lm" && \
	make && \
	make check && \
	mkdir -p /usr/local/share/man/man1 && \
	make install


RUN ["/bin/bash"]
