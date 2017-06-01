FROM buildpack-deps:xenial

# No interaction during install
ARG DEBIAN_FRONTEND=noninteractive

# Some packages necessary for running visuals
RUN apt-get update && apt-get install -qqy \
    x11-apps \
    libgl1-mesa-glx \
    libxss1 \
    xorg \
    xauth

WORKDIR /bin
RUN wget http://ds9.si.edu/download/ubuntu16/ds9.ubuntu16.7.5.tar.gz && \
    tar xzf ds9* && \
    rm -f ds9*.tar.gz

# Where to store data
WORKDIR /workspace

RUN ["/bin/bash"]
