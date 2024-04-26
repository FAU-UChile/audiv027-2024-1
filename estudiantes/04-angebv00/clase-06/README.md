# clase-06

## entrega: CatchCam

integrantes: Josefa Rubio y Angela beltrán

fecha: 25/Abril

## materiales/2024

este trabajo lo hice con los siguientes materiales:

- Processing 4.3 ejecutado en el ordenador
- Wekinator-2.1.0.4 
- webcam
- videoInput Face Detection Processing disponible en [http://www.wekinator.org/examples/]

  dentro de processing descargamos: 
- Ocsp5 
- OpenCv processing
- p5.js Mod
- video library for processing 4

## código

el código está subido en esta misma carpeta

## capturas de pantalla
Para idear este juego primero tuvimos de base el siguiente código que se muestra en este video de youtube:
  https://youtu.be/gUetYrVB6oM?si=StJUE46BjGsTZ-ZQ
Con esto pensamos que podríamos a través wekinator entrenar al juego para que en vez de que se moviese el rectángulo con las teclas fuese con el movimiento de nuestra cabeza a través de cámara web. 

Para esto en primera instancia se buscó integrar la visualización de la cámara web en el juego sumado a la instalación de processing video desde library agregando al inicio del código: 

import processing.video.*;

Se declaró una variable global para la captura de video y otra para el valor de la posición horizontal del rectángulo controlado por la cámara:


Capture video;
float rectX; 

inicializamos la captura de video y establecemos la posición inicial del rectángulo (rectX) en la mitad del ancho de la ventana:
 
// Inicializar la captura de video y establecer la posición inicial del rectángulo
video = new Capture(this, width, height);
video.start();
rectX = width / 2;

Al hacer estas modificaciones se abrió el lienzo que contenía la pelota sin embargo no salía el rectángulo ni tampoco un lienzo aparte en donde pudiese verme a mi misma por camara web para poder controlarlo.
![image](https://github.com/angebv00/audiv027-2024-1/assets/163590234/8efa9e2a-03c9-42e6-bf5c-3f06b33cfa00)

sin embargo esto no funcionó pues se abrió el lienzo que contenia la pelota pero no se activó la cámara y la pelota rebotó en un loop constante también sin poder ser capaz de mover el rectángulo de ninguna forma. 

Después se realizaron las siguientes modificaciones en el código para que pudiese conectar con la cámara, esto ocurrió y funcionaba el juego aún con mouse, en el código aún se estaba descifrando cómo conectar con wekinator outputs e inputs con los cuales conectar con wekinator y podía visualizarse a través de la cámara web dentro de un mismo lienzo .Los cambios fueron: 
- se aumentó el tamaño del lienzo
- se eliminó el uso de processing video y se captura el video directamente desde el lienzo del juego, sin usar bibliotecas externas.
![image](https://github.com/angebv00/audiv027-2024-1/assets/163590234/9eac4185-8472-43c0-b863-917ffb8ec414)
Después se estableció dentro de ´Draw´ la dirección de red a la que se enviarán los mensajes OSC para poder conectar con wekinator a través del puerto 6448: 
 ´wekinatorAddress = new NetAddress(“127.0.0.1”, 6448).

float predictionX = theOscMessage.get(0).floatValue(); obtiene el valor de la primera entrada en el mensaje OSC recibido
con estos cambios pudimos conectar wekinator con processing sin embargo no era posible entrenar al programa para que reconociese la el restro.
![image](https://github.com/angebv00/audiv027-2024-1/assets/163590234/05179df4-60e2-4aa4-99c4-fb7253426c32)

Posterior se borró el código que le daba acceso a la captura de video en processing y además ahora ya no espera recibir la posición de cámara sino espera recibir datos de posición de cara, esto cambiando el OSC 
Posterior a esto se descargó desde la página de Wekinator examples bundles el Face Tracking (Processing version; tracks the x- and y- position and width of one face) Win32 para usar la cámara de este ya que, como se vió en clases, se entiende la relación entre los inputs y outputs que se necesita para que funcione en Wekinator y así usar este ejemplo que ya reconoce con anterioridad la cara por los códigos, tal que así lo pudiéramos aprovechar entrenando este junto al juego en Wekinator. 
*El Face Tracking se abren los 3 archivos en una ventana para que funcione. 
Finalmente se le incorporan los inputs y outputs al código del juego para que Wekinator lea el movimiento del rectángulo con la detección de la cara, mediante un entrenamiento de ambos códigos utilizados. 
![image](https://github.com/angebv00/audiv027-2024-1/assets/163590234/505dd0ab-e5fd-44be-ab60-caaec4604ab1)

![image](https://github.com/angebv00/audiv027-2024-1/assets/163590234/4aa87ff6-f347-46b9-a1b2-34aa97655fb9)

![image](https://github.com/angebv00/audiv027-2024-1/assets/163590234/d9689091-534b-4ff3-b06c-247ea940ac43)

![image](https://github.com/angebv00/audiv027-2024-1/assets/163590234/130d8e8a-962f-4693-8359-b206452936ba)


## conclusiones

- Aprendimos que el código se divide en hipertexto, como la sección de comentarios de encabezado. Esta sección suele contener información relevante sobre el propósito del código, void setup, void draw, void keyPressed, void oscEvent


- void setup se ejecuta una vez al inicio del programa y se utiliza para realizar cualquier configuración inicial necesaria antes de que comience el ciclo de dibujo principal.

- void draw se maneja en los puntos de entrada y salida, para que processing dé respuesta a eventos específicos, ejemplo, click a algo. En draw se envían las posiciones.
 Aprendimos la relación entre los inputs y outputs de los diferentes códigos en processing, en este caso nos funciona el inputs 3 y outputs 1 para que lo lea Wekinator y entrene los códigos.
Pudimos aplicar lo que se trabajó en clases para el trabajo, específicamente en la parte sobre entender cómo funciona processing junto a Wekinator. Esto se aplicó cuando se utiliza Face Tracking junto a Processing Particle System como prueba para empezar este trabajo y se vió la relación entre los inputs y outputs de estos dos ejemplos. 


## citas y referentes

- Wekinator 
[http://www.wekinator.org/examples/]

- video library for processing 4, particle processing system, videoInput face detection processing descargados de wekinator. 

- Se usó juego en processing
[https://www.youtube.com/watch?si=HGZGxxYXj9jwqUBC&v=gUetYrVB6oM&feature=youtu.be]

- Atoka Jo
[https://github.com/aaronsherwood/wekinatorworkshop]
[https://www.youtube.com/watch?si=r7m8WtSAbU0o-YAX&v=CEsW1hZmwIk&feature=youtu.be]


- Wekinator 
[https://www.youtube.com/watch?v=NKyyBAKrQgE]
