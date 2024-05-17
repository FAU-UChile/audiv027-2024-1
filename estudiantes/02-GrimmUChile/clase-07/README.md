
## Entrega proyecto detector de mouse izquierda/derecha con respuesta auditiva.

## Integrantes
Benjamín Alarcón Vidal
María Jose Ribba

## Fecha
26/04/2024

## Materiales:

Este trabajo lo hice con los siguientes materiales:

- Processing 4.3 y esta disponible en https://processing.org/download
- Markdown para escribir la documentación de este archivo
- la base de datos en:
- https://processing.org/reference/libraries/sound/SoundFile.html
- http://www.wekinator.org/examples/#Audio
- Wekinator escrito por x y disponible en http://www.wekinator.org/downloads/
- Navegador Mozilla Firefox en su versión 121.0 (64-bit)

## Código

El código está subido en esta misma carpeta, y en el editor de p5.js, etc.

## Proceso de Errores y soluciónes:

Al momento de probar el funcionamiento de el código de sonido, el código no logra detectar 2 "voidSetup()" y por consecuencia no funciona: 

No detecta los archivos de sonido, debido a su formato (que arreglamos conviertiendo los archivos de mp3 a vaw)
![imagen](https://github.com/GrimmUChile/audiv027-2024-1/assets/163590997/209b934a-55dd-49e9-a95b-c3ce96fb4359)

Luego de analizar el código y buscar soluciones, logramos hacer que el código funcionará, pero no nos detectaba izquierda o derecha con lo cual reproduce los 2 sonidos a la vez.
![imagen](https://github.com/GrimmUChile/audiv027-2024-1/assets/163590997/f82f6594-d6e5-4537-9333-a52bca96d16d)
(Video del problema en la carpeta)

En su momento, no descubrimos cómo escribir el código para que detecte un rango de valor x, reproduzca un sonido y si detecta otro rango de valor x, reproduce otro sonido. Por lo que intentamos crear nuestro propio código, como buscar ejemplos en la página de Processing y Wekinator y así es como llegamos al example que buscábamos que se llamaba: "Processing color and Sound". 

Después de haber encontrado la solución para uno de los problemas, nos encontramos con otro, ya que ahora debíamos investigar cómo pasar el lenguaje de filesound a minim dado que tenemos las lineas de codigo para que el sonido se reproduzca, pero no funciona en el otro processing debido a que funciona con minim. 

Aun así seguimos y dimos con una página web que habla del control de sonido de Processing, donde se nos explica como en la opción de añadir biblioteca debemos elegir la pestaña de sonido y instalar la librería minim, para luego introducir un ejemplo de código que nos da para hacerlo funcionar con una tecla, aunque nosotros tenemos que editarlo para hacerlo funcionar con el mouse. 

Nuestro siguiente paso a seguir es probar editar el código de acuerdo a lo que aprendimos de esta página web y ver si funciona. 

## Conclusiones

En conclusión podemos decir que logramos aprender más sobre Wekinator, y su OSC In y OSC Out. Donde pudimos utilizar un Processing de entrada y uno de salida, para nuestro proyecto. Además logramos aprender a investigar y comprender el código, también como los errores que nos marcaban y cómo solucionarlos. También aprendimos que pueden existir distintos tipos de bibliotecas para los mismos temas (como Sound y Minim para audio) y eso significa que tienen distintas formas de programar en código. Por último y lo que encontramos más importante es: prueba y error. Como demostramos en nuestro proceso, tuvimos muchísimos problemas para que el código funcionará, desde problemas con exportaciones, bibliotecas faltantes, bibliotecas no compatibles con el código. Errores de duplicaciones de "setup", etc. Y aunque no logramos terminar el proyecto como esperábamos. Terminamos investigando y aprendiendo cómo hacerlo. Pero no logramos implementarlo para la entrega. Pero al menos sabemos como arreglarlo. Estamos bastante orgullosos de nuestro proyecto y de lo que logramos entregar. 

## citas y referentes

- <https://github.com/>https://processing.org/reference/libraries/sound/index.html
- <https://github.com/>http://www.wekinator.org/examples/#Pick_Choose_Outputs
- <https://github.com/>https://sites.google.com/view/processing2bachillerato/17-control-del-sonido
