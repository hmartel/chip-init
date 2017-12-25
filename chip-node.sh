#!/bin/bash

curl -o /tmp/node.tar.xz https://nodejs.org/dist/v8.9.3/node-v8.9.3-linux-x64.tar.xz
tar --xz -xvf /tmp/node.tar.xz -C ~/bin

echo 'export PATH=$PATH:~/bin/node-v8.9.3-linux-x64' >> ~/.bash_exports
