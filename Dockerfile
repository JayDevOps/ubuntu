FROM ubuntu:focal
RUN apt-get update && \
    apt install build-essential manpages-dev wget lsb-release -y
RUN cd /tmp && \
    wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz && \
    tar -xvf go1.13.linux-amd64.tar.gz && \
    mv go /usr/local && \
    export GOROOT=/usr/local/go && \
    export GOPATH=$HOME/go && \
    export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
