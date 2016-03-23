#!/bin/bash
#
#

if [ "$1" = bash ]
then
   exec bash
fi

exec /usr/local/bin/build.sh $@
