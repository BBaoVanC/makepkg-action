#!/bin/sh

if [ ! -z "$1" ]; then
    cd "$1"
fi

makepkg -s --noconfirm --config /makepkg.conf
namcap -i *.pkg.*
