#!/bin/sh

if [ ! -z "$1" ]; then
    cd "$1"
fi

makepkg -s
namcap -i *.pkg.*
