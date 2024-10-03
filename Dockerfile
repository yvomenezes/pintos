FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update 
RUN apt-get install -y build-essential 
RUN apt-get install -y git 
RUN apt-get install -y binutils 
RUN apt-get install -y perl 
RUN apt-get install -y qemu-system 
RUN apt-get install -y sudo 
RUN apt-get install -y autoconf 
RUN apt-get install -y automake 
RUN apt-get install -y libtool 
RUN apt-get install -y libx11-dev 
RUN apt-get install -y xorg-dev 
RUN apt-get install -y libncurses-dev 
RUN apt-get install -y libsdl2-dev 
# RUN apt-get install -y libwxgtk3.0-gtk3-dev 
RUN apt-get install -y libgtk2.0-dev 
RUN apt-get install -y zlib1g-dev 
RUN apt-get install -y gdb
RUN useradd -ms /bin/bash dickers
RUN echo 'dickers:dickers' | chpasswd && adduser dickers sudo
USER dickers
WORKDIR /home/dickers
RUN export PATH="${HOME}/pintos/src/utils:$PATH"
