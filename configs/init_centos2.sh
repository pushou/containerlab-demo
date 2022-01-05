#!/bin/bash
ip address add 192.168.10.2/24 dev eth1
ip address add 2001:db8:192:168:10::2/64 dev eth1
ip route del default
ip route add 192.168.0.0/16 via 192.168.10.1 dev eth1
ip route add default via 192.168.10.1
ip route add 2001:db8::/32 via 2001:db8:192:168:10::1 dev eth1

