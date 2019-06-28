#!/bin/bash

# SuperTuxKart

# https://github.com/supertuxkart/stk-code

cd ~
# install supbersion
sudo apt install subversion
# install prerequisites
sudo apt-get install build-essential cmake libbluetooth-dev libcurl4-gnutls-dev libfreetype6-dev libfribidi-dev libgl1-mesa-dev libjpeg-dev libogg-dev libopenal-dev libpng-dev libvorbis-dev libxrandr-dev mesa-common-dev pkg-config zlib1g-dev
# get source
git clone https://github.com/supertuxkart/stk-code.git stk-code
# get assets
svn co https://svn.code.sf.net/p/supertuxkart/code/stk-assets stk-assets

cd ~/stk-code
mkdir cmake_build
cd cmake_build
cmake .. -DUSE_GLES2=1 -DBUILD_RECORDER=off
make -j4
