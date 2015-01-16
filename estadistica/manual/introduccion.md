---
layout: book
title: Manual de Estadística
description: "Manual Básico de Estadística con ejemplos en R"
image: cabecera-estadistica.jpg
tags: [Estadística, R]
share: true
---

Introducción a la Estadística
=============================

La estadística como herramienta científica
------------------------------------------

### ¿Qué es la estadística?

>**Definición - Estadística**. La *estadística* es una rama de las matemáticas que se encarga de la recogida, análisis e interpretación de datos.

La estadística es imprescindible en cualquier disciplina científica o técnica donde se manejen datos, especialmente si son grandes volúmenes de datos, como por ejemplo, la física, la química, la medicina y las ciencias biosanitarias, pero también en la economía, la psicología o las ciencias sociales.

Pero, *¿por qué es necesaria la Estadística?*

### La variabilidad de nuestro mundo

El científico trata de estudiar el mundo que le rodea; un mundo que está lleno de variaciones que dificultan la determinación del comportamiento de las cosas.

La estadística actúa como disciplina puente entre la realidad del mundo y los modelos matemáticos que tratan de explicarla, proporcionando una metodología para evaluar las discrepancias entre la realidad y los modelos teóricos.

Esto la convierte en una herramienta indispensable en las ciencias aplicadas que requieran el análisis de datos y el diseño de experimentos.

Población y muestra
-------------------

### Población estadística

>**Definición - Población**.  Una *población* es un conjunto de elementos definido por una o más características que tienen todos los elementos, y sólo ellos. Cada elemento de la población se llama *individuo*.

>**Definición - Tamaño poblacional**.  El número de individuos de una población se conoce como *tamaño poblacional* y se representa como \(N\).

**Ejemplo**. En unas elecciones generales a la presidencia del gobierno, la población serían todos los individuos del estado con derecho a voto. En el estudio de una enfermedad, la población sería todas las personas que tienen la enfermedad. Y en un proceso de control de calidad en la fabricación de un fármaco,  la población estaría formada por todos los fármacos que se producen en la fábrica. 

A veces, no todos los elementos de la población están accesibles para su estudio. Entonces se distingue entre:

- *Población Teórica*: Conjunto de elementos a los que se quiere extrapolar los resultados del estudio.
- *Población Estudiada*: Conjunto de elementos realmente accesibles en el estudio.

**Ejemplo**. En el caso del estudio de una enfermedad, la población teórica sería todas las personas que contraigan la enfermedad, incluso si aún no han nacido, mientras que la población estudiada se limitaría al número de personas enfermas que realmente podemos estudiar (obsérvese que incluso quedarían fuera las personas enfermas actualmente que no supieran que lo están o a las que no pudiésemos acceder físicamente para estudiarlas). 

### Inconvenientes en el estudio de la población

El científico estudia un determinado fenómeno en una población para comprenderlo, obtener conocimiento sobre el mismo, y así poder controlarlo.

Pero, para tener un conocimiento completo de la población *es necesario estudiar todos los individuos de la misma*.

Sin embargo, esto no siempre es posible por distintos motivos:

-   El tamaño de la población es infinito, o bien es finito pero demasiado grande.

-   Las pruebas a que se someten los individuos son destructivas.

-   El coste, tanto de dinero como de tiempo, que supondría estudiar a todos los individuos es excesivo.

### Muestra estadística

Cuando no es posible o conveniente estudiar todos los individuos de la población, se estudia sólo una parte de la misma.

>**Definición - Muestra**.  Una *muestra* es un subconjunto de la población.

>**Definición - Tamaño muestral**.  Al número de individuos que componen la muestra se le llama *tamaño muestral* y se representa por \(n\).

Habitualmente, el estudio de una población se realiza a partir de muestras extraídas de dicha población.

Generalmente, el estudio de la muestra sólo aporta conocimiento aproximado de la población. Pero en muchos casos es *suficiente*.

### Determinación del tamaño muestral

Una de las preguntas más interesantes que surge inmediatamente es: *¿cuántos individuos es necesario tomar en la muestra para tener un conocimiento aproximado pero suficiente de la población?*

La respuesta depende de varios factores, como la variabilidad de la población o la fiabilidad deseada para las extrapolaciones que se hagan hacia la población. Por desgracia no se podrá responder hasta casi el final del curso.

En general, cuantos más individuos haya en la muestra, más fiables serán las conclusiones sobre la población, pero también será más lento y costoso el estudio.

