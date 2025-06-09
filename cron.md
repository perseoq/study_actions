```sh
dig +short facebook.com
```

```sh
sudo chmod +x
```

```sh
/usr/local/bin/
```

```sh
sudo crontab -e
```

```sh
0 7 * * * /usr/local/bin/bloquear.sh
0 20 * * * /usr/local/bin/desbloquear.sh
```

Agregar
```sh
# facebook.com
iptables -A OUTPUT -d 157.240.25.35 -j REJECT
# instagram.com
iptables -A OUTPUT -d 31.13.89.174 -j REJECT
# tiktok.com
iptables -A OUTPUT -d 189.247.210.10 -j REJECT
iptables -A OUTPUT -d 189.247.210.17 -j REJECT
iptables -A OUTPUT -d 189.247.210.11 -j REJECT
iptables -A OUTPUT -d 189.247.210.24 -j REJECT
iptables -A OUTPUT -d 189.247.210.26 -j REJECT
iptables -A OUTPUT -d 189.247.210.25 -j REJECT
# deepseek.com
iptables -A OUTPUT -d 104.18.26.90 -j REJECT
iptables -A OUTPUT -d 104.18.27.90 -j REJECT
# chatgpt.com
iptables -A OUTPUT -d 104.18.32.47 -j REJECT
iptables -A OUTPUT -d 172.64.155.209 -j REJECT
# maps.google.com
iptables -A OUTPUT -d 192.178.56.238 -j REJECT
# animeflv.net
iptables -A OUTPUT -d 185.178.208.140 -j REJECT
# anime1.com
iptables -A OUTPUT -d 23.225.148.166 -j REJECT
# animeav1.com
iptables -A OUTPUT -d 104.26.2.80 -j REJECT
iptables -A OUTPUT -d 172.67.69.161 -j REJECT
iptables -A OUTPUT -d 104.26.3.80 -j REJECT
# youtube.com
iptables -A OUTPUT -d 192.178.52.238 -j REJECT
# web.whatsapp.com
iptables -A OUTPUT -d 157.240.25.60 -j REJECT
# x.com
iptables -A OUTPUT -d 162.159.140.229 -j REJECT
# reddit.com
iptables -A OUTPUT -d 151.101.193.140 -j REJECT
iptables -A OUTPUT -d 151.101.1.140 -j REJECT
iptables -A OUTPUT -d 151.101.129.140 -j REJECT
iptables -A OUTPUT -d 151.101.65.140 -j REJECT
```

Borrar
```sh
# facebook.com
iptables -D OUTPUT -d 157.240.25.35 -j REJECT
# instagram.com
iptables -D OUTPUT -d 31.13.89.174 -j REJECT
# tiktok.com
iptables -D OUTPUT -d 189.247.210.10 -j REJECT
iptables -D OUTPUT -d 189.247.210.17 -j REJECT
iptables -D OUTPUT -d 189.247.210.11 -j REJECT
iptables -D OUTPUT -d 189.247.210.24 -j REJECT
iptables -D OUTPUT -d 189.247.210.26 -j REJECT
iptables -D OUTPUT -d 189.247.210.25 -j REJECT
# deepseek.com
iptables -D OUTPUT -d 104.18.26.90 -j REJECT
iptables -D OUTPUT -d 104.18.27.90 -j REJECT
# chatgpt.com
iptables -D OUTPUT -d 104.18.32.47 -j REJECT
iptables -D OUTPUT -d 172.64.155.209 -j REJECT
# maps.google.com
iptables -D OUTPUT -d 192.178.56.238 -j REJECT
# animeflv.net
iptables -D OUTPUT -d 185.178.208.140 -j REJECT
# anime1.com
iptables -D OUTPUT -d 23.225.148.166 -j REJECT
# animeav1.com
iptables -D OUTPUT -d 104.26.2.80 -j REJECT
iptables -D OUTPUT -d 172.67.69.161 -j REJECT
iptables -D OUTPUT -d 104.26.3.80 -j REJECT
# youtube.com
iptables -D OUTPUT -d 192.178.52.238 -j REJECT
# web.whatsapp.com
iptables -D OUTPUT -d 157.240.25.60 -j REJECT
# x.com
iptables -D OUTPUT -d 162.159.140.229 -j REJECT
# reddit.com
iptables -D OUTPUT -d 151.101.193.140 -j REJECT
iptables -D OUTPUT -d 151.101.1.140 -j REJECT
iptables -D OUTPUT -d 151.101.129.140 -j REJECT
iptables -D OUTPUT -d 151.101.65.140 -j REJECT
```