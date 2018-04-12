# chip-init
bash scripts for initializing my [Pocket CHIP](https://getchip.com/pages/pocketchip).

## Install
```
$ git clone https://github.com/rhodey/chip-init /tmp/chip-init && cd /tmp/chip-init
$ export SSH_PASS=secret123; history -d $(history 1)
$ ./chip-init.sh
$ unset SSH_PASS
```

## Todo
  + iptables
  + ecryptfs
  + wireguard

## License
Copyright 2017 Rhodey Orbits, GPLv3.
