#!/bin/bash

cd ~
wget https://stolk.org/tlctc/littlecrane-rpi.tar.gz
tar xvzf littlecrane-rpi.tar.gz
cd ~/littlecrane-rpi
chmod +x startlittlecrane.sh

# to run
#cd ~/littlecrane-rpi
#LD_LIBRARY_PATH=/opt/minecraft-pi/lib/brcm ./startlittlecrane.sh
