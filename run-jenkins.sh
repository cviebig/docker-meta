#!/bin/sh
docker run --privileged -v $(pwd)/../config-ssh:/root/config-ssh -p 127.0.0.1:8080:8080 cviebig/arch-jenkins
