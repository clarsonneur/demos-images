#!/bin/bash -ex
#

if [ "$http_proxy" != "" ]
then
   PROXY="--build-arg http_proxy=$http_proxy --build-arg https_proxy=$http_proxy --build-arg no_proxy=$no_proxy"
fi

if [ "$1" = "" ]
then
   echo "Syntax is $0 imageName [registry[:port]/]repo
where :
- image name is a list of subdir in this repo used to build docker image. like ruby18"
   exit
fi

if [ "$2" = "" ]
then
   echo "Repo name not provided. Should be like : [registry[:port]/]repo"
   exit 1
fi

if [ ! -d "$1" ]
then
   echo "Unknown sub directory '$1'"
   exit 1
fi

if [ ! -f "$1/Dockerfile" ]
then
   echo "'$1' is not a valid directory to build a docker image"
   exit 1
fi

cd $1

if [ ! -f "image_version" ]
then
   echo "'$1' must contains a 'image_version' file to let this script to build the docker image (imageName[:version] No space supported)"
   exit 1
fi

IMAGE_NAME=$(cat image_version)

docker build -t $2/$IMAGE_NAME $PROXY .
docker push $2/$IMAGE_NAME
