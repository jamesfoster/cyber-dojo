#!/bin/bash
cp Dockerfile_build_essential Dockerfile
docker build -t cyberdojo/build-essential  .
rm Dockerfile

cp Dockerfile_gcc_4.8.1 Dockerfile
docker build -t cyberdojo/gcc-4.8.1 .
rm Dockerfile

cp Dockerfile_gcc_4.8.1_assert Dockerfile
docker build -t cyberdojo/gcc-4.8.1_assert .
rm Dockerfile

docker push cyberdojo/build-essential
docker push cyberdojo/gcc-4.8.1
docker push cyberdojo/gcc-4.8.1_assert