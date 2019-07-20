#!/bin/sh

rm -rf comar_root

mkdir -p comar_root/var/log
mkdir -p comar_root/var/db

cd ..
cmake .
make
make install DESTDIR=tests/comar_root
cd tests

echo

sudo comar_root/usr/sbin/comar --datadir=comar_root/var/db/comar3 --logdir=comar_root/var/log/comar3 --debug --print
