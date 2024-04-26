# clase-06

## Evaluación 1: Prototipo de Metaballs. 

Trabajo en pares: 

1. Natalie Astudillo (https://github.com/NAF02).
2. Valentina Ochoa. 

Clase del 19-04-2024

Actualizado el 24 y 25 de abril 

## Materiales:

Este trabajo lo realizamos con lo siguiente:

- Programa llamado Processing, lenguaje Java.
- Markdown para escribir la documentación de este archivo.
- Programa llamado Wekinator.

## ¿Cómo iniciamos este proyecto?
En la clase del (insertar fecha), terminamos un poco antes de lo habitual, por lo que el docente nos recomendó comenzar a investigar sobre ideas para nuestra primera evaluación, que vendría siendo esta. Con mi compañera Natalie estuvimos conversando y le interesaba mucho hacer algo relacionado a colores, con lo cual teníamos una base para buscar antecedentes. En nuestra búsqueda, encontramos algunas animaciones llamadas ''Magic Fluids'' y ''Colorful Gradient Abstract Liquid'', que dejaremos a continuación:

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/220e76b6-0281-4b82-acdb-98390e46bd63)

Link: https://www.youtube.com/watch?v=SDHX1KyLleg&ab_channel=ShutterFootage

_Colorful Gradient Abstract Liquid_

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/4b35888c-0487-4cc6-9530-33bec5edcf17)

Link: https://www.youtube.com/watch?v=1MieluM0c6c&ab_channel=RomanDeGiuli

_Magic Fluids_ 

Luego de visualizarlas, estuvimos buscando por Youtube algunos tutoriales que implementaran programación para llevarlas a cabo. No obstante, a pesar de que podíamos realizar algo similar, era algo mucho más pesado y tardío de hacer, ya que utilizaban tanto javascript como css, junto a json. Por ende, si bien no descartamos esta idea para más adelante, quisimos enfocarnos en algo más sencillo para esta primera evaluación. 

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/1f6633a0-b00e-441f-a09e-33e5e7cfb586)

https://github.com/baunov/gradients-bg

_Referencia de idea de proyecto_ 

Por otra parte, también estuvimos buscando proyectos en la siguiente página: openprocessing.org, en la cual podíamos ver diferentes proyectos que se hicieron con el programa Processing, lo cual era algo que queríamos utilizar. Encontramos ideas similares a las mostradas con anterioridad, sin embargo, sus códigos eran de aproximadamente mil líneas, algo que quizás sería demasiado pesado para completarlo en menos de una semana. No obstante, al seguir investigando encontramos algo interesante, llamado ''Metaballs''. Si bien no era igual a lo que teníamos como idea base, era similar y también nos pareció interesante.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/d1ec656b-362b-4ff7-b00c-d464479071f9)

_Metaballs por The Coding Train_

Link: https://www.youtube.com/watch?v=ccYLb7cLB1I&t=606s&ab_channel=TheCodingTrain

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/3586845b-f33a-4c3c-b469-862900f656aa)

_Metaballs in Processing_

Link: https://www.youtube.com/watch?v=PrFgIBchqno&ab_channel=HariDulal

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/0e2acd3d-ebbc-46f8-8877-5f2f19c1bbc6)

_Colorful Metaballs in Processing_

Link: https://www.youtube.com/watch?v=LZfmCuEPRIM&ab_channel=AbangFarhan

Ya con todo esto, podíamos dar inicio a nuestro trabajo. Nos apoyamos del código de The Coding Train y de varios ejemplos de Metaballs encontrados en la página nombrada anteriormente: openprocessing.org.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/faebf834-c3f6-4833-82b9-c30a8f22d441)

_Referentes de proyectos de Metaballs en la página OpenProcessing_ 

## Proceso del proyecto: 

En primer lugar, trabajamos en horario fuera de clases los días 16, 17 y 18 de abril, para así estudiar el código base que teníamos por parte del canal de youtube The Coding Train, el cual es el siguiente:

