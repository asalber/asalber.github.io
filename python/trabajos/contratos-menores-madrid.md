---
layout: book
title: "Trabajo aplicado con Python: Contratos Menores Madrid"
description: "Análisis de los contratos menores del Ayuntamiento de Madrid"
tags: [Trabajos, Python]
share: true
image: logo-python.png
---

El objetivo de este trabajo es hacer un análisis de los contratos menores del Ayuntamiento de Madrid desde 2015 para hacer una comparativa por años y ver qué empresas han resultado más beneficiadas.

### Conjunto de datos

Datos abiertos del Ayuntamiento de Madrid: <a href="https://datos.madrid.es/portal/site/egob/menuitem.c05c1f754a33a9fbe4b2e4b284f1a5a0/?vgnextoid=c331ef300ebe5610VgnVCM1000001d4a900aRCRD&amp;vgnextchannel=374512b9ace9f310VgnVCM100000171f5a0aRCRD&amp;vgnextfmt=default" target="_blank">Contratos menores</a>.

Deben usarse los datos desde 2015.

### Requisitos obligatorios

- Crear una función que reciba una empresa y una lista de años y devuelva un diccionario con el número de contratos y el total facturado por la empresa esos años.
- Crear una función que reciba una sección y una lista de años y devuelva un diccionario con el número de contratos y el total facturado a la sección esos años.
- Crear una función que reciba una empresa, una sección y una lista de años y devuelva un diccionario con el número de contratos y el total facturado por la empresa a la sección esos años.
- Crear una función que reciba una rango de años y un número entero n e imprima la lista de las n empresas que más han facturado durante esos años ordenadas de mayor a menor facturación y genere un gráfico con esa información.
- Crear una función reciba una rango de años y un número entero n y genere un gráfico con la evolución anual del total facturado por las n empresas que más han facturado.
- Crear una función reciba una rango de años y genere un gráfico con la evolución anual del total facturado a las secciones.

<a href="https://github.com/asalber/contratos-menores-madrid" class="btn btn-info">Solución</a>

<iframe height="400px" width="100%" src="https://repl.it/@asalber/contratos-menores-madrid?lite=true" scrolling="no" frameborder="no" allowtransparency="true" allowfullscreen="true" sandbox="allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-modals"></iframe>
