#!/bin/bash

# client
sudo apt install -y openssh-client

sudo ln -s -f ~/config/ssh/client/ssh_config /etc/ssh/ssh_config
ln -s -f ~/config/ssh/client ~/.ssh

cd ~/.ssh
ssh-keygen -t ed25519 -N "$SSH_PASS" < /dev/null
ssh-keygen -t rsa -b 4096 -N "$SSH_PASS" < /dev/null

# server
sudo apt install -y ssh

sudo ln -s -f ~/config/ssh/server/sshd_config /etc/ssh/sshd_config
sudo rm /etc/ssh/ssh_host_*

cd ~/config/ssh/server
sudo ssh-keygen -t ed25519 -f ssh_host_ed25519_key -N "" < /dev/null
sudo ssh-keygen -t rsa -b 4096 -f ssh_host_rsa_key -N "" < /dev/null

sudo ln -s -f ~/config/ssh/server/ssh_host_ed25519_key /etc/ssh/ssh_host_ed25519_key
sudo ln -s -f ~/config/ssh/server/ssh_host_ed25519_key.pub /etc/ssh/ssh_host_ed25519_key.pub

sudo ln -s -f ~/config/ssh/server/ssh_host_rsa_key /etc/ssh/ssh_host_rsa_key
sudo ln -s -f ~/config/ssh/server/ssh_host_rsa_key.pub /etc/ssh/ssh_host_rsa_key.pub

sudo service ssh restart
