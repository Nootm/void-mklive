#!/bin/sh -l

xbps-install -Sy xbps
xbps-install -Syu
xbps-install -Syu
xbps-install -Sy make git bash
git clone https://github.com/Nootm/void-mklive.git
make
./mklive.sh -a x86_64-musl -l en_GB.UTF-8 -o x.iso
cp ./x.iso /github/workspace/
