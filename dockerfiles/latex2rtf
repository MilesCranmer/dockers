FROM buildpack-deps:xenial

WORKDIR "/Downloads"

RUN wget https://downloads.sourceforge.net/project/latex2rtf/latex2rtf-unix/2.3.16/latex2rtf-2.3.16.tar.gz && \
    tar xzf latex2rtf* && \
    cd latex2rtf* && \
    make && \
    make install && \
    cd .. && \
    rm -rf latex2rtf*

WORKDIR "/workspace"

RUN ["/bin/bash"]
