---
layout: book
title: "Ejercicios de Python: La librería Pandas"
description: "Colección de ejercicios resueltos"
tags: [Ejercicios, Python, Pandas]
share: true
image: logo-python.png
---

## Ejercicio 1

Escribir un programa que pregunte al usuario por las ventas de un rango de años y muestre por pantalla una serie con los datos de las ventas indexada por los años, antes y después de aplicarles un descuento del 10%.

<a href="https://colab.research.google.com/github/asalber/asalber.github.io/blob/master/python/ejercicios/soluciones/pandas/ejercicio1.ipynb" class="btn btn-info">Solución</a>

## Ejercicio 2

Escribir una función que reciba una diccionario con las notas de los alumnos en curso en un examen y devuelva una serie con la nota mínima, la máxima, media y la desviación típica.

<a href="https://colab.research.google.com/github/asalber/asalber.github.io/blob/master/python/ejercicios/soluciones/pandas/ejercicio2.ipynb" class="btn btn-info">Solución</a>

## Ejercicio 3

Escribir una función que reciba una diccionario con las notas de los alumnos en curso en un examen y devuelva una serie con las notas de los alumnos aprobados ordenadas de mayor a menor.

<a href="https://colab.research.google.com/github/asalber/asalber.github.io/blob/master/python/ejercicios/soluciones/pandas/ejercicio3.ipynb" class="btn btn-info">Solución</a>

## Ejercicio 4

Escribir programa que genere y muestre por pantalla un DataFrame con los datos de la tabla siguiente:

| Mes     | Ventas | Gastos |
| ------- | -----: | -----: |
| Enero   |  30500 |  22000 |
| Febrero |  35600 |  23400 |
| Marzo   |  28300 |  18100 |
| Abril   |  33900 |  20700 |

<a href="https://colab.research.google.com/github/asalber/asalber.github.io/blob/master/python/ejercicios/soluciones/pandas/ejercicio4.ipynb" class="btn btn-info">Solución</a>

## Ejercicio 5

Escribir una función que reciba un DataFrame con el formato del ejercicio anterior, una lista de meses, y devuelva el balance (ventas - gastos) total en los meses indicados.

<a href="https://colab.research.google.com/github/asalber/asalber.github.io/blob/master/python/ejercicios/soluciones/pandas/ejercicio5.ipynb" class="btn btn-info">Solución</a>

## Ejercicio 6
El fichero [`cotizacion.csv`](soluciones/pandas/cotizacion.csv) contiene las cotizaciones de las empresas del IBEX35 con las siguientes columnas: `nombre` (nombre de la empresa), `Final` (precio de la acción al cierre de bolsa), `Máximo` (precio máximo de la acción durante la jornada), `Mínimo` (precio mínimo de la acción durante la jornada), `volumen` (Volumen al cierre de bolsa), `Efectivo` (capitalización al cierre en miles de euros). Construir una función que construya un DataFrame a partir del un fichero con el formato anterior y devuelva otro DataFrame con el mínimo, el máximo y la media de dada columna.

<a href="https://colab.research.google.com/github/asalber/asalber.github.io/blob/master/python/ejercicios/soluciones/pandas/ejercicio6.ipynb" class="btn btn-info">Solución</a>

## Ejercicio 7

El fichero [titanic.csv](soluciones/pandas/titanic.csv) contiene información sobre los pasajeros del Titanic. Escribir un programa con los siguientes requisitos:

1. Generar un DataFrame con los datos del fichero.
2. Mostrar por pantalla las dimensiones del DataFrame, el número de datos que contiene, los nombres de sus columnas y filas, los tipos de datos de las columnas, las 10 primeras filas y las 10 últimas filas
3. Mostrar por pantalla los datos del pasajero con identificador 148.
4. Mostrar por pantalla las filas pares del DataFrame.
5. Mostrar por pantalla los nombres de las personas que iban en primera clase ordenadas alfabéticamente.
6. Mostrar por pantalla el porcentaje de personas que sobrevivieron y murieron.
7. Mostrar por pantalla el porcentaje de personas que sobrevivieron en cada clase.
8. Eliminar del DataFrame los pasajeros con edad desconocida.
9. Mostrar por pantalla la edad media de las mujeres que viajaban en cada clase.
10. Añadir una nueva columna booleana para ver si el pasajero era menor de edad o no.
11. Mostrar por pantalla el porcentaje de menores y mayores de edad que sobrevivieron en cada clase.

<a href="https://colab.research.google.com/github/asalber/asalber.github.io/blob/master/python/ejercicios/soluciones/pandas/ejercicio7.ipynb" class="btn btn-info">Solución</a>

