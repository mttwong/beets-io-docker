FROM python:3.12-alpine

RUN apk add --no-cache chromaprint ffmpeg && \
    pip install --no-cache-dir beets pyacoustid

ENTRYPOINT ["beet"]
