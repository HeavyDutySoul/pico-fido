#!/bin/bash

VERSION_MAJOR="5"
VERSION_MINOR="12"

rm -rf release/*
cd build_release

rm -rf *
PICO_SDK_PATH=../../pico-sdk cmake .. -DPICO_BOARD=waveshare_rp2040_one -DUSB_VID=0x1050 -DUSB_PID=0x0407
make -kj20
mv pico_fido.uf2 ../release/pico_fido_$board-$VERSION_MAJOR.$VERSION_MINOR.uf2