```
var blobs = []

function setup() {
  createCanvas(400, 200);
  colorMode(HSB);
  for (i = 0; i < 10; i++) blobs.push(new Blob(random(0, width), random(0, height)));
}

function draw() {
  background(51);

  loadPixels();
  for (x = 0; x < width; x++) {
    for (y = 0; y < height; y++) {
      let sum = 0;
      for (i = 0; i < blobs.length; i++) {
        let xdif = x - blobs[i].x;
        let ydif = y - blobs[i].y;
        let d = sqrt((xdif * xdif) + (ydif * ydif));
        sum += 10 * blobs[i].r / d;
      }
      set(x, y, color(sum, 255, 255));
    }
  }
  updatePixels();

  for (i = 0; i < blobs.length; i++) {
    blobs[i].update();
  }
}
```

Este código, además, está acompañado de un apartado de ''blob.js'', que contienen las siguientes líneas de código:

```
// Basile Pesin
// http://vertmo.github.io

// MetaBalls : p5.js implementation

class Blob {

  constructor(x, y) {
    this.x = x;
    this.y = y;
    let angle = random(0, 2 * PI);
    this.xspeed = random(2, 5) * Math.cos(angle);
    this.yspeed = random(2, 5) * Math.sin(angle);
    this.r = random(120, 240);
  }

  update() {
    this.x += this.xspeed;
    this.y += this.yspeed;
    if (this.x > width || this.x < 0) this.xspeed *= -1;
    if (this.y > height || this.y < 0) this.yspeed *= -1;
  }

  show() {
    noFill();
    stroke(0);
    strokeWeight(4);
    ellipse(this.x, this.y, this.r * 2, this.r * 2);
  }
}
```

Ahora bien, lo que nosotras hicimos fue modificar el código para aplicarlo únicamente en Processing, sin utilizar el editor de p5.js, cambiando medidas numéricas, texturas (el contorno de las metaballs) y colores a utilizar. Así mismo, agregamos funcionalidades con el mouse, haciendo que cada vez que haciamos click, aparecía una metaball en la pantalla. El primer resultado fue este:

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/77a1aeff-db71-457a-9df7-6f060cc4029a)

Luego, configurando el color negro por uno celeste, obtuvimos lo siguiente:

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/1bceb8d2-7005-49f6-9b7c-ad96d432e2ad)

Por otro lado, netamente durante clases, nuestro gran obstáculo fue reconocer como conectar la programación de particulas/metaballs, directamente con una entrada y salida en wekinator, para poder interactúar de lleno con el usuario. Intentamos en primeras instancias poder ver los cambios en el código, agregando aspectos como el mousetracker y sumando líneas de OSCP5, basándonos en los ejemplos que vimos en clases. El ejemplo lo sacamos de la página oficial de Wekinator (http://www.wekinator.org/examples/#Processing_animation_screen-based_input): 

```
import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress dest;

PFont f;

void setup() {
  f = createFont("Courier", 16);
  textFont(f);

  size(640, 480, P2D);
  noStroke();
  smooth();
  
  
  /* start oscP5, listening for incoming messages at port 12000 */
  oscP5 = new OscP5(this,9000);
  dest = new NetAddress("127.0.0.1",6448);
  
}

void draw() {
  background(0);
  fill(255);
  ellipse(mouseX, mouseY, 10, 10);
  if(frameCount % 2 == 0) {
    sendOsc();
  }
  text("Continuously sends mouse x and y position (2 inputs) to Wekinator\nUsing message /wek/inputs, to port 6448", 10, 30);
  text("x=" + mouseX + ", y=" + mouseY, 10, 80);
}

void sendOsc() {
  OscMessage msg = new OscMessage("/wek/inputs");
  msg.add((float)mouseX); 
  msg.add((float)mouseY);
  oscP5.send(msg, dest);
}

```

Así mismo, implementamos un ejemplo base durante el horario de clases, con el apoyo de un amigo que estudia informática: 

```
import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress dest;

void setup() {
  size(800, 600);
  background(255);
  
  // Inicializar la conexión OSC con Wekinator
  oscP5 = new OscP5(this, 9000);
  dest = new NetAddress("127.0.0.1", 6448); // Cambia esto si Wekinator está en otra dirección
}

void draw() {
  // No es necesario hacer nada en draw()
}

void mousePressed() {
  // Determinar el color del círculo según la instrucción recibida de Wekinator
  int colorCircle;
  if (mouseX < width/3) {
    colorCircle = color(255, 0, 0); // Rojo si está a la izquierda
  } else if (mouseX > 2*width/3) {
    colorCircle = color(0, 0, 255); // Azul si está a la derecha
  } else {
    colorCircle = color(255, 0, 255); // Morado si está en el centro
  }
  
  // Dibujar el círculo del color correspondiente en la posición del clic
  fill(colorCircle);
  ellipse(mouseX, mouseY, 50, 50);
  
  // Enviar datos a Wekinator (X e Y del clic y la instrucción de izquierda/derecha)
  OscMessage msg = new OscMessage("/wek/inputs");
  msg.add(mouseX / width); // Normalizando la posición X entre 0 y 1
  msg.add(mouseY / height); // Normalizando la posición Y entre 0 y 1
  if (mouseX < width/3) {
    msg.add(1); // Izquierda
  } else if (mouseX > 2*width/3) {
    msg.add(2); // Derecha
  } else {
    msg.add(3); // Centro
  }
  oscP5.send(msg, dest);
}
```

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/ffe8c168-4f9e-402e-91ed-4fa78187d473)

