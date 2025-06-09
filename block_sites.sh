#!/bin/bash
iptables -A OUTPUT -d 157.240.25.35 -j REJECT
iptables -A OUTPUT -d 31.13.89.174 -j REJECT
