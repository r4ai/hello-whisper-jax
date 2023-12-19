FROM ghcr.io/nvidia/jax-toolbox:base

WORKDIR /app

RUN sed -i 's@archive.ubuntu.com@ftp.jaist.ac.jp/pub/Linux@g' /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    git \
    ffmpeg \
    python3.11 \
    python3-pip

RUN pip install git+https://github.com/sanchit-gandhi/whisper-jax.git
