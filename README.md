This repository is a collection of docker images builder, currently for ruby from 1.8 to 2.2

It is used for demo purpose.

To create those images, move in each ruby subdirectory and build your image as follow:

    $ bin/build.sh imageName myrepo

This will build your image and use 'myrepo' to push it to hub.docker.com
It assumes you are logged to the hub.docker.com

You can replace myrepos by any kind of repos:

    $ bin/build.sh imageName myregistry:5000/myrepo


NOTE: build.sh will detect your local proxy setting ($http_proxy) to properly configure your build. Require, docker 1.9.

