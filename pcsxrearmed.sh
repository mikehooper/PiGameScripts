#!/bin/bash

# PCSX ReARMed

cd ~
git clone https://github.com/notaz/pcsx_rearmed
sudo apt-get install libpng-dev libsdl1.2-dev
cd ~/pcsx_rearmed/
git submodule init && git submodule update
CFLAGS=-march=armv7-a ./configure --sound-drivers=sdl
make
./pcsx
