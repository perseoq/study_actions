#!/bin/bash
iptables -D OUTPUT -d 157.240.25.35 -j REJECT
iptables -D OUTPUT -d 31.13.89.174 -j REJECT