Por último, seguimos un ejemplo revisado en clases para entrenar a Wekinator en función de la posición de la partícula o metaball, llamado Simple Mouse Dragged Object, el cual presenta el siguiente código:

```
/**
* REALLY simple processing sketch that sends mouse x and y position of box to wekinator
* This sends 2 input values to port 6448 using message /wek/inputs
* Adapated from https://processing.org/examples/mousefunctions.html by Rebecca Fiebrink
**/

import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress dest;
PFont f;

float bx;
float by;
int boxSize = 30;
boolean overBox = false;
boolean locked = false;
float xOffset = 0.0; 
float yOffset = 0.0;

void setup() {
  f = createFont("Courier", 15);
  textFont(f);

  size(640, 480, P2D);
  noStroke();
  smooth();
  
  bx = width/2.0;
  by = height/2.0;
  rectMode(RADIUS);  
  
  /* start oscP5, listening for incoming messages at port 12000 */
  oscP5 = new OscP5(this,9000);
  dest = new NetAddress("127.0.0.1",6448);
  
}

void draw() {
  background(0);
  fill(255);
  /*ellipse(mouseX, mouseY, 10, 10);
  if(frameCount % 2 == 0) {
    sendOsc();
  } */
  text("Continuously sends box x and y position (2 inputs) to Wekinator\nUsing message /wek/inputs, to port 6448", 10, 30);
  text("x=" + bx + ", y=" + by, 10, 80);
  
  fill(0, 200, 0);

  // Test if the cursor is over the box 
  if (mouseX > bx-boxSize && mouseX < bx+boxSize && 
      mouseY > by-boxSize && mouseY < by+boxSize) {
    overBox = true;  
    if(!locked) { 
      stroke(0, 255, 0); 
      fill(0, 255, 0);
    } 
  } else {
    stroke(0, 255, 0);
    fill(0, 255, 0);
    overBox = false;
  }
  
  // Draw the box
  rect(bx, by, boxSize, boxSize);
  
  //Send the OSC message with box current position
  sendOsc();
}

void mousePressed() {
  if(overBox) { 
    locked = true; 
    fill(0, 255, 0);
  } else {
    locked = false;
  }
  xOffset = mouseX-bx; 
  yOffset = mouseY-by; 

}

void mouseDragged() {
  if(locked) {
    bx = mouseX-xOffset; 
    by = mouseY-yOffset; 
  }
}

void mouseReleased() {
  locked = false;
}


void sendOsc() {
  OscMessage msg = new OscMessage("/wek/inputs");
  msg.add((float)bx); 
  msg.add((float)by);
  oscP5.send(msg, dest);
}
```

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/1886de3d-7bef-424e-bb89-929b23151578)

