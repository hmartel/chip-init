#!/bin/bash

rm -rf ~/Public
rm -rf ~/Templates

cp -r /tmp/chip-init/config ~/config
mkdir ~/bin

sudo apt update && \
  sudo apt upgrade -y

sudo apt install -y telnet \
  curl \
  wget \
  git \
  xinput-calibrator
