---
layout: book
title: "Trabajo aplicado con Python: Emisiones Madrid"
description: "Análisis de las emisiones contaminantes de Madrid"
tags: [Trabajos, Python]
share: true
image: logo-python.png
---

El objetivo de este trabajo es comprobar si las restricciones de tráfico establecidas en Madrid Central han servido para reducir significativamente las emisiones de gases contaminantes.

### Conjunto de datos

Datos abiertos del Ayuntamiento de Madrid: <a href="https://datos.madrid.es/portal/site/egob/menuitem.c05c1f754a33a9fbe4b2e4b284f1a5a0/?vgnextoid=aecb88a7e2b73410VgnVCM2000000c205a0aRCRD&amp;vgnextchannel=374512b9ace9f310VgnVCM100000171f5a0aRCRD&amp;vgnextfmt=default" target="_blank">Calidad del aire. Datos diarios años 2001 a 2019</a>.

Deben usarse al menos los datos de 2018 y 2019.

### Requisitos

1. Crear una función que reciba una estación de medición y una magnitud y devuelva una lista con todas las mediciones de la magnitud en la estación.
2. Crear una función que reciba un mes y una estación de medición y devuelva un diccionario con las medias de las magnitudes medidas por la estación durante ese mes.
3. Crear una función que reciba un mes y una magnitud y devuelva un diccionario con las medias de las estaciones de medición de la magnitud durante ese mes.
4. Crear una función que reciba un rango de fechas y una estación de medición y genere un gráfico con la evolución diaria de las magnitudes de esa estación en las fechas indicadas.
5. Crear una función que reciba un rango de fechas y una magnitud y genere un gráfico con la evolución diaria de la magnitud para cada estación de medición en las fechas indicadas.
6. Crear una función que reciba una magnitud y genere un gráfico con las medias mensuales para cada estación de medición.
7. Crear una función que reciba un mes y una magnitud y devuelva un diccionario con las medias de la magnitud dentro de Madrid Central y fuera de ella.
8. Crear una función que reciba una magnitud y genere un gráfico con las medias mensuales dentro de Madrid Central y fuera de ella.

## Solución

<a href="https://colab.research.google.com/github/asalber/asalber.github.io/blob/master/python/trabajos/soluciones/emisiones-madrid.ipynb" class="btn btn-info" target="_blank">Solución</a>

Abrir con <a href="https://repl.it/@asalber/emisiones-madrid"><img src="/images/logo-replit.png" alt="Abrir con repl.it"></a>