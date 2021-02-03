#!/bin/bash

HUGO_URL=https://github.com/gohugoio/hugo/releases/download/v0.80.0/hugo_0.80.0_Linux-64bit.tar.gz

if [ ! -e /tmp/hugo ]; then
  wget $HUGO_URL -O - | tar xzf - -C /tmp
fi

/tmp/hugo -D --gc $@
