FROM ubuntu:focal
RUN apt-get update && \
    apt install build-essential manpages-dev wget lsb-release -y
RUN cd /tmp && \
    wget https://dl.google.com/go/go1.14.linux-amd64.tar.gz && \
    tar -xvf go1.14.linux-amd64.tar.gz && \
    mv go /usr/local && \
    rm /tmp/go1.14.linux-amd64.tar.gz
ENV GOROOT=/usr/local/go
ENV GOPATH=$HOME/go
ENV PATH=$GOPATH/bin:$GOROOT/bin:$PATH
