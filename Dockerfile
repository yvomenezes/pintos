FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN   apt-get update \
    && apt-get install -y build-essential \
    && apt-get install -y binutils \
    && apt-get install -y perl \
    && apt-get install -y qemu-system \
    && apt-get install -y sudo \
    && apt-get install -y autoconf \
    && apt-get install -y automake \
    && apt-get install -y libtool \
    && apt-get install -y libx11-dev \
    && apt-get install -y xorg-dev \
    && apt-get install -y libncurses-dev \
    && apt-get install -y libsdl2-dev \
    && apt-get install -y libwxgtk3.0-gtk3-dev \
    && apt-get install -y libgtk2.0-dev \
    && apt-get install -y zlib1g-dev \
    && apt-get install -y gdb
RUN useradd -ms /bin/bash dickers
RUN echo 'dickers:dickers' | chpasswd && adduser dickers sudo
USER dickers
WORKDIR /home/dickers
RUN export PATH="${HOME}/pintos/src/utils:$PATH"
