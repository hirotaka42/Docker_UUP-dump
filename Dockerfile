FROM ubuntu:latest AS build-stage 

RUN apt-get update && apt-get install -y \
    gcc-arm-none-eabi \
    build-essential \
    git \
    make \
    cmake \
    python3 \
    python3-pip \
    zip unzip \
    cabextract wimtools chntpw genisoimage \
    aria2


COPY 22621.1702_arm64_ja-jp_professional_09e4d108_convert.zip /tmp
RUN cd /tmp && \
    unzip 22621.1702_arm64_ja-jp_professional_09e4d108_convert.zip && \
    chmod +x uup_download_linux.sh && \
    ./uup_download_linux.sh 
