#!/bin/bash
# Renderiza el sitio bilingüe completo.
# El inglés lo genera el post-render (render-en.sh) tras el sitio español,
# así que basta con un único `quarto render`.
set -e
quarto render .          # español → docs/  (+ post-render: inglés → docs/en/)
echo "  Pruébalo con: python3 -m http.server -d docs 8000"
