#!/bin/bash

# Verifica si se ejecuta como root
if [[ "$EUID" -ne 0 ]]; then
  echo "Este script debe ejecutarse como root. Usa: sudo $0"
  exit 1
fi

echo "Eliminando reglas de iptables para desbloquear sitios..."

# --- Eliminación de reglas ---

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

# open.spotify.com
iptables -D OUTPUT -d 146.75.107.42 -j REJECT

# primevideo.com
iptables -D OUTPUT -d 3.167.192.93 -j REJECT
iptables -D OUTPUT -d 3.167.192.129 -j REJECT
iptables -D OUTPUT -d 3.167.192.34 -j REJECT
iptables -D OUTPUT -d 3.167.192.59 -j REJECT

# play.mercadolibre.com.mx
iptables -D OUTPUT -d 13.226.210.77 -j REJECT
iptables -D OUTPUT -d 13.226.210.72 -j REJECT
iptables -D OUTPUT -d 13.226.210.115 -j REJECT
iptables -D OUTPUT -d 13.226.210.71 -j REJECT

# netflix.com
iptables -D OUTPUT -d 3.211.157.115 -j REJECT
iptables -D OUTPUT -d 54.160.93.182 -j REJECT
iptables -D OUTPUT -d 3.225.92.8 -j REJECT

# Guardar reglas para que los cambios sean persistentes
echo "Guardando reglas..."
iptables-save > /etc/sysconfig/iptables

# Reiniciar el servicio iptables
systemctl restart iptables

echo "Reglas eliminadas y guardadas correctamente."
