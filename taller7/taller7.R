#################################################
##                                             ##
##        DEL CORPUS A LA INTERPRETACIÓN:      ##
##        ESTILOMETRÍA CON R                   ##
##                                             ##
##       Taller 7: Verificación de autoría     ##
##                 con stylo                   ##
##                                             ##
#################################################

# En primer lugar, llamamos al paquete stylo

library(stylo)

##########################################
# PRÁCTICA CON DATASET INCLUIDO EN STYLO #
##########################################

# Para utilizar las frecuencias de varias novelas 
#del caso de "The Cuckoo's Calling", incluidas en stylo:
data(galbraith)

# Para consultar las novelas incluidas:
help(galbraith)

# Para aplicar el método de los impostores a "The Cuckoo's Calling":
imposters(galbraith)

#########################################################
# PRÁCTICA CON LOS TEXTOS DE NOVELA DE LA EDAD DE PLATA #
#########################################################

# cargo los ficheros en R desde la carpeta "corpus" dentro de "novela":
# Si usas Mac y guardaste la carpeta novela en el escritorio:
tokenized.texts = load.corpus.and.parse(files = "all", corpus.dir="Desktop/novela/corpus")
# Si usas Windows y guardaste la carpeta novela en C:
tokenized.texts = load.corpus.and.parse(files = "all", corpus.dir="C:/novela/corpus")

# creo una lista de las palabras más frecuentes (limitada a 5000, por ejemplo, 
# pero lo puedo cambiar según el análisis):
features = make.frequency.list(tokenized.texts, head = 5000)

# creo una tabla de frecuencias relativas:
data = make.table.of.frequencies(tokenized.texts, features, relative = TRUE)

# Aplico Impostores: ¿quién escribió La Regenta? (Delta de Burrows)
results = imposters(reference.set = data[-c(12),], test = data[12,])
write.csv(cbind(results, names(results)), file = "my_results-Delta.csv")

# Aplico Impostores: ¿quién escribió La Regenta? (Cosine Delta)
results = imposters(reference.set = data[-c(12),], test = data[12,], distance = "wurzburg")
write.csv(cbind(results, names(results)), file = "my_results-Wurzburg.csv")

# Para obtener los valores que marcan los límites de la zona gris
imposters.optimize(data)
