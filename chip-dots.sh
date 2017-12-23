#!/bin/bash

git clone https://github.com/rhodey/dotfiles ~/dotfiles

rm -f ~/.profile
rm -f ~/.bashrc

~/dotfiles/install.sh

source ~/.profile
