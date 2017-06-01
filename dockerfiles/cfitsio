FROM buildpack-deps:xenial

RUN oldpath=`pwd` && cd /tmp \
	&& wget ftp://heasarc.gsfc.nasa.gov/software/fitsio/c/cfitsio_latest.tar.gz \
	&& tar zxvf cfitsio_latest.tar.gz \
	&& cd cfitsio \
	&& ./configure --prefix=/usr \
	&& make -j 2 \
	&& make install \
	&& make clean \
	&& cd $oldpath \
	&& rm -Rf /tmp/cfitsio* 

RUN ["/bin/bash"]
