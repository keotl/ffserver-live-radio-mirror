FROM ubuntu:bionic

RUN apt update
RUN apt install -y ffmpeg

COPY ffserver.conf /etc/ffserver.conf

ENTRYPOINT ["/usr/bin/ffserver"]