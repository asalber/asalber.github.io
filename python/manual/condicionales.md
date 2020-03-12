---
layout: book
title: Manual de Python
description: "Condicionales"
tags: [Manual, Python, Programación]
share: true
image: logo-python.png
---

## Condicionales (`if`)

> `if` <code>condición1:  
&ensp;&ensp;&ensp;&ensp;_bloque código_  
`elif` condición2:  
&ensp;&ensp;&ensp;&ensp;_bloque código_  
...  
`else`:  
&ensp;&ensp;&ensp;&ensp;_bloque código_

Evalúa la expresión lógica `condición1` y ejecuta el primer bloque de código si es `True`; si no, evalúa la siguientes condiciones hasta llegar a la primera que es `True` y ejecuta el bloque de código asociado. Si ninguna condición es `True` ejecuta el bloque de código después de `else:`.

Pueden aparecer varios bloques `elif` pero solo uno `else` al final.

<i class="fa fa-exclamation-triangle" style="color:red;"></i> _Los bloques de código deben estar indentados por 4 espacios._

La instrucción condicional permite evaluar el estado del programa y tomar decisiones sobre qué código ejecutar en función del mismo.

```python
>>> edad = 14
>>> if edad <= 18 : 
...     print('Menor')
... elif edad > 65:
...     print('Jubilado')
... else:
...     print('Activo')
...
Menor
>>> age = 20
>>> if edad <= 18 : 
...     print('Menor')
... elif edad > 65:
...     print('Jubilado')
... else:
...     print('Activo')
...
Activo
```