---
layout: book
title: Manual de Python
description: "La librería Pandas"
tags: [Manual, Python, Programación]
share: true
image: logo-python.png
---

## La librería Pandas

[Pandas](https://pandas.pydata.org) es una librería de Python especializada en el manejo y análisis de estructuras de datos.

Las principales características de esta librería son:

- Define el tipo de objetos`DataFrame` para manejar conjuntos de datos.
- Permite leer y escribir facilmente ficheros en formato CSV, Excel y bases de datos SQL.
- Ofrece métodos para reordenar, dividir y combinar conjuntos de datos.
- Permite trabajar con series temporales.
- Ofrece un rendimiento muy eficiente.

![Logo librería Pandas](img/pandas-logo.png)

### La clase de objetos DataFrame

Un objeto del tipo `DataFrame` define un conjunto de datos estructurado en forma de tabla donde las columnas suelen contener datos de variables, es decir, todos los datos de una misma columna son del mismo tipo, y las filas de individuos que pueden contender datos de distintos tipos.

| Nombre    | Edad | Grado          | Correo              |
| :-------- | :--- | :------------- | :------------------ |
| 'María'   | 18   | 'Economía'     | 'maria@gmail.com'   |
| 'Luis     | 22   | 'Medicina'     | 'luis@yahoo.es'     |
| 'Carmen'  | 20   | 'Arquitectura' | 'carmen@gmail.com'  |
| 'Antonio' | 21   | 'Economía'     | 'antonio@gmail.com' |

### Creación de un DataFrame a partir de un diccionario

`DataFrame(diccionario)` : Crea un objeto del tipo DataFrame con los datos del diccionario `diccionario`. Las claves del diccionario serán los nombres de las columnas, mientras que los valores asociados a las claves serán listas con los valores de las columnas.

```python
>>> import pandas as pd
>>> datos = {'nombre':['María', 'Luis', 'Carmen', 'Antonio'],
... 'edad':[18, 22, 20, 21],
... 'grado':['Economía', 'Medicina', 'Arquitectura', 'Economía'],
... 'correo':['maria@gmail.com', 'luis@yahoo.es', 'carmen@gmail.com', 'antonio@gmail.com']
... }
>>> df = pd.DataFrame(datos)
>>> print(df)
    nombre  edad         grado             correo
0    María    18      Economía    maria@gmail.com
1     Luis    22      Medicina      luis@yahoo.es
2   Carmen    20  Arquitectura   carmen@gmail.com
3  Antonio    21      Economía  antonio@gmail.com
```

### Importación de ficheros

Dependiendo del tipo de fichero, existen distintas funciones para importar un DataFrame desde un fichero.

`read_csv(fichero.csv, delimitador)` : Devuelve un objeto del tipo DataFrame con los datos del fichero CSV `fichero.csv` usando como separador de los datos la cadena `delimitador`.

`read_excel(fichero.xlsx, hoja)` : Devuelve un objeto del tipo DataFrame con los datos de la hoja de cálculo `hoja` del fichero Excel `fichero.xlx`.

```python
>>> import pandas as pd
>>> # Importación del fichero datos-colesterol.csv
>>> df = pd.read_csv(
'https://raw.githubusercontent.com/asalber/manual-python/master/datos/colesterol.csv')
>>> print(df.head())
                              nombre  edad sexo  peso  altura  colesterol
0       José Luis Martínez Izquierdo    18    H    85     179         182
1                     Rosa Díaz Díaz    32    M    65     173         232
2              Javier García Sánchez    24    H    71     181         191
3                Carmen López Pinzón    35    M    65     170         200
4               Marisa López Collado    46    M    51     158         148
```

### Exportación de ficheros

También existen funciones para exportar un DataFrame a un fichero con diferentes formatos.

`df.to_csv(fichero.csv, delimitador)` : Exporta el DataFrame `df` al fichero `fichero.csv` en formato CSV usando como separador de los datos la cadena `delimitador`.

`df.to_excel(fichero.xlsx, sheet_name = hoja)` : Exporta el DataFrame `df` a la hoja de cálculo `hoja` del fichero `fichero.xlsx` en formato Excel.

### Atributos de un DataFrame

Existen varias propiedades o métodos para ver las características de un DataFrame.

`df.info()` : Devuelve información (número de filas, número de columnas, nombre y tipo de las columnas y memoria usado) sobre el DataFrame `df`.

`df.shape` : Devuelve una tupla con el número de filas y columnas del DataFrame `df`.

`df.columns` : Devuelve el nombre de las columnas del DataFrame `df`.

`df.head()` : Devuelve las 5 primeras filas del DataFrame `df`.

`df.tails()` : Devuelve las 5 últimas filas del DataFrame `df`.

### Acceso a los elementos de un DataFrame mediante índices

El acceso a los datos de un DataFrame se puede hacer a través de índices o través de los nombres de las filas y columnas.
Para acceder a los elementos de un DataFrame mediante índices se utiliza un método similar al de las listas o arrays.

`df.iloc[i, j]` : Devuelve el elemento que se encuentra en la fila `i` y la columna `j` del DataFrame `df`. Puede indicarse secuencias de índices para obtener partes del DataFrame.

`df.iloc[i]` : Devuelve la fila `i` del DataFrame `df`.

```python
>>> import pandas as pd
>>> df = pd.read_csv(
'https://raw.githubusercontent.com/asalber/manual-python/master/datos/colesterol.csv')
>>> print(df.iloc[1, 3])
65
>>> print(df.iloc[1, :2])
nombre     Rosa Díaz Díaz
edad                   32
```

### Acceso a los elementos de un DataFrame mediante nombres

`df.loc[fila, columna]` : Devuelve el elemento que se encuentra en la fila de nombre `fila` y la columna de nombre `columna` del DataFrame `df`.

`df[columna]` : Devuelve los elementos de la columna de nombre `columna` del DataFrame `df`.

```python
>>> import pandas as pd
>>> df = pd.read_csv(
'https://raw.githubusercontent.com/asalber/manual-python/master/datos/colesterol.csv')
>>> print(df.loc[2, 'colesterol']
191
>>> print(df.loc[:3, ('colesterol','peso')])
   colesterol  peso
1         232    65
2         191    71
3         200    65
>>> print(df['colesterol'])
0     182
1     232
2     191
3     200
...
```

### Operaciones sobre columnas

Puesto que los datos de una misma columna de un DataFrame tienen que ser del mismo tipo, es fácil aplicar la misma operación a todos los elementos de la columna.

```python
>>> import pandas as pd
>>> df = pd.read_csv(
'https://raw.githubusercontent.com/asalber/manual-python/master/datos/colesterol.csv')
>>> print(df['altura']/100)
0     1.79
1     1.73
2     1.81
...

>>> print(df['sexo']=='M')
0     False
1      True
2     False
...

```

### Aplicar funciones a columnas

Para aplicar funciones a todos los elementos de una columna se utiliza el método

`df[columna].apply(f)` : Devuelve una secuencia con los valores que resulta de aplicar la función `f` a los elementos de la columna de nombre  `columna` del DataFrame `df`.

```python
>>> import pandas as pd
>>> from math import log
>>> df = pd.read_csv(
'https://raw.githubusercontent.com/asalber/manual-python/master/datos/colesterol.csv')
>>> print(df['altura'].apply(log))
0     5.187386
1     5.153292
2     5.198497
...
```

### Filtrado de un DataFrame

Una operación bastante común con un DataFrame es obtener las filas que cumplen una determinada condición.

`df[condicion]` : Devuelve un DataFrame con las filas del DataFrame `df` que se corresponden con el valor `True` de la secuencia booleana `condicion`. `condicion` debe ser una secuencia de valores booleanos de la misma longitud que el número de filas del DataFrame.

```python
>>> import pandas as pd
>>> df = pd.read_csv(
'https://raw.githubusercontent.com/asalber/manual-python/master/datos/colesterol.csv')
>>> print(df[(df['sexo']=='H') & (df['colesterol'] > 260)])
                     nombre  edad sexo  peso  altura  colesterol
6   Antonio Fernández Ocaña    51    H    62     172         276
9   Santiago Reillo Manzano    46    H    75     185         280
```

## Eliminar filas y columnas de un DataFrame

Para eliminar filas y columnas de un DataFrame se utiliza el método

`df.drop(filas)` : Devuelve el DataFrame que resulta de eliminar las filas con los nombres indicados en la secuencia `filas` del DataFrame `df`.

`df.drop(columnas, axis=1)` : Devuelve el DataFrame que resulta de eliminar las columnas con los nombres indicados en la secuencia `columnas` del DataFrame `df`.

```python
>>> import pandas as pd
>>> df = pd.read_csv(
'https://raw.githubusercontent.com/asalber/manual-python/master/datos/colesterol.csv')
>>> print(df.drop([1, 3]))
0       José Luis Martínez Izquierdo    18    H    85     179         182
2              Javier García Sánchez    24    H    71     181         191
4               Marisa López Collado    46    M    51     158         148
...
>>> print(df.drop(['peso', 'altura'], axis=1))
0       José Luis Martínez Izquierdo    18    H         182
1                     Rosa Díaz Díaz    32    M         232
2              Javier García Sánchez    24    H         191
...
```

### Ordenar un DataFrame

Para ordenar un DataFrame de acuedo a los valores de una determinada columna se utiliza el método

`df.sort_values(columna)` : Devuelve el DataFrame que resulta de ordenar ascendentemente el DataFrame `df` según los valores del la columna `columna`.

`df.sort_values(columna, ascending=False)` : Devuelve el DataFrame que resulta de ordenar descendentemente el DataFrame `df` según los valores del la columna `columna`.  

```python
>>> import pandas as pd
>>> df = pd.read_csv(
'https://raw.githubusercontent.com/asalber/manual-python/master/datos/colesterol.csv')
print(df.sort_values('colesterol'))
                              nombre  edad sexo  peso  altura  colesterol
4               Marisa López Collado    46    M    51     158         148
0       José Luis Martínez Izquierdo    18    H    85     179         182
2              Javier García Sánchez    24    H    71     181         191
13             Carolina Rubio Moreno    20    M    61     177         194
...
```

### Reestructurar un DataFrame: Convertir columnas en filas

A menudo la disposición de los datos en un DataFrame no es la adecuada para su tratamiento y es necesario reestructurar el DataFrame.

Para convertir columnas en filas se utiliza el método

`df.melt(id_vars, var_name, var_value)`

```python
>>> import pandas as pd
>>> datos = {'nombre':['María', 'Luis', 'Carmen'],
... 'edad':[18, 22, 20],
... 'Matemáticas':[8.5, 7, 3.5],
... 'Física':[8, 6.5, 5],
... 'Química':[6.5, 4, 9]}
>>> df = pd.DataFrame(datos)
>>> df1 = df.melt(id_vars=['nombre', 'edad'], var_name='asignatura', value_name='nota')
>>> print(df1)
   nombre  edad   asignatura  nota
0   María    18  Matemáticas   8.5
1    Luis    22  Matemáticas   7.0
2  Carmen    20  Matemáticas   3.5
3   María    18       Física   8.0
4    Luis    22       Física   6.5
5  Carmen    20       Física   5.0
6   María    18      Química   6.5
7    Luis    22      Química   4.0
8  Carmen    20      Química   9.0
```

### Reestructurar un DataFrame: Convertir filas en columnas

Para convertir columnas en filas se utiliza el método

`df.pivot(index, columns, values)`

```python
# Continuación del código anterior
>>> print(df1.pivot(index='nombre', columns='asignatura', values='nota'))
asignatura  Física  Matemáticas  Química
nombre                                  
Carmen         5.0          3.5      9.0
Luis           6.5          7.0      4.0
María          8.0          8.5      6.5
```