**Ejemplo**. Para entender a qué nos referimos cuando hablamos de un tamaño muestral suficiente para comprender lo que ocurre en la población, podemos utilizar el siguiente símil en que se trata de comprender el motivo que representa una
fotografía. 

Una fotografía digital está formada por multitud de pequeños puntitos llamados pixels que se dispone en una enorme tabla de filas y columnas (cuantas más filas y columnas haya se habla de que la foto tiene más resolución). Aquí la población estaría formada por todos y cada uno de los pixel que forman la foto. Por otro lado cada pixel tiene un color y es la variedad de colores a lo largo de los pixels la que permite formar la imágen de la
fotografía.

Supongamos que queremos comprender el motivo de la fotografía y para ello tomamos sólo una pequeña muestra de los pixels
de ella, como esta que aparece en la pantalla. ¿Serías capaz de averiguar de qué se trata?

<div style="text-align:center">
<img src="img/introduccion/muestra_molinos1.jpg" width="400px" alt="Muestra reducida de pixels" />
</div>

*¡Con una muestra pequeña es difícil averiguar el contenido de la imagen!*

Seguramente no has podido averiguar el motivo de la fotografía, porque en este caso el número de pixels que hemos tomado en la muestra es insuficiente para comprender toda la variablidad de colores que hay en la foto. Sin embargo, si tomamos una muestra mayor, como esta otra, seguramente que ya si sabrías decir cuál es la imagen de la foto. ¿Eres capaz?

<div style="text-align:center">
<img src="img/introduccion/muestra_molinos2.jpg" width="400px" alt="Muestra mayor de pixels" />
</div>

Y aquí está la población completa.

<div style="text-align:center">
<img src="img/introduccion/muestra_molinos3.jpg" width="400px" alt="Foto de los molinos (población de pixels)" />
</div>

Efectivamente, se trata de unos molinos de viento, y si has sido capaz de averiguarlo es porque en la segunda muestra el número de pixels tomados en la muestra era suficiente para comprender el motivo de la fotografía.

Lo importante es que *¡No es necesario conocer todos los píxeles para averiguar la imagen!*

Evidentemente, cuanto mayor sea la variabilidad de colores de la fotografía, mayor será el tamaño muestral requerido para comprender el motivo de la foto, y cuanto menos variabilidad de colores haya en la foto, menos pixels habrá que tomar, hasta el punto de que en una foto donde no hubiese variabilidad de colores, es decir, donde todos los pixels tuviesen el mismo color, bastaría con tomar un pixel para conocer el motivo de la foto.


### Tipos de razonamiento

Así pues, habitualmente realizaremos el estudio de la población a partir de muestras y luego trataremos de extrapolar lo observado en la muestra al resto de la población. A este tipo de razonamiento que saca conclusiones desde la muestra hacia la población se le conoce como *razonamiento inductivo*. 

<div style="text-align:center">
<img src="img/introduccion/tipos_razonamiento.png" width="400px" alt="Muestra reducida de pixels" />
</div>

- Características de la deducción: Si las premisas son ciertas, garantiza la certeza de las conclusiones (es decir, si algo se cumple en la población, también se cumple en la muestra). Sin embargo, *¡no aporta conocimiento nuevo!*

- Características de la inducción: No garantiza la certeza de las conclusiones (si algo se cumple en la muestra, puede que no se cumpla en la población, así que ¡cuidado con las extrapolaciones!), pero *¡es la única forma de generar conocimiento nuevo!*

La estadística se apoya fundamentalmente en el razonamiento inductivo ya que utiliza la información obtenida a partir de muestras para sacar conclusiones sobre las poblaciones. A diferencia del razonamiento deductivo que va de lo general a lo particular, o en nuestro caso de la población a la muestra, el razonamiento inductivo no garantiza la certeza de las conclusiones, por lo que debemos ser cuidadosos a la hora de generalizar sobre la población lo observado en al muestra, ya que si la muestra no es representativa de la población o contiene sesgos, las conclusiones pueden ser erróneas.

Muestreo
--------

### Muestreo

>**Definición - Muestreo** El proceso de selección de los elementos que compondrán una muestra se conoce como *muestreo*.

<div style="text-align:center">
<img src="img/introduccion/muestreo.png" width="400px" alt="Muestra reducida de pixels" />
</div>

Para que una muestra refleje información fidedigna sobre la población global debe ser representativa de la misma.

### Modalidades de muestreo

