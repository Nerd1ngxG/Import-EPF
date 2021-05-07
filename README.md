# Import-EPF
Leer ficheros de microdatos de la Encuesta de Presupuestos Familiares (EPF)

Debido a los cambios de formatos y metodologías los microdatos de la EPF ha sufrido cambios a lo largo de los años no hay una manera uniforme de descargar y leer los ficheros que ofrece el INE. En este repositorio se encuentra el código (Import EPF.R) para leer los ficheros, tan solo hay que añadir la ruta a la carpeta donde se enncuentran los datos exportados de la carpeta comprimida y escoger el año del que queremos obtener los microdatos.

Para comodidad del usuario y rapidez en el procesamiento no se realiza ningun cambio en el formato de las variables que procesa la función 'read_fwf'. La mejor opción es que el usuario, una vez consultada la guía del INE de la EPF, decidida las variables de interés, consulte el tipo de variable numérica o categórica y que realice los cambios pertinentes sobre tipo de variable.
