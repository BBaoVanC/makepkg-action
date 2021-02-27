#!/bin/sh

if [ ! -z "$1" ]; then
    cd "$1"
fi

useradd builder
chown -R builder "$PWD"

su -l builder -c 'makepkg -s --noconfirm'

#makepkg -s --noconfirm --config /makepkg.conf
#makepkg -s --noconfirm
