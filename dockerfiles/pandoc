FROM ubuntu

# Install all packages
RUN apt-get update && apt-get install -y --no-install-recommends \
        pandoc && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

RUN ["/bin/bash"]
