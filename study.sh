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
  "www3.animeflv.net"
  "xvideos.com"
  "xvideos.es"
  "pronhub.com"
  "xnxx.com"
  "stripchat.com"
  "cams.com"
  "chaturbate.com"
)

bloquear() {
  echo "🔒 Bloqueando sitios..."
  for dominio in "${DOMINIOS[@]}"; do
    if ! grep -q "$dominio" "$HOSTS_FILE"; then
      echo "$REDIRECT_IP $dominio # BLOQUEO_CUSTOM" >> "$HOSTS_FILE"
    fi
  done
  echo "✅ Sitios bloqueados usando /etc/hosts"
}

desbloquear() {
  echo "🔓 Desbloqueando sitios..."
  sed -i '/# BLOQUEO_CUSTOM$/d' "$HOSTS_FILE"
  echo "✅ Sitios desbloqueados de /etc/hosts"
}

ayuda() {
  echo "Uso: sudo $0 [opción]"
  echo ""
  echo "Opciones:"
  echo "  --bloquear       Bloquea sitios agregando entradas al archivo /etc/hosts"
  echo "  --desbloquear    Elimina las entradas agregadas y desbloquea los sitios"
  echo "  --help           Muestra esta ayuda"
  echo ""
  echo "Ejemplo:"
  echo "  sudo $0 --bloquear"
  echo "  sudo $0 --desbloquear"
  exit 0
}

# Comprobación de privilegios
if [[ "$EUID" -ne 0 ]]; then
  echo "Este script debe ejecutarse como root (usa sudo)."
  exit 1
fi

# Comando principal
case "$1" in
  --bloquear|-b)
    bloquear
    ;;
  --desbloquear|-d)
    desbloquear
    ;;
  --help|-h)
    ayuda
    ;;
  *)
    echo "❌ Opción no válida. Usa --help para ver las opciones disponibles."
    exit 1
    ;;
esac
