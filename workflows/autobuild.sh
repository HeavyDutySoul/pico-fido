#!/bin/bash
git checkout -b v5.12
git submodule update --init --recursive
sudo apt update
sudo apt install -y cmake gcc-arm-none-eabi libnewlib-arm-none-eabi libstdc++-arm-none-eabi-newlib
git clone https://github.com/HeavyDutySoul/pico-sdk
cd pico-sdk
git submodule update --init
cd ..
mkdir build
cd build
cmake -DPICO_SDK_PATH=../pico-sdk ..
make
