#!/bin/bash

if [ -z $1 ]; then
	echo 'Error: you should provide a main file in tex format as an argument. :(' 1>&2
	exit 2
fi

if [ ! -f $1 ]; then
	echo 'Error: file does not exist' 1>&2
	exit 3
fi

docker run -ti \
  -v miktex:/miktex/.miktex \
  -v `pwd`:/miktex/work \
  localhost/texw:latest \
  xelatex $1
