FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    bc \
    bison \
    flex \
    libncurses5-dev \
    libssl-dev \
    libelf-dev \
    dwarves \
    cpio \
    xz-utils \
    wget \
    git \
    && rm -rf /var/lib/apt/lists/*