#!/bin/bash

curl -o /tmp/node.tar.xz https://nodejs.org/dist/v8.9.3/node-v8.9.3-linux-armv7l.tar.xz
tar --xz -xvf /tmp/node.tar.xz -C ~/bin

echo 'export PATH=$PATH:~/bin/node-v8.9.3-linux-armv7l/bin' >> ~/.bash_exports
source ~/.profile

npm install -g airpaste \
  bignum \
  binary-parser \
  bitwise \
  hypercore \
  hyperdrive \
  level \
  pull-stream \
  readme
