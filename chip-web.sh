#!/bin/bash

sudo apt remove -y firefox-esr surf
sudo apt install -y midori

mkdir -p ~/.config/midori
ln -s -f ~/config/midori/config ~/.config/midori/config