## Código:

Al final y después de los dilemas, pudimos reconocer debido a las entradas y salidas que empleaba wekinator, además de la conexión entre puertos, lo más relevante era añadir los OSCP5, para poder conectar de manera adecuada, además de conseguir que el wekinator reaccionara al mouse, llevando a cabo un trackeo directo de posiciones. Así mismo, agregamos texto en el centro del lienzo, en donde se entregan las instrucciones para que el usuario entienda lo que tiene que hacer con el código.

El código final es el siguiente: 
```
import oscP5.*; //  Importar librería oscP5 
import netP5.*; // Improtar librería netP5

OscP5 oscP5; // // Serie de herramientas para enviar y recibir mensajes OSC en Processing
NetAddress dest; // Conexiones de red con Processing y Wekinator

// Declara un ArrayList llamado blobs, que almacenará objetos de la clase Blob.
ArrayList<Blob> blobs; 

// Tamaño del lienzo
void setup() {
  size(1200, 800);
  blobs = new ArrayList<Blob>();
  // Inicializar la conexión OSC con Wekinator en el puerto 9000
  oscP5 = new OscP5(this, 9000);
  dest = new NetAddress("127.0.0.1", 6448); 
}

// Lienzo 
void draw() {
  background(255);
// Agregar el texto al centro del lienzo
  fill(0); // Color del texto (negro)
  textAlign(CENTER, CENTER); // Alineación del texto al centro del lienzo
  textSize(15); // Tamaño del texto
  text("Haz click con el mouse para que aparezcan Metaballs, apreta espacio para limpiar el lienzo. Entrena la metaball con Wekinator para detectar la posición del click.", width/2, height/2); // Texto y posición
  
  // Código que va actualizando los blobs
  
  loadPixels();
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      float sum = 0; // Suma de las metaballs
      for (Blob b : blobs) {
        float d = dist(x, y, b.x, b.y);
        sum += b.r / d;
      }
      if (sum > 1 && sum < 1.5) { // Esto es para el contorno de la metaball. Si la suma está entre 1 y 1.5 se asigna un color. 
        pixels[y * width + x] = color(253, 202, 225); // Color aleatorio para el contorno de la metaball
      } 
    }
  }

// Actualización de los píxeles cuando se modifica el lienzo 
  updatePixels();
  
// Movimiento de los blobs o metaballs
  for (Blob b : blobs) {
    b.move();
    b.display();
  }
}

// Agrega un nuevo blob que se mueve de manera aleatoria al hacer click con el mouse
void mousePressed() {
  // Radio aleatorio entre 10 y 50. Velocidades aleatorias entre 2 y -2.
  blobs.add(new Blob(mouseX, mouseY, random(10, 50), random(-2, 2), random(-2, 2))); 
  
  // Enviar datos a Wekinator (X e Y del clic y la instrucción de izquierda/derecha)
  OscMessage msg = new OscMessage("/wek/inputs");
  msg.add((float) mouseX / width); // Normalizando la posición X entre 0 y 1
  msg.add((float) mouseY / height); // Normalizando la posición Y entre 0 y 1
  if (mouseX < width/3) {
    msg.add(1); // Izquierda
  } else if (mouseX > 2*width/3) {
    msg.add(2); // Centro
  } else {
    msg.add(3); // Derecha
  }
  
  oscP5.send(msg, dest);
}

// Clase del blob
class Blob {
  float x, y; // Posición
  float r; // Radio
  float xSpeed, ySpeed; // Velocidades de los ejes x e y
  color blobColor; 
  color outlineColor; 

  Blob(float x, float y, float r, float xSpeed, float ySpeed) {
    this.x = x; // posición inicial del eje x
    this.y = y; // posición inicial del eje y
    this.r = r; // radio inicial del círculo
    this.xSpeed = xSpeed; // velocidad inicial del eje x
    this.ySpeed = ySpeed;  // velocidad inicial del eje y
    this.blobColor = color(random(255), random(255), random(255)); // Color aleatorio del blob o metaball
    colorMode(RGB); // Modo del color, en este caso, RGB
  }
  
  void move() {
    x += xSpeed;
    y += ySpeed;
    
 // Rebote con el borde de la ventana o lienzo
    if (x < 0 || x > width) {
      xSpeed *= -1;
    }
    if (y < 0 || y > height) {
      ySpeed *= -1;
    }
  }
 
 // Configuración de las metaballs
  void display() {
    ellipse(x, y, r * 2, r * 2); // tamaño del círculo
    fill(blobColor); 
    noStroke();
  }
}

void keyPressed() {
  if (key == ' ') { // Al presionar el espacio, se reinicia el lienzo.
    setup(); // Reinicia el lienzo llamando al comando setup. 
  }
}
```

