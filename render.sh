#!/bin/bash
# Renderiza el sitio bilingüe completo.
# IMPORTANTE: el orden importa (el render español limpia _site/ por completo).
set -e
quarto render .          # español → _site/
cd en && quarto render   # inglés  → _site/en/
echo "✔ Sitio bilingüe generado: _site/ (es) + _site/en/ (en)"
echo "  Pruébalo con: python3 -m http.server -d _site 8000"
