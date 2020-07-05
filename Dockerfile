FROM ubuntu:bionic

RUN apt update
RUN apt install -y ffmpeg

COPY ffserver.conf /etc/ffserver.conf

EXPOSE 80

ENTRYPOINT ["/usr/bin/ffserver"]