#!/bin/bash

sudo apt install -y kbd

sudo mkdir -p /usr/share/kbd/keymaps
sudo ln -s -f ~/config/keyboard/kbd.map /usr/share/kbd/keymaps/pocketchip
sudo ln -s -f ~/config/keyboard/xkb.map /usr/share/X11/xkb/symbols/pocketchip
rm -f ~/.Xmodmap

git clone \
  --single-branch --depth 1 --branch master \
  https://github.com/NextThingCo/pocketchip-load /tmp/pc-load

sudo cp /tmp/pc-load/pocketchip-load/sbin/pocketchip-load /usr/sbin/pocketchip-load
sudo chmod +x /usr/sbin/pocketchip-load

git clone \
  --single-branch --depth 1 --branch master \
  https://github.com/NextThingCo/pocketchip-configs /tmp/pc-configs

sudo cp /tmp/pc-configs/pocketchip-configs/skel/.config/awesome/rc.lua /etc/skel/.config/awesome/rc.lua
