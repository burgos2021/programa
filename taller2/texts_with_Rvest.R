# -- José Luis Losada Palenzuela -- #
# -- Burgos, Curso de verano -- #
# -- 2021 -- #

### ------------------------------------------- ###
###  Descarga de páginas web con Rvest          ###
### ------------------------------------------- ###

# Recordatorio: es necesario instalar antes los paquetes

library(rvest) 
library(tidyverse) # pipe %>%

# Descarga de una sola página: paso a paso----
## Parámetros de read_html(): una url (también ruta, html o xml)
## Fuente: BVC

pag = read_html("http://www.cervantesvirtual.com/obra-visor/entremes-famoso-y-nuevo-de-los-sacristanes--0/html/ff71d51c-82b1-11df-acc7-002185ce6064_2.html") # descarga html
text = html_text2(pag) # transformación a txt (extrae el texto plano)
writeLines(text, "benavente_sacristanes_BVC.txt") # salvado en el disco

# Pipe. Encadenar los pasos----

read_html("http://www.cervantesvirtual.com/obra-visor/entremes-famoso-y-nuevo-de-los-sacristanes--0/html/ff71d51c-82b1-11df-acc7-002185ce6064_2.html") %>%
html_text2() %>%
writeLines("descargas/benavente_sacristanes_BVC.txt") # seleccionar un directorio concreto

## Fuente: Artelope

read_html("https://artelope.uv.es/biblioteca/textosAL/AL0565_ContraValorNoHayDesdicha.php") %>%
  html_text2() %>%
  writeLines("lope_desdicha_artelope_raw.txt")

# Selección de elementos html----

read_html("https://artelope.uv.es/biblioteca/textosAL/AL0565_ContraValorNoHayDesdicha.php") %>%
  html_elements(".verso, .versoI, .versoF, .versoM, .versoSangrado") %>% # posible extraer elementos concretos. En este caso el atributo html class="verso". Atención, no todos los tipos de verso llevan el atributo .verso. Pero aun con texto que no interesa: notas del editor...
  html_text2() %>%
  writeLines("lope_desdicha_artelope_versos.txt")

# Descarga y selección de elementos de XML-TEI----

# https://github.com/dracor-org/caldracor/blob/main/tei/andromeda-y-perseo.xml (Visualiza archivo en github)

# https://raw.githubusercontent.com/dracor-org/caldracor/main/tei/andromeda-y-perseo.xml (Descarga de archivo en github) -> `raw`


read_html("https://raw.githubusercontent.com/dracor-org/caldracor/main/tei/andromeda-y-perseo.xml") %>%
  html_elements("l") %>% # Elemento TEI (línea de verso) <l>
  html_text2() %>%
  writeLines("calderon_perseo_dracor.txt")

## Cargar el archivo XML desde el ordenador

read_html("datos/andromeda-y-perseo.xml") %>% # Seleccionar la ruta
  html_elements("l") %>%
  html_text2() %>%
  writeLines("calderon_perseo_dracor.txt")

# Descarga de multiples páginas: rvest + lapply()----

# base::lapply() aplica una función sobre un vector o una lista.

urls <- c("http://www.cervantesvirtual.com/portales/francisco_rojas_zorrilla/obra-visor/los-aspides-de-cleopatra-2/html/ff0ae30c-82b1-11df-acc7-002185ce6064_2.html",
              "http://www.cervantesvirtual.com/portales/francisco_rojas_zorrilla/obra-visor/los-aspides-de-cleopatra-2/html/ff0ae30c-82b1-11df-acc7-002185ce6064_3.html",
              "http://www.cervantesvirtual.com/portales/francisco_rojas_zorrilla/obra-visor/los-aspides-de-cleopatra-2/html/ff0ae30c-82b1-11df-acc7-002185ce6064_4.html") %>% # Guardamos las urls en una variable, uniéndolas con la función c(), combinar.
  lapply(read_html) %>%
  lapply(html_text2) %>%
  paste(collapse='JORNADAS_PAGS') %>% # Añadimos un texto que indica dónde se juntan los archivos.
  writeLines("descargas/RojasZorrilla_aspidesdecleopatra.txt")

# Descarga de AHCT. Problemas de codificación----

read_html("http://www.comedias.org/belmonte/diapre.html", encoding = "ISO-8859-1") %>% # entrada en ISO-8859-1
  html_text2() %>% 
  writeLines("belmonte_DiabloPredicador_jor1_AHCT.txt") # salida en UTF-8

# Avanzado. Descarga usando un bucle. Archivos separados----

urls <- c("http://www.cervantesvirtual.com/portales/francisco_rojas_zorrilla/obra-visor/los-aspides-de-cleopatra-2/html/ff0ae30c-82b1-11df-acc7-002185ce6064_2.html",
          "http://www.cervantesvirtual.com/portales/francisco_rojas_zorrilla/obra-visor/los-aspides-de-cleopatra-2/html/ff0ae30c-82b1-11df-acc7-002185ce6064_3.html",
          "http://www.cervantesvirtual.com/portales/francisco_rojas_zorrilla/obra-visor/los-aspides-de-cleopatra-2/html/ff0ae30c-82b1-11df-acc7-002185ce6064_4.html")

titulos = c("rojas_aspides_jor1", "rojas_aspides_jor2", "rojas_aspides_jor3")

for (i in 1:3){
read_html(urls[i]) %>% 
    html_text2() %>%
    writeLines(paste(titulos[i],".txt",sep = ""))
}
