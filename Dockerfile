FROM ubuntu:bionic

RUN apt update
RUN apt install -y ffmpeg

COPY ffserver.conf /etc/ffserver.conf

EXPOSE 5000

ENTRYPOINT ["/usr/bin/ffserver"]