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
cd ../arch-build
docker build -t cviebig/arch-build:latest .
cd ../arch-build-ocl
docker build -t cviebig/arch-build-ocl:latest .
cd ../arch-build-ocl-amd
docker build -t cviebig/arch-build-ocl-amd:latest .
cd ../arch-build-ocl-catalyst
docker build -t cviebig/arch-build-ocl-catalyst:latest .
cd ../arch-build-ocl-intel
docker build -t cviebig/arch-build-ocl-intel:latest .
cd ../arch-build-ocl-nvidia
docker build -t cviebig/arch-build-ocl-nvidia:latest .
cd $dir
