#!/bin/bash

rm -rf ~/Public
rm -rf ~/Templates

cp -r /tmp/chip-init/config ~/config

sudo apt update && \
  sudo apt upgrade -y

sudo apt install -y curl \
  wget \
  git \
  xinput-calibrator
