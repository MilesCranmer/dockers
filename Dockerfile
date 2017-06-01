FROM ubuntu

# Install all packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    pandoc

WORKDIR /data

RUN ["/bin/bash"]
