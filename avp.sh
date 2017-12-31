#!/bin/bash

# manually download AliensVsPredatorXbox.rar from https://firedrop.com/9f2293a50925a01f to Downloads

mkdir ~/avp
cd ~/avp
mkdir avp_build
cd ~/avp/avp_build
wget http://icculus.org/avp/files/avp-20170505-a1.tar.gz
tar -xvzf avp-20170505-a1.tar.gz

cd ~/avp/avp_build/avp-20170505
mkdir cmake_build
cd cmake_build
cmake .. -DSDL_TYPE=AUTO  -DOPENGL_TYPE=AUTO -DCMAKE_C_FLAGS="-DNDEBUG -Ofast -pipe -march=armv7-a -mfpu=neon-vfpv4 -mfloat-abi=hard -ffast-math -fno-math-errno -g -DFIXED_WINDOW_SIZE" -DCMAKE_CXX_FLAGS="-DNDEBUG -Ofast -pipe -march=armv7-a -mfpu=neon-vfpv4 -mfloat-abi=hard -ffast-math -fno-math-errno -g -DDFIXED_WINDOW_SIZE" -DCMAKE_EXE_LINKER_FLAGS="-g"
make -j4

sudo apt-get -y install unrar-free
cp ~/Downloads/AliensVsPredatorXbox.rar ~/avp
cd ~/avp
unrar-free AliensVsPredatorXbox.rar 
cd ~/avp/AliensVsPredatorXbox

# rename files in all folders
for d in */ ; do
    echo "$d"
    cd ~/avp/AliensVsPredatorXbox/$d
    rename 'y/A-Z/a-z/' *
    cd ~/avp/AliensVsPredatorXbox
done

cd ~/avp/AliensVsPredatorXbox
cp ~/avp/avp_build/avp-20170505/cmake_build/avp .

