FROM nvidia/cuda:12.3.1-devel-ubuntu22.04

WORKDIR /app

RUN apt-get update && apt-get install -y \
    python3.11 \
    python3-pip

RUN pip install faster-whisper

ENTRYPOINT [ "/app/entrypoint.sh" ]
