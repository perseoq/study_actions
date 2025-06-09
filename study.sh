#!/bin/bash

# Ruta al archivo hosts
HOSTS_FILE="/etc/hosts"
# IP a la que redirigir los sitios bloqueados
REDIRECT_IP="127.0.0.1"

# Lista de dominios a bloquear
DOMINIOS=(
  "facebook.com"
  "www.facebook.com"
  "instagram.com"
  "www.instagram.com"
  "tiktok.com"
  "www.tiktok.com"
  "deepseek.com"
  "chatgpt.com"
  "maps.google.com"
  "animeflv.net"
  "anime1.com"
  "animeav1.com"
  "youtube.com"
  "web.whatsapp.com"
  "x.com"
  "reddit.com"
  "open.spotify.com"
  "primevideo.com"
  "play.mercadolibre.com.mx"
  "netflix.com"
)

bloquear() {
  echo "🔒 Bloqueando sitios..."
  for dominio in "${DOMINIOS[@]}"; do
    # Solo agrega si no está ya presente
    if ! grep -q "$dominio" "$HOSTS_FILE"; then
      echo "$REDIRECT_IP $dominio # BLOQUEO_CUSTOM" >> "$HOSTS_FILE"
    fi
  done
  echo "✅ Sitios bloqueados usando /etc/hosts"
}

desbloquear() {
  echo "🔓 Desbloqueando sitios..."
  # Elimina todas las líneas que contienen el marcador BLOQUEO_CUSTOM
  sed -i '/# BLOQUEO_CUSTOM$/d' "$HOSTS_FILE"
  echo "✅ Sitios desbloqueados de /etc/hosts"
}

# Comprobación de privilegios
if [[ "$EUID" -ne 0 ]]; then
  echo "Este script debe ejecutarse como root (usa sudo)."
  exit 1
fi

# Comando principal
case "$1" in
  --bloquear)
    bloquear
    ;;
  --desbloquear)
    desbloquear
    ;;
  *)
    echo "Uso: $0 --bloquear | --desbloquear"
    exit 1
    ;;
esac
