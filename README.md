# Web académica bilingüe (ES/EN) con Quarto — estilo ALA Labs

Web personal académica con la estética de [ALA Labs](https://labs.ala.org.au/)
y soporte bilingüe español/inglés con menú de idioma (🌐) en la barra principal.

## Cómo funciona el bilingüismo

Quarto no soporta sitios multilingües de forma nativa, así que se usan
**dos proyectos Quarto**:

- **Raíz** → sitio en español, publicado en `/` (`_site/`).
- **`en/`** → proyecto anidado con el sitio en inglés, publicado en `/en/`
  (`_site/en/`, mediante `output-dir: ../_site/en`).

Cada idioma tiene su propio `_quarto.yml` con su navbar traducida, su `lang`
(mejora accesibilidad y SEO) y su buscador independiente. El menú 🌐 de la
navbar enlaza la raíz de cada versión.

## Renderizado

```bash
./render.sh                              # renderiza ambos idiomas (¡usa siempre este script!)
python3 -m http.server -d _site 8000     # probar en http://localhost:8000
```

⚠️ El orden importa: el render del español limpia `_site/` por completo, por lo
que el inglés debe renderizarse después (el script ya lo hace así).
`quarto preview` solo previsualiza un idioma a la vez (ejecútalo en la raíz o en `en/`).

## Estructura

```
├── _quarto.yml           # sitio ESPAÑOL (navbar ES + menú idioma)
├── index.qmd, post/, docencia/, proyectos/, publicaciones/ ...
├── styles.scss, index.css, images/
├── en/                   # sitio INGLÉS (proyecto Quarto anidado)
│   ├── _quarto.yml       # navbar EN + menú idioma, output-dir: ../_site/en
│   ├── index.qmd, post/, teaching/, projects/, publications/ ...
│   └── styles.scss, index.css, images/   (copias de los recursos compartidos)
└── render.sh
```

## Mantenimiento

- Al añadir contenido, crea la página en ambos árboles (p. ej. `post/mi-post/`
  y `en/post/my-post/`). No es obligatorio traducirlo todo: cada sitio es independiente.
- Si cambias `styles.scss`, `index.css` o imágenes compartidas, copia los cambios
  a `en/` (o crea un script de sincronización con `rsync`).
- Los enlaces del menú de idioma llevan a la portada del otro idioma. Si quieres
  que cada página enlace con su traducción exacta, mira el paquete de R
  [babelquarto](https://docs.ropensci.org/babelquarto/), que automatiza este patrón.

## Publicación

Con GitHub Pages, publica la carpeta `_site` completa tras ejecutar `./render.sh`
(por ejemplo con una GitHub Action, o `quarto publish gh-pages --no-render` tras
renderizar). ⚠️ Los enlaces del menú de idioma usan rutas absolutas (`/` y `/en/`):
si publicas en un subdirectorio (p. ej. `usuario.github.io/repo/`), cámbialas por
`/repo/` y `/repo/en/`.
