#!/bin/bash

sudo ln -s -f ~/config/theme/pocket-home.json /usr/share/pocket-home/config.json
sudo ln -s -f ~/config/theme/background.png /usr/share/pocket-home/mainBackground.png

sudo systemctl restart lightdm
