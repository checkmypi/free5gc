FROM golang:1.20

RUN apt-get update -y 

RUN apt-get install -y vim iproute2 patch

COPY *.patch /tmp/

RUN git clone --recursive https://github.com/checkmypi/free5gc.git 
RUN cd free5gc/NFs/n3iwf && patch -p1 < /tmp/n3iwf_tracelevel.patch && pwd && cd ../../test && go mod download && go build -a && go test -c

WORKDIR "/go/free5gc/test"


