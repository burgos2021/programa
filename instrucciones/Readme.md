# Instrucciones de instalación

## **R**

El programa que utilizaremos para hacer Estilometría, `stylo`, es un paquete de R, por lo que necesitarás tenerlo instalado.
Ve a la página de R Project: https://cran.r-project.org/
En esta página, aparecerá un primer bloque titulado “Download and install R":

- Aquí debes pinchar la opción adecuada de acuerdo a tu sistema operativo (Windows, Mac, Linux).

- Si tienes Windows, pulsa sobre “Download R for Windows”. Aparecerá una nueva página donde debes clicar en “Install R for the first time”. Al hacerlo, comenzará la descarga en tu ordenador. Procede a instalarlo como harías con cualquier otro programa.

- En cambio, si tienes un Mac, debes hacer clic sobre “Download R for (Mac) OS X”. En la nueva página, fíjate en la sección “Latest release” (durante la redacción de estas instrucciones era “R-4.1.0.pkg", versión del 2021-05-19). Pincha en el enlace para descargar la última versión. Después, procede como harías con cualquier otro programa para Mac.

¡Ojo! Si usas Mac, antes de instalar `stylo`, debes descargarte XQuartz. Para ello, ve a https://www.xquartz.org/ , descarga e instala el programa (durante la redacción de estas instrucciones en versión 2.8.1, 2021-04-25, "XQuartz-2.8.1.dmg").  Una vez instalado, vuelve a arrancar R Studio para que lo reconozca.

<!-- Atención a las últimas versiones para no confundir, quizá redactar de otra manera -->

Tienes un tutorial sobre cómo instalar R en Windows paso a paso, preparado por el profesor José Manuel Fradejas, aquí: https://www.youtube.com/watch?v=Gcgm6EJbCV8 

Si todo ha ido bien, tendrás o en el Escritorio (Windows) o en el Launchpad (Mac) un acceso directo para R (es posible que en Windows haya dos, uno para R de 32 bits y otro para R de 64 bits).
 
## **R Studio**

R Studio es un entorno de desarrollo integrado que hará más fácil el trabajo en R y te permitirá guardar fácilmente tus propios scripts, ver las variables que tienes operativas o consultar cómodamente la ayuda, entre otros.

La versión gratuita es "R Studio Desktop", y puedes descargarla de aquí: https://www.rstudio.com/products/rstudio/download/
Fíjate en que la versión gratuita es la que aparece a la izquierda. Al pinchar sobre “Download”, la página avanzará hasta la sección “Installers for Supported Platforms”. Pincha aquí el instalador adecuado a tu sistema operativo (Windows, Mac o alguno de los de Linux).

Si todo ha ido bien, además del acceso directo a R, tendrás en el Escritorio (Windows) o en el Launchpad (Mac) otro acceso directo para R Studio.
 
## Instrucciones de instalación de Visual Studio Code

Visual Studio Code es un editor de código disponible gratuitamente para Windows, Mac y Linux. Existen varios editores de código (Sublime, BBedit, Note++, gedit, Wrangler) que también sirven para trabajar con texto plano o usar Regex. Usamos VScode porque, además de ser gratuito, permite trabajar  con XML-TEI al modo de oXygen, un clásico en la edición de XML-TEI. 

Muchas funcionalidades del VScode se amplian gracias a extensiones (se instalan directamente desde la aplicación).

1. Descargue en https://code.visualstudio.com/download y siga las instrucciones de instalación. (Windows: si quiere que aparezca en los menús de Windows Explorer la posibilidad de "Open with Code" marque las casillas correspondientes durante la instalación).
2. Instalar extensiones: Preferencias -> Extensiones -> Busque extensiones en el _Marketplace_ [_nombre de la extensión_] -> instalar.

Instale las extensiones **`Scholarly XML`**, **`XML Tools`**, **`xslt-transform`**. Algunas extensiones tienen sus propios ajustes. Puede acceder a más información sobre su uso con XML-TEI en <http://phc.uni.wroc.pl/interreg/w/losada/VSCode.html>.

Al panel de extensiones se puede acceder también desde la barra lateral (icono con cuadrados). Un importante atajo del teclado en VSCode: **Ctrl** (Windows) / **Cmd** (Mac) **+Shift+P** acciona la llamada `Command Palette`. Tiene el aspecto de una caja de búsqueda donde se buscan o activan todas la funcionalidades que se necesiten: Ctrl/Cmd+Shift+P + empiece a escribir “exten…”, pulse _enter_ en el resultado “Extensions: install extension” para acceder al panel de extensiones. 

![vscode_extension](http://phc.uni.wroc.pl/interreg/w/losada/images/vscode_1.png)


## Instrucciones de instalación de Gephi 

Gephi es un programa de visualización de redes. Se puede descargar en https://gephi.org. Gephi necesita tener instalado en el ordenador Java, un lenguaje de programación y un entorno de ejecución (Java JRE), entorno para ejecutar programas como Gephi.

Gephi no funciona con versiones de Java más altas de 7 or 8 en Windows y Linux. En Mac, Java viene con la instalación, por lo que, en principio, no es necesario instalarlo separadamente.

Consulte los requisitos <https://gephi.org/users/requirements/> y la instalación <https://gephi.org/users/install/>. 

Consejo para Windows: instale Gephi y compruebe si funciona. Si no, es probable que necesite instalar Java: descárgelo de <https://www.java.com/es/download/>. Si aún sigue si poder cargarlo, siga los pasos de uno de los desarrolladores del programa en este video <https://www.youtube.com/watch?v=DMOWhqp6lHQ>.

![vscode_extension](/instrucciones/images/gephi_general.png)




