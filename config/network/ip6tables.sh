#!/bin/bash

# reset
ip6tables -F
ip6tables -X
ip6tables -Z

# init
ip6tables -P INPUT DROP
ip6tables -P FORWARD DROP
ip6tables -P OUTPUT ACCEPT

# loopback, ping, and related
ip6tables -A INPUT -i lo -j ACCEPT
ip6tables -A INPUT -p ipv6-icmp -j ACCEPT
ip6tables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

# save
ip6tables-save > /etc/ip6tables.rules
