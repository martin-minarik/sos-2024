#!/bin/bash

iptables -F

iptables -P OUTPUT DROP

iptables -A OUTPUT -p tcp --dport 80 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 443 -j ACCEPT

iptables -A OUTPUT -p tcp -d 192.168.160.1 --sport 22 -j ACCEPT

iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE