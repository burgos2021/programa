# -- José Luis Losada Palenzuela -- #
# -- Burgos, Curso de verano -- #
# -- 2021 -- #

### ------------------------------------------- ###
###  Estilometría y redes                       ###
### ------------------------------------------- ###

library(stylo)

resultado = stylo(gui = F,
                  corpus.dir = "corpus_1", # ruta a los textos. Por defecto corpus
                  # encoding = "UTF-8",
                  mfw.min = 100, 
                  mfw.max = 1000,
                  mfw.incr = 100, # mínimo 3 iteraciones para un consensus tree
                  # analysis.type = "CA",
                  analysis.type = "BCT",
                  corpus.lang = "Spanish",
                  # corpus.format = "xml",
                  # distance.measure="wurzburg",
                  distance.measure="delta",
                  display.on.screen = F,
                  # dendrogram.layout.horizontal = T,
                  # network = T, # guarda un edgelist. Por defecto True
                  # network.tables = "both" # genera edgelist/nodelist.  Source/Target con id. Por defecto edges
)

# Source/Target con el nombre de los nodos (network.tables = "edges")
edgelist = read.csv("taller8_Consensus_100-1000_MFWs_Culled_0__Classic Delta_C_0.5_EDGES.csv")

# stylo.network()----

# Para usar la función stylo.network() es necesario tener instalado el paquete networkD3
# install.packages('networkD3')

# Valores por defecto de stylo.network() 100-1000 MFW.

red = stylo.network(gui = F,
              corpus.dir = "corpus_1",
              mfw.min = 100, 
              mfw.max = 1000,
              mfw.incr = 100, # mínimo 3 iteraciones para un consensus tree
              # distance.measure="wurzburg",
              distance.measure="delta"
              )

red # -> consola para ejecutar

# Source/Target sin el nombre de los nodos (por defecto: network.tables = "both)
# ¡Atención! El nombre del archivo se modifica según los parámetros elegidos.

edgelist = read.csv("taller8_Consensus_100-1000_MFWs_Culled_0__Delta_C_0.5_EDGES.csv")
nodelist = read.csv("taller8_Consensus_100-1000_MFWs_Culled_0__Classic Delta_C_0.5_NODES.csv")

# stylo.network() llama la función forceNetwork(). Aquí se pueden modificar algunos parámetros

library(networkD3)
forceNetwork(Links = red$x$links, 
             Nodes = red$x$nodes,
             Source = "source", 
             Target = "target",
             Value = "value", # weight
             NodeID = "name",
             Group = "group",
             opacity = 0.9,
             zoom = T,
             bounded = F, # Márgenes del navegador
             charge = -100) # Para redes más grandes, mejor más charge.