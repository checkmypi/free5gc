#!/bin/bash


export N3IWF_IP=${1:-192.168.1.193}
export OWN_IP=$(ip -br a ls dev eth0 | awk '{print $3}' | awk -F"/" '{print $1}')

go test -v -vet=off -timeout 0 -run TestNon3GPPUE -args noinit
