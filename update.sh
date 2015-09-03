#!/bin/sh
dir=$(pwd)
git pull
cd ../arch-base
git pull
cd ../arch-docker
git pull
cd ../scratch
git pull
cd ../arch-jenkins
git pull
cd ../arch-build
git pull
cd ../arch-build-ocl
git pull
cd ../arch-build-ocl-amd
git pull
cd ../arch-build-ocl-catalyst
git pull
cd ../arch-build-ocl-intel
git pull
cd ../arch-build-ocl-nvidia
git pull
cd $dir
