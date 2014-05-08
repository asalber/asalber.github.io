---
layout: software
title: RKTeaching
description: "Un paquete de R para la enseñanza de Estadística"
modified: 2014-04-10
tags: [Estadística, R, RKTeaching, RKWard]
comments: true
share: true
---

## ¿Qué es RKTeaching?

RKTeaching es un paquete de [R] (http://www.r-project.org/) que proporciona un
plugin para la interfaz gráfica [RKWard] (http://rkward.sourceforge.net/)
añadiendo nuevos menús y cuadros de diálogo especialmente diseñandos para la
enseñanza de Estadística.

El paquete ha sido desarrollado y es mantenido por Alfredo Sánchez Alberca
<asalber@ceu.es> del Departamento de Matemáticas de la Universidad San
Pablo CEU de Madrid.

Si descubre algún error o tiene cualquier sugerencia, por favor, envíeselo por
correo al autor o bien indíquelo como un [issue en Github]
(https://github.com/asalber/rkTeaching_es/issues).


## Instalación

### Instalación en Windows
Para usuarios de plataformas Windows existe un programa de instalación que incluye R, RKWard y RKTeaching.

[Descarga del programa de instalación](https://dl.dropboxusercontent.com/u/22910525/RKWard.exe)

Una vez descargado el fichero, sólo hay que ejecutarlo para descomprimirlo. 
Al ejecutarse aparecerá un cuadro de diálogo donde preguntará por la unidad y el directorio de instalación y es importante indicar que se instale en la carpeta raíz del disco duro C, es decir en la dirección C:\, tras esto se creará una carpeta rkward dentro de la cual habrá un acceso directo que permitirá arrancar RKWard.

El siguiente vídeo muestra el proceso de instalación.

<iframe src="//www.youtube.com/embed/BrqFyfNO9RM" width="640" height="360" allowfullscreen frameborder="0"></iframe> 

### Instalación en Mac Os
Para instalar el sotware en plataformas Mac Os debe instalarse cada programa por separado con el siguiente orden:

1. **Instalar R**. R puede descargarse desde la página <http://cran.es.r-project.org/>. 
Debe seleccionarse la distribución correspondiente a Mac Os y seguir las instrucciones de instalación que allí se especifican. 
Es necesario que la versión de R sea la 3.0 o superior.

2. **Instalar RKWard**. RKWard puede descargarse desde la página <http://rkward.sourceforge.net>. 
Debe seleccionarse la distribución correspondiente a Mac Os (<http://sourceforge.net/projects/rkwardextras/files/MacOSX/needs_CRAN_R/RKWard-0.6.1-svn4704_KDE-4.10.1_needs_CRAN_R-3.0.0.dmg/download>) y seguir las instrucciones de instalación que allí se especifican. 
Es importante asegurase de tener una versión de Mac OS X Lion (10.7) o superior, ya que RKWard no funciona con versiones anteriores. 

	El siguiente vídeo muestra el proceso de instalación.

	<iframe src="//www.youtube.com/embed/2t4zUOlgPG8" width="640" height="360" frameborder="0"> </iframe> 

3. **Instalar los paquetes de los que depende RKTeaching**. Para instalar RKTeaching primero hay que instalar los paquetes de R de los que depende. 
Para ello, hay que ejecutar R en línea de comandos, o bien arrancar RKWard e ir a la solapa de la Consola de R (R console) e introducir los siguientes comandos:
	
	<pre><code>install.packages(c("R2HTML","car","e1071","Hmisc","plyr","ggplot2","ez"),dep=TRUE)</code></pre>

4. **Instalar RKTeaching**. La mejor forma de instalar RKTeaching desde este repositorio es utilizando el paquete de R `devtools`. 
Para ello hay que introducir los siguientes comandos en la consola de R: 

	<pre><code>install.packages("devtools")
library(devtools)
install_github("asalber/rkTeaching_es")
</code></pre>
	
	El siguiente vídeo muestra el proceso de instalación.

	<iframe src="//www.youtube.com/embed/vQa4umDJko8" width="640" height="360" frameborder="0"> </iframe> 

### Instalación en Linux
	
Para instalar el sotware en plataformas Linux debe instalarse cada programa por separado con el siguiente orden:

1. **Instalar R**. R puede descargarse desde la página <http://cran.es.r-project.org/>. 
Debe seleccionarse la distribución correspondiente a Linux y seguir las instrucciones de instalación que allí se especifican. 
Es necesario que la versión de R sea la 3.0 o superior.

	En sistemas Debian y Ubuntu, puede instalarse desde la línea de comandos con el comando:
    <pre><code>sudo apt-get install rbase</code></pre>

2. **Instalar RKWard**. RKWard puede descargarse desde la página <http://rkward.sourceforge.net>. 
Debe seleccionarse la distribución correspondiente a Linux y seguir las instrucciones de instalación que allí se especifican.

	En sistemas Debian y Ubuntu, puede instalarse desde la línea de comandos con el comando:
	<pre><code>sudo apt-get install rkward</code></pre>
    Es importante asegurarse de que la versión instalada es la 0.6.1 o superior.
    
3. **Instalar los paquetes de los que depende RKTeaching**. Para instalar RKTeaching primero hay que instalar los paquetes de R de los que depende. 
Para ello, hay que ejecutar R en línea de comandos, o bien arrancar RKWard e ir a la solapa de la Consola de R (R console) e introducir los siguientes comandos:
	
	<pre><code>install.packages(c("R2HTML","car","e1071","Hmisc","plyr","ggplot2","ez"),dep=TRUE)</code></pre>

4. **Instalar RKTeaching**. La mejor forma de instalar RKTeaching desde este repositorio es utilizando el paquete de R `devtools`. 
Para ello hay que introducir los siguientes comandos en la consola de R: 

	<pre><code>install.packages("devtools")
library(devtools)
install_github("asalber/rkTeaching_es")
</code></pre>
	
	El siguiente vídeo muestra el proceso de instalación.

	<iframe src="//www.youtube.com/embed/vQa4umDJko8" width="640" height="360" frameborder="0"> </iframe> 	
	
## Procedimientos estadísticos
Una vez instalado, al arrancar RKWard aparecerá un nuevo menú `Teaching` con los siguientes procedimientos estadísticos:

-	Manipulación de datos
	
	-   Filtrar datos
	-   Calcular variable
	-   Recodificar variable
	-   Ponderar datos
	-   Tipificar variables
	
-	Distribución de frecuencias
	
	-   Tablas de frecuencias
	-   Tablas de frecuencias bidimensionales
	
-	Gráficos
	
	-   Diagrama de barras
	-   Histograma
	-   Diagrama de sectores
	-   Diagrama de caja
	-   Diagrama de medias
	-   Diagrama de interacción
	-   Diagrama de dispersión
	-   Matriz de dispersión
	
-	Estadística descriptiva
	
	-   Estadísticos
	-   Estadísticos (cálculo detallado)
	
-	Regresión
	
	-   Regresión lineal
	-   Regresión no lineal
	-   Comparación de modelos
	-   Predicciones
	-   Correlación
	
-	Test paramétricos
	
	-	Medias
		
		-   Test T para una muestra
		-   Test T para dos muestras independientes
		-   Test T para dos muestras pareadas
		-   ANOVA
		-   Cálculo del tamaño muestral para la media
		-   Cálculo del tamaño muestral para el test T
		
	-	Varianzas
		
		-   Test F de Fisher
		-   Test de Levene
		
	-	Proporciones
		
		-   Test para una proporción
		-   Test para dos proporciones
		-   Cálculo del tamaño muestral para una proproción
	
-	Test no paramétricos
	
	-	Normalidad
		
		-   Test de Lilliefors (Komogorov-Smirnov)
		-   Test de Shapiro-Wilk
		
	-	Test U de Mann-Whitney para dos muestas independientes
		
	-	Test de Wilcoxon para dos muestras pareadas
		
	-	Test de Kruskal-Wallis para varias muestras independientes
		
	-	Test de Friedman para medidas repetidas
		
	-	Test Chi-cuadrado de independencia
		
	-	Test Chi-cuadrado de bondad de ajuste
	
-	Concordancia
	
	-   Coeficiente de correlación intraclase
	-   Kappa de Cohen
	
-	Distribuciones de probabilidad
	
	-	Distribuciones discretas
		
		-	Binomial
			
			-   Probabilidades
			-   Cuantiles
			-   Gráfico de probabilidad
			
		-	Poisson
			
			-   Probabilidades
			-   Cuantiles
			-   Gráfico de probabilidad
			
	-	Distribuciones continuas
		
		-	Chi-cuadrado
			
			-   Probabilidades
			-   Cuantiles
			-   Gráfico de probabilidad
			
		-	F de Fisher
			
			-   Probabilidades
			-   Cuantiles
			-   Gráfico de probabilidad
			
		-	Normal
			
			-   Probabilidades
			-   Cuantiles
			-   Gráfico de probabilidad
			
		-	T de student
			
			-   Probabilidades
			-   Cuantiles
			-   Gráfico de probabilidad
			
		-	Uniforme continua
			
			-   Probabilidades
			-   Cuantiles
			-   Gráfico de probabilidad
			
-	Simulaciones
	
	-   Lanzamiento de monedas
	-   Lanzamiento de dados
	-   Ley de los casos raros
	
## Funcionalidades

-   Menús y cuadros de diálogo diseñados para facilitar el aprendizaje,
    eliminando todas las opciones secundarias para conseguir una
    interfaz simple e intuitiva.
    
-   Diseño de asistentes que guían al usuario paso a paso y le asesoran
    en los análisis estadísticos. 
    ![Asistente](images/wizard.png)
    
-   Salidas en HTML que presentan los resultados de los análisis y sus
    interpretaciones de manera clara y concisa.
    ![Salida](images/output.png)
    
-   Gráficos sencillos basados en el moderno paquete ggplot2. 
	![Salida gráfica](images/graphics1.png)
    
-   Posibilidad mostrar el desarrollo de los cálculos de algunos
    procedimientos estadísticos. 
    ![Salida gráfica](images/detailed_calculation.png)

RKTeaching es mantenido por [asalber](https://github.com/asalber) 