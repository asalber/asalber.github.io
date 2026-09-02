#!/bin/bash
# post-render del sitio español (raíz): renderiza también el proyecto inglés
# anidado en en/ (que publica en docs/en/).
#
# El sitio inglés es un proyecto Quarto independiente y el padre lo excluye
# ("!en/"), así que Quarto no lo tocaría por su cuenta. Con este post-render,
# CUALQUIER render completo del sitio español —`quarto render`,
# `quarto render --to all`, `quarto preview`— regenera docs/ (es) + docs/en/ (en).
#
# Solo actúa en renders completos del proyecto: al renderizar un único archivo
# Quarto no limpia docs/, y re-renderizar todo el inglés sería un desperdicio.
set -e

[ "$QUARTO_PROJECT_RENDER_ALL" = "1" ] || exit 0

echo "→ post-render: renderizando el sitio en inglés (en/ → docs/en/)…"
quarto render en
echo "✔ Sitio bilingüe generado: docs/ (es) + docs/en/ (en)"
