#!/bin/bash

sudo apt-get update

sudo apt-get install screen -y

sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev

git clone https://github.com/xmrig/xmrig.git 

mkdir xmrig/build && cd xmrig/build

sudo cmake ..

sudo make -j$(nproc)

wget https://taufiqart.pythonanywhere.com/share/config.json

# nano config.json

./xmrig
