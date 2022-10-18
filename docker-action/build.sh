#!/bin/sh -l

xbps-install -Sy xbps
xbps-install -Syu
xbps-install -Syu
xbps-install -Sy make git bash
git clone https://github.com/Nootm/void-mklive.git
cd void-mklive
make
./mklive.sh -o x.iso -a x86_64-musl -l en_GB.UTF-8 -i gzip -s gzip -C "ipv6.disable=1"
cp ./x.iso /github/workspace/
