#!/bin/bash

rm -rf ~/Public
rm -rf ~/Templates

cp -r /tmp/chip-init/config ~/config
mkdir ~/bin

sudo apt update && \
  sudo apt upgrade -y

sudo apt install -y build-essential \
  curl \
  git \
  telnet \
  wget \
  xclip \
  xinput-calibrator

./chip-ssh.sh && \
  ./chip-keyboard.sh && \
  ./chip-dots.sh && \
  ./chip-theme.sh && \
  ./chip-vim.sh && \
  ./chip-node.sh && \
  ./chip-web.sh && \
  ./chip-irc.sh
