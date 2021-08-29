#################################################
##                                             ##
##        DEL CORPUS A LA INTERPRETACIÓN:      ##
##        ESTILOMETRÍA CON R                   ##
##                                             ##
##       Taller 5: Aplicación de métodos       ##
##                 estilométricos con stylo    ##
##                                             ##
#################################################

# Primero establecemos el directorio de trabajo
# Si tienes un Mac y has guardado la carpeta "novela-espanola" en el escritorio:
setwd("Desktop/novela")
# Si tienes Windows y has guardado la carpeta en C:
setwd("C:/novela")

# A continuación, llamamos al paquete stylo

library(stylo)

# Para métodos supervisados y clasificación
setwd("classification")

classify()
results = classify(cv.folds=10)
summary(results)
results$cross.validation.summary
mean(results$cross.validation.summary) #percentage of success

# Para PCA
setwd("PCA")
stylo()

# Para zeta
setwd("~/C:/novela/zeta")
setwd("~/Desktop/novela/zeta")
oppose()
