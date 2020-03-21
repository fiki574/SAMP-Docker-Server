FROM ubuntu:bionic
MAINTAINER fiki574 <fiki8796@hotmail.com>

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git && \
    apt-get install -y libstdc++6:i386

ENTRYPOINT [ "" ]