Existen muchas técnicas de muestreo pero se pueden agrupar en dos categorías:

- *Muestreo Aleatorio*: Elección aleatoria de los individuos de la muestra. Todos tienen la misma probabilidad de ser elegidos (*equiprobabilidad*).

- *Muestreo No Aleatorio*: Los individuos se eligen de forma no aleatoria.

Sólo las técnicas aleatorias evitan el sesgo de selección, y por tanto, garantizan la representatividad de la muestra extraída, y en consecuencia la validez de la inferencia.

Las técnicas no aleatorias no sirven para hacer generalizaciones, ya que no garantizan la representatividad de la muestra. Sin embargo, son menos costosas y pueden utilizarse en estudios exploratorios.

### Muestreo aleatorio simple

Dentro de las modalidades de muestreo aleatorio, el tipo más conocido es el *muestreo aleatorio simple*, caracterizado por:

-   Todos los individuos de la población tienen la misma probabilidad de ser elegidos para la muestra.

-   La selección de individuos es con reemplazamiento (y por tanto no se altera la población de partida).

-   Las sucesivas selecciones de un individuo son independientes.

La única forma de realizar un muestreo aleatorio es asignar un número a cada individuo de la población (*censo*) y realizar un sorteo aleatorio.

Variables estadísticas
----------------------

Todo estudio estadístico comienza por la identificación de las características que interesa estudiar en la población y que se medirán en los individuos de la muestra. Estas características pueden ser de dos tipos según sean de naturaleza cuantitativa o cualitativa, es decir, si miden cantidades o cualidades:

- **Atributos**: De carácter cualitativo. A su vez, se dividen en 
	-- **Nominales**: No existe un orden entre las modalidades. Ejemplo: El color de ojos o de pelo.
	-- **Ordinales**: Existe un orden entre las modalidades. Ejemplo: El grado de gravedad de un paciente o la calificación de un curso.
- **Variables estadísticas**: De carácter cuantitativo. A su vez, se dividen en
	-- **Discretas**: Reciben valores aislados (suelen ser números enteros). Ejemplo: El número de hijos o el número de coches.
	-- **Continuas**: Pueden recibir cualquier valor de un intervalo real. Ejemplo: El peso o la estatura.

### La matriz de datos

Las variables o atributos a estudiar se medirán en cada uno de los individuos de la muestra, obteniendo un conjunto de datos que suele organizarse en forma de matriz que se conoce como *matriz de datos*.

En esta matriz cada columna contiene la información de una variable y cada fila la información de un individuo.

**Ejemplo**

$$
\begin{array}{|l|c|c|c|c|}
\hline
\text{Nombre} & \text{Edad (años)} & \text{Sexo} & \text{Peso (Kg)} & \text{Altura (cm)}\\
\hline
\text{José Luis Martínez} & 18 & H &  85 & 179 \\
\text{Rosa Díaz} & 32 & \text{M} & 65 & 173 \\
\text{Javier García} & 24 & \text{H} & 71 & 181 \\
\text{Carmen López} & 35 & \text{M} &  65 & 170 \\
\text{Marisa López}  & 46 & \text{M} &  51 & 158 \\
\text{Antonio Ruiz} & 68 & \text{H} & 66 & 174 \\
\hline
\end{array}
$$

Fases del análisis estadístico
------------------------------

### Fases del análisis estadístico

Normalmente un estudio estadístico pasa por las siguientes etapas:

1.  El estudio comienza por el diseño previo del mismo en el que se establezcan los objetivos del mismo, se determinen de las variables que se medirán en los individuos de la población y cuáĺ será el tamaño muestral requerido.

2.  A continuación se seleccionará una muestra representativa del tamaño establecido. De esto se encarga el **muestreo**.

3.  El siguiente paso consiste en estudiar las muestras extraídas y obtener resultados numéricos que resuman la información contenida en las mismas. De esto se encarga la **estadística descriptiva**.

4.  La información obtenida es proyectada sobre un modelo matemático que intenta reflejar el comportamiento de la población. Tras construir el modelo, se realiza una crítica del mismo para validarlo. De todo esto se encarga la **inferencia estadística**.

5.  Finalmente, el modelo validado nos permite hacer suposiciones y predicciones sobre la población de partida con cierta confianza.

### El ciclo estadístico

<div style="text-align:center">
<img src="img/introduccion/ciclo_estadistico.png" width="400px" alt="Muestra reducida de pixels" />
</div>

