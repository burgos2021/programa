      # -- José Luis Losada Palenzuela -- #
        # -- Burgos, Curso de verano -- #
                # -- 2021 -- #

### ------------------------------------------- ###
###  Intro a R/Rstudio                          ###
### ------------------------------------------- ###

# Instrucciones básicas en R---- 

miVariable = "En un lugar de La Mancha de cuyo nombre no quiero"

miVariable

  # Función: 

nchar(miVariable) # cuenta el número de caracteres

  # Función más parámetros

soneto = readLines("lope_soneto_Violante.txt", encoding = "UTF-8") # carga un archivo

  # Operadores: =, <-, ==, +, etc.

x = 4         # Asignar un valor con "="

  x             # Comprobar el valor

y <- 2        # asignar un valor con "<-"
3 -> y

  y + 5         # sumarle 5

y == x        # Comparar x con y. "==" (igualdad) "!=" (desigualdad)

# Instalación y carga de paquetes----

  # Se instalan solo una vez, pero una vez instalados es necesario cargarlos en cada sesión.

  # install.packages("stylo")
  # install.packages("rvest")
  # install.packages("tidyverse") 
  # install.packages("igraph")

  # Cargar en cada sesión con la función library(), p. ej. 

library(stylo)

  # Información sobre el paquete y sus funciones

?stylo 

# Directorio de trabajo en Rstudio---- 

  # Fijar el directorio de trabajo. El directorio tiene que existir

setwd("~/Documents/GitHub/programa/taller1") # path en ordenadores UNIX

  # Si el directorio no existe, se puede crear directamente desde R con la función (o manualmente: fuera de Rstudio o en el panel > New Folder): 

dir.create("~/Documents/curso-estilometria") # path en ordenadores UNIX

  # En qué directorio estoy: 
  
getwd() # Devuelve la ruta absuluta

  # Rutas absolutas y relativas

readLines("lope_soneto_Violante.txt") # relativa al directorio de trabajo
readLines("~/Documents/GitHub/programa/taller1/lope_soneto_Violante.txt") # relativa al User ~/../.. 
readLines("/Users/losada/Documents/GitHub/programa/taller1/lope_soneto_Violante.txt") # absoluta /../..

# Panel de visualizaciones-----

soneto = readLines("lope_soneto_Violante.txt") 
soneto_n = nchar(soneto)
plot(soneto_n)

  # Panel: Plots, visualizaciones estáticas
  # Panel: Viewer, visualizaciones interactivas

# Codificación---- 

  # Si no es UFT-8, para los Mac y Linux puede ser suficiente: Sys.setlocale(locale="UTF-8"). Para Windows deberá especificarse cada vez que se cargan los datos en la función correspondiente con: encoding = "UTF-8"

l10n_info() # Informa sobre la localización
