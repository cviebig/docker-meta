#!/bin/sh
dir=$(pwd)
cd ../arch-base
docker build -t cviebig/arch-base:latest .
cd ../arch-docker
docker build -t cviebig/arch-docker:latest .
cd ../scratch
docker build -t cviebig/scratch:latest .
cd ../arch-jenkins
docker build -t cviebig/arch-jenkins:latest .
cd $dir
