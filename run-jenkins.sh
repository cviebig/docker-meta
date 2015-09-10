#!/bin/sh
docker run --privileged -v $(pwd)/../config-ssh:/root/config-ssh cviebig/arch-jenkins
