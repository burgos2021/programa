# -- José Luis Losada Palenzuela -- #
# -- Burgos, Curso de verano -- #
# -- 2021 -- #

### ------------------------------------------- ###
###  OCR con Tesseract                          ###
### ------------------------------------------- ###

library(pdftools)
library(tidyverse)

# tesseract::tesseract_download("spa") # descarga del idioma de OCR. Solo es necesario descargarlo una vez.

textos <- pdftools::pdf_ocr_text("datos/moreto_casimiro_2pag.pdf", lang="spa") # OCR con el idioma seleccionado

texto <- stringr::str_c(textos, collapse = "") # Unir varias páginas en la cadena de caracteres.

writeLines(texto, "moreto_casimiro_2pag.txt") # Salvar resultado en el disco.
