#!/bin/bash

# reset
iptables -F
iptables -X
iptables -Z

# init
iptables -P INPUT DROP
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT

# loopback, ping, and related
iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -p icmp -j ACCEPT
iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

# ssh
iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# save
iptables-save > /etc/iptables.rules
