FROM golang:1.20

RUN apt-get update -y 

RUN apt-get install -y vim iproute2

RUN git clone --recursive https://github.com/checkmypi/free5gc.git 
RUN cd free5gc/test && go mod download 

WORKDIR "/go/free5gc/test"


