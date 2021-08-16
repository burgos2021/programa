Intro a R/Studio
========================================================
title: R/Rstudio
author: José Luis Losada Palenzuela
date: 25/08/2021
autosize: TRUE

Terminología
========================================================
source: 1_Intro_R-Rstudio.R 11

Lenguaje de programación formal. Usa palabras para programar (escribir) una secuencia de comandos (algoritmo): p. ej., contar el nº de caracteres.

- **variable**: lo que nombramos (un nombre asociado a un valor)
- **función**: lo que ocurre, lo que sucede
- **parámetro**: lo que se necesita, lo que se introduce (en las funciones)
- **operador**: lo que relaciona
- **comando o instrucción**: lo que se ordena (siguiendo reglas)

Términos de R
========================================================

No usaremos R _sensu stricto_ para programar, sino como herramienta que dispone ya de funciones predefinidas.

- Términos específicos de R

    - **objeto**: lo que tenemos, lo que manipulamos en R (_vide environment_)
    - **paquetes**: conjunto de funciones, documentación y datos (opcional) disponibles en R

- Rstudio: consola y paneles

Consola
========================================================

R utiliza el sistema de línea de comandos para ejecutar el código. Los comandos se ejecutan en la llamada **consola**, panel inferior izquierdo (lugar por defecto en Rstudio), después del carácter **`>`** (_prompt_).

 `> x = 3`

 `> library(stylo)`

 `> stylo()`

Código fuente
========================================================

En general, usamos más de un comando, por eso los podemos recoger todos juntos en un archivo con extensión .R; comandos que podemos mandar (uno a uno o conjuntamente) a la consola para su ejecución. El panel superior izquierdo (lugar por defecto en Rstudio) muestra el código fuente.

Para enviar los comandos a la consola: 

- “Run current line/selection”: Ctrl+Enter (Windows/Linux), Command+Enter (Mac)

Instalación y carga de paquetes
========================================================

Algunas funciones y comandos vienen instalados por defecto en R. Para tener disponibles otras funciones, como `stylo()`, `html_text2()`, etc. necesitamos instalar los paquetes que las contienen.

Varias posibilidades:

- Usando una función: `install.packages("paquete1","paquete2")`
- Usando el panel (inferior derecho): `packages > install`

Información sobre el paquete (documentación)

- Añadiendo el operador **?** antes del nombre: `?stylo`
- Panel de ayuda: `help > search`

Directorio de trabajo
========================================================

Cargamos, generamos y guardamos archivos, código, etc., por lo que es necesario fijar la ruta de trabajo donde tenemos los documentos. Varias posibilidades:

- Usando una función: `setwd("~/Documents/curso-estilometria)`
- Usando el panel: navegando al directorio en `files + more > Set As Working Directory`
- Usando en el menu el archivo que tenemos abierto: `Session > Set Working Directory > to Source File Location`

Atención a las rutas absolutas y relativas
