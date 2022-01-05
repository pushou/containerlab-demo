#!/bin/bash 
ip address add 172.16.10.2/24 dev eth1
ip address add 2001:db8:172:16:10::2/64 dev eth1
ip route del default
ip route add 172.16.0.0/12 via 172.16.10.1 dev eth1
ip route add 2001:db8::/32 via 2001:db8:172:16:10::1 dev eth1
ip route add default via 172.16.10.1

