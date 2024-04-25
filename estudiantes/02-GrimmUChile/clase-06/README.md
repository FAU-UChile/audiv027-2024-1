# clase-06

## entrega: título

integrantes
Benjamín Alarcón Vidal
María Jose Ribba

fecha
19/04/2024

## materiales

este trabajo lo hice con los siguientes materiales:

- Processing 4.3 y esta disponible en https://processing.org/download
- Markdown para escribir la documentación de este archivo
- la base de datos en:
- https://processing.org/reference/libraries/sound/SoundFile.html
- http://www.wekinator.org/examples/#Audio
- Wekinator escrito por x y disponible en http://www.wekinator.org/downloads/
- Navegador Mozilla Firefox en su versión 121.0 (64-bit)

## código

el código está subido en esta misma carpeta, y en el editor de p5.js, etc.

## capturas de pantalla

u otro material multimedia

##Proceso

Errores/Problemas:

Codigo no funciona al detectar 2 "voidSetup()"

No detecta los archivos de sonido, debido a su formato (arreglado conviertiendo los archivos de mp3 a vaw)
![imagen](https://github.com/GrimmUChile/audiv027-2024-1/assets/163590997/209b934a-55dd-49e9-a95b-c3ce96fb4359)

El codigo funciona pero no detecta izquierda o derecha, con lo cual reproduce los 2 sonidos a la vez.
![imagen](https://github.com/GrimmUChile/audiv027-2024-1/assets/163590997/f82f6594-d6e5-4537-9333-a52bca96d16d)
(Video del problema en la carpeta)

No descubrimos como escribir el codigo donde si detecta un rango de valor x, reproduzca un sonido y si detecta otro rango de valor x, reproduzca otro sonido
Hemos intentado crear nuestro propio codigo, como buscar ejemplos en la pagina de Processing y Wekinator pero no hemos logrado dar con lo que nos sirva.

Se logro, el example que buscabamos se llamaba: "Processing Color and Sound"

Investigar como pasar el lenguaje de filesound a minim ya que tenemos las lineas de codigo para que el sonido se reproduzca, pero no funciona en el otro processing debido a que funciona con minim.


## conclusiones
- Aprendimos a conectar distintos processings en un mismo wekinator gracias al OSC IN y el OSC OUT. 
- Encontramos distintos tipos de biblioteca para las mismas caracteristicas(filesound y minim).
- Prueba y error.

## citas y referentes

- <https://github.com/>https://processing.org/reference/libraries/sound/index.html
- <https://github.com/>http://www.wekinator.org/examples/#Pick_Choose_Outputs
- <https://github.com/>
