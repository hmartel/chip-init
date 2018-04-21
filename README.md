# chip-init
bash scripts for initializing my [Pocket CHIP](https://getchip.com/pages/pocketchip).

## Install
```
$ busybox microcom -t 115200 /dev/ttyACM0
$ sudo apt update && sudo apt install -y git
$ git clone https://github.com/rhodey/chip-init /tmp/chip-init && cd /tmp/chip-init
$ export SSH_PASS=secret123; history -d $(history 1)
$ ./chip-init.sh
$ unset SSH_PASS
```

## Todo
  + fork chip-mtd-utils
  + fork CHIP-buildroot
  + iptables
  + ecryptfs
  + wireguard

## License
Copyright 2017 Rhodey Orbits, GPLv3.
