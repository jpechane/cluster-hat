FROM resin/rpi-raspbian:stretch

USER root
RUN apt-get update &&\
    apt-get install -y git golang-go make &&\
    apt-get -y dist-upgrade &&\
    apt-get clean
RUN useradd -c 'Default user' -m pi

USER pi
