FROM mcranmer/dockers:cfitsio

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
	apt-get install -y --no-install-recommends \
	gfortran

RUN wget https://downloads.sourceforge.net/project/healpix/Healpix_3.31/Healpix_3.31_2016Aug26.tar.gz && \
	gunzip Healpix* && \
	tar -xpf Healpix* && \
	cd Healpix_3.31 && \
	echo "3\ngfortran\n\nY\n\n\ngcc\n\n\n\n\nN\n1\nY\nN\nN\n0\n" | ./configure && \
	make && \
	make test && \
	make tidy
	

RUN ["/bin/bash"]
