# **Taller 8. Estilometría y redes**

1. Redes. Conceptos básicos
2. Redes con `stylo.network()`
3. Redes con Gephi

Enlaces de descarga. Corpus teatrales

- Corpus teatral del Siglo de Oro: [teatroplano](https://github.com/editio/teatroplano) (TXT, 385 obras)
- Corpus teatral _Théâtre Classique_: [tcp5](https://github.com/dramacode/tcp5) (XML, 815 obras)


## Redes con Gephi

Consulte las [instrucciones](https://github.com/burgos2021/programa/tree/main/instrucciones#gephi) para la instalación de Gephi.

Para una información completa sobre redes y visualización con Gephi, consulte la página de [Martin Grandjean](http://www.martingrandjean.ch/gephi-introduction/)

Gephi permite visualizar y realizar métricas de redes, pero en este caso lo usamos solo como herramienta de visualización.

### Importación de datos en Gephi

#### Lista de aristas (_edgelist_)

- Files > Import Spreadsheet: elegir la lista de aristas generada con stylo()

Primera ventana: Mantener los valores por defecto (comma, **edges table**)

Segunda ventana: Mantener los valores por defecto

Tercera ventana: Edges merge strategy: "Sum | Don't merge "

#### Lista de nodos (_nodelist_)

Atención: stylo.network() creea por defecto las listas de aristas y nodos; stylo() solo la lista de aristas. Use `network.tables = "both"` en stylo() para las dos listas.

- Files > Import Spreadsheet: elegir la lista de nodos generada con stylo()

Primera ventana: Mantener los valores por defecto (comma, **nodes table**)

Segunda ventana: Mantener los valores por defecto.

Tercera ventana: "Append to existing workspace"

### Parámetros (_Overview_)

Layout (run/stop):

- Scaling > 400 red pequeña
- ForceAtlas2 > dissuade Hubs | Prevent Overlap

Consejo: Windows > Reset Windows (si no aparecen los paneles)

Appearance: 

- nodes > color > partition: classes | group (seleccionar)
- nodes > size > unique: 50 (~ 800 nodos)

### Modificación del _label_ (_Data laboratory_)

- Data table >  Nodes

Duplicate column: Label
Copy data to other column: classes > label

### Modificación del _label_ (_Data laboratory_)

Solo si se importa el edgelist por defecto de stylo()

Create column with list of regex matching groups

- Elegir: `id`
- Title: `autores` 
- Expresión regular: `^[a-zA-Z0-9]+`

Copy data to other column

- Autores > label

### Exportar imagen (_Preview_)

Más parámetros de visualización disponibles