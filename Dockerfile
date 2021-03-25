FROM ubuntu:18.04

RUN apt update && \
    apt install -y python3 g++ wget git && \
    apt clean && \
    useradd -ms /bin/bash ns-3

USER ns-3
WORKDIR /home/ns-3


RUN wget https://www.nsnam.org/releases/ns-allinone-3.32.tar.bz2 && \
    tar xvf ns-allinone-3.32.tar.bz2 && \
    cd ns-allinone-3.32 && \
    python3 build.py && \
    cd ~ && \
    rm ns-allinone-3.32.tar.bz2
