FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN   apt-get update \
    && apt-get install -y build-essential \
    && apt-get install -y binutils \
    && apt-get install -y perl \
    && apt-get install -y qemu-system \
    && apt-get install -y sudo
RUN useradd -ms /bin/bash dickers
USER dickers