## Capturas de pantalla: 

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/f8a19248-d97c-408b-a4a4-42770f6a0e3b)

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/7959bf73-bf8b-43e9-a2e1-dcb1c6650f21)

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/b484a51e-4fd8-4817-9d6f-1d1d60c111ac)

Video probando el código: https://www.youtube.com/watch?v=8H4D6vcgyEw&feature=youtu.be

Video entrenando el Wekinator: https://youtu.be/4g4l8J5oT-E

## Conclusiones:

Nos pareció muy interesante trabajar con Processing y Wekinator. Si bien no logramos llevar a cabo un output como lo deseábamos, ya que nuestra idea era entrenar para que cuando una metaball estuviera en la parte superior del lienzo, apareciera otra partícula sin necesidad del mouse, no obstante, no encontramos referentes para concretarlo. A pesar de esto, si aprendimos a usar, aunque sea con lo básico, dichos programas. Además, nos gustó el resultado obtenido.
Llegamos a la conclusión de que la programación tiene un área muy grande para abarcar, ya sea en el diseño, el arte generativo, la música y además, la inteligencia artificial. Sin embargo, sentimos que es complicado hacer un proyecto por nuestra cuenta desde cero, dependiendo netamente de alguien que te enseñe a utilizarlo, como es el caso del docente o de informáticos. Creemos que sería una buena idea mejorar las interfaces de los softwares relacionados al desarrollo de códigos, de una manera que sea más didáctica y accesible para los estudiantes que están iniciando en este campo. Con esto no nos referimos únicamente a los programas utilizados, sino también a otros como Touch Designer o Arduino.

## Citas y referentes: 

1. Magic Fluids by Roman De Giuli: https://www.youtube.com/watch?v=1MieluM0c6c&ab_channel=RomanDeGiuli
  
2. The Coding Train (https://thecodingtrain.com/challenges/28-metaballs) 
   
3. Metaballs in Processing: https://www.youtube.com/watch?v=PrFgIBchqno&ab_channel=HariDulal 
   
4. Coloful Metaballs in Processing: https://www.youtube.com/watch?v=LZfmCuEPRIM&ab_channel=AbangFarhan 
   
5. Página oficial de Processing: https://processing.org/
   
6. Metaballs by Richard Bourne: https://openprocessing.org/sketch/1527761
   
7. Código en Github de The Coding Train: https://github.com/CodingTrain/website-archive/tree/main/CodingChallenges/CC_028_MetaBalls/Processing/CC_028_MetaBalls
   
8. Metaball by aadebdeb: https://openprocessing.org/sketch/375374

9. Metaball Shader by Myria Nezvitskaya: https://openprocessing.org/sketch/1726115
  
10. Código de Metaball en un foro dedicado a Processing: https://forum.processing.org/one/topic/making-things-glow-like-in-the-metaball-example.html

11. Artículo sobre Metaballs en Processing: https://www.gamedev.net/articles/programming/graphics/exploring-metaballs-and-isosurfaces-in-2d-r2556/

12. Para agregar texto en Processing: https://www.youtube.com/watch?v=L0E2AKMwWLM&ab_channel=NoobsCourse

13. Colorful Gradient Abstract Liquid by Shutter Footage: https://www.youtube.com/watch?v=SDHX1KyLleg&ab_channel=ShutterFootage

