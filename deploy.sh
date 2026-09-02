#!/bin/bash
# Renderiza el sitio Quarto y lo sincroniza con el repositorio
# asalber/asalber.github.io (repositorio de GitHub Pages de usuario).
#
# La primera vez clona ese repositorio como hermano de este proyecto
# (../asalber.github.io). En las siguientes ejecuciones solo sincroniza
# los cambios, los añade y crea un commit local — el push queda en tus
# manos para que puedas revisar el diff antes de publicar.
#
# Variable opcional:
#   SITE_REPO_DIR  ruta al clon de asalber.github.io (por defecto ../asalber.github.io)

set -e

SITE_REPO_URL="git@github.com:asalber/asalber.github.io.git"
SITE_REPO_DIR="${SITE_REPO_DIR:-../asalber.github.io}"

if [ ! -d "$SITE_REPO_DIR" ]; then
  echo "→ Clonando $SITE_REPO_URL en $SITE_REPO_DIR..."
  git clone "$SITE_REPO_URL" "$SITE_REPO_DIR"
fi

echo "→ Renderizando el sitio (es + en)..."
./render.sh

echo "→ Sincronizando _site/ → $SITE_REPO_DIR ..."
rsync -a --delete --exclude='.git' _site/ "$SITE_REPO_DIR/"

cd "$SITE_REPO_DIR"
git add -A

if git diff --cached --quiet; then
  echo "→ No hay cambios que publicar."
  exit 0
fi

git commit -m "Actualiza sitio $(date '+%Y-%m-%d %H:%M')" >/dev/null
echo ""
echo "✔ Cambios preparados y confirmados en $SITE_REPO_DIR"
echo "  Revísalos con:  git -C $SITE_REPO_DIR log -1 -p"
echo "  Publícalos con: git -C $SITE_REPO_DIR push origin main"
