#!/bin/bash
set -eux
cd ~/
echo "enter root passwd:"
passwd
sed -i 's/# deb-src/deb-src/' "/etc/apt/sources.list"
dpkg --add-architecture i386
apt-get update
apt-get -y install libc6-i386 git gdb which source libc6-dev vim libglib2.0 
apt-get -y install libglib2.0-dev
apt-get -y install libglib2.0-devel
apt-get -y install python2 python2-pip
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh
pip2 install pwntools


