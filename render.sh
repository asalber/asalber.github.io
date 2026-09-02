#!/bin/bash
# Renderiza el sitio bilingüe completo.
# IMPORTANTE: el orden importa (el render español limpia docs/ por completo).
set -e
quarto render .          # español → docs/
cd en && quarto render   # inglés  → docs/en/
echo "✔ Sitio bilingüe generado: docs/ (es) + docs/en/ (en)"
echo "  Pruébalo con: python3 -m http.server -d docs 8000"
