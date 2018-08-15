FROM jpechane/chat-base:latest

ENV SOURCE_TAG=v2.6.2 GOPATH=/home/pi/go
EXPOSE 5000
VOLUME /var/lib/registry-cache

COPY etc/registry.yml /usr/local/etc
RUN git clone -b $SOURCE_TAG https://github.com/docker/distribution.git $GOPATH/src/github.com/docker/distribution &&\
    cd $GOPATH/src/github.com/docker/distribution &&\
    make clean binaries

USER root
RUN cp $GOPATH/src/github.com/docker/distribution/bin/* /usr/local/bin &&\
    chmod 755 /usr/local/bin/*

USER pi
CMD registry serve /usr/local/etc/registry.yml
