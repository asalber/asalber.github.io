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

### Requisitos obligatorios

- Crear una función que reciba una estación de medición y una magnitud y devuelva una lista con todas las mediciones de la magnitud en la estación.
- Crear una función que reciba un mes y una estación de medición y devuelva un diccionario con las medias de las magnitudes medidas por la estación durante ese mes.
- Crear una función que reciba un mes y una magnitud y devuelva un diccionario con las medias de las estaciones de medición de la magnitud durante ese mes.
- Crear una función que reciba un rango de fechas y una estación de medición y genere un gráfico con la evolución diaria de las magnitudes de esa estación en las fechas indicadas.
- Crear una función que reciba un rango de fechas y una magnitud y genere un gráfico con la evolución diaria de la magnitud para cada estación de medición en las fechas indicadas.
- Crear una función que reciba una magnitud y genere un gráfico con las medias mensuales para cada estación de medición.

### Requisitos opcionales

- Crear una función que reciba un mes y una magnitud y devuelva un diccionario con las medias de la magnitud dentro de Madrid Central y fuera de ella.
- Crear una función que reciba una magnitud y genere un gráfico con las medias mensuales dentro de Madrid Central y fuera de ella.

<a href="https://github.com/asalber/emisiones-madrid" class="btn btn-info">Solución</a>

<iframe height="400px" width="100%" src="https://repl.it/@asalber/emisiones-madrid?lite=true" scrolling="no" frameborder="no" allowtransparency="true" allowfullscreen="true" sandbox="allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-modals"></iframe>
