#!/bin/bash

sudo apt remove -y firefox-esr surf
sudo apt install -y midori

ln -s -f ~/config/midori/config ~/.config/midori/config
