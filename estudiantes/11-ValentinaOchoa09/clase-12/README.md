# Evaluación 2:

**Estudiantes:**

Natalie Astudillo.

Valentina Ochoa.

**Ideas previas por The Coding Train:**

1. https://www.youtube.com/watch?v=ABN_DWnM5GQ

   (descp)

2. https://www.youtube.com/watch?v=TOrVsLklltM

   (descp)

3. https://github.com/Pawandeep-prog/virtual-paint

   (descp)

4. https://www.youtube.com/watch?v=TOrVsLklltM

   (descp)

5. https://www.youtube.com/watch?v=ZiwZaAVbXQo

   (descp)

6. https://www.youtube.com/watch?v=UPgxnGC8oBU&t=406s

   (descp)

7. https://www.youtube.com/watch?v=3MqJzMvHE3E

   (descp)

**Primera idea de proyecto a realizar**

Snake Game (juego de la serpiente)

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/fda6d9a5-b9a8-40ea-9ab0-59a5a9a4058e) (citar)

**¿Qué es el Snake Game?**

Snake Game o mejor conocido al español como "el juego de la serpiente", es un videojuego lanzado a mediados de los 70' por Nokia, para los dispositivos electrónicos popularizando su formato en dispositivos telefónicos a modo de entretención para los usuarios.

En el juego, el usuario desplaza a una velocidad constante un animal; la serpiente, la cual se encuentra dentro de un plano delimitado. El animal va recogiendo alimentos (o algún otro elemento) mientras trata de evitar golpearse contra su cola y/o las paredes que rodean el área del juego. Cada vez que la serpiente se come un pedazo de comida, la cola crece más provocando que aumente la dificultad del juego.

El usuario controla la dirección de la cabeza de la serpiente (arriba, abajo, izquierda o derecha) y el cuerpo de la serpiente la sigue. Además, el usuario/jugador no puede detener el movimiento de la serpiente, mientras que el juego está en marcha, el animal seguirá avanzando y recolectando puntos.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/9ebbb0dd-aca3-4f5a-9233-2a062f943ada) (citar)

**Lista de materiales**

- Teachable Machine.
- Webcam.
- Editor de p5js.
- Ml5. 

**Proceso clase 07 de junio 2024**

1. Revisamos vídeos previos, para así poder entrenar data en Teachable Machine.
   
2. Se hizo una visualización de la playlist de The Coding Train en donde entregaba tutoriales de Teachable Machine, la cual proporcionaba todas las ideas para el proyecto.
   
3. Se comenzó a entrenar un primer modelo en Teachable Machine con "Proyecto de Imagen", estableciendo las clases arriba, abajo, izquierda y derecha.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/1b10350e-2339-4d66-a22d-1ccb46a521ff) (cita)

_Captura de pantalla entrenando el primer modelo_

Al probarlo en otra persona, no detectaba el modelo correctamente ya que, se definía la izquierda como arriba o abajo, sin seguir el objetivo principal.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/d7ce4d94-0204-4fb2-99b3-fc6e19418781) (cita)

**Primer análisis:**

El primer modelo entrenado en Teachable Machine, no resultó como esperábamos, ya que observamos que al entrenarlo en un fondo específico, nos detectaba solo en ese espacio. Esto se debe a que utilizamos el Proyecto de Imagen y no el Proyecto de Posturas, por lo que no entrenamos posiciones, sino más bien una imagen sobre otra.

Utilizar el proyecto de posturas es acorde a lo que deseamos ejecutar (entrenar con una forma/postura adecuada para proceder a la reacción de la serpiente dentro del juego gráfico). Por otro lado, emplear el proyecto de imagen considera más que nada la visual como píxeles (clasificando al usuario como objeto).

4. Entrenamos un segundo modelo en base al análisis realizado anteriormente, esta vez usando el Proyecto de Posturas. Establecimos las mismas clases: izquierda, derecha, arriba y abajo.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/1d10a5d3-d72a-4932-bb63-a4bd94b087d8) (cita)

**Segundo análisis:**

Nos percatamos que al momento de entrenar el modelo, la cámara grababa de la mitad del cuerpo para arriba por estar en un espacio acotado por lo que, al probarla en otros espacios la cámara captaba el cuerpo completo, mezclando la parte de los brazos con las piernas.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/0923d70f-4aae-4af8-b507-beb614663722) (cita)

5. A partir del análisis anterior, hicimos la prueba de grabarnos al exterior de la sala en un fondo liso, con la cámara de nuestra tablet distintos videos, cada uno con las diferentes posiciones (izquierda, derecha, abajo y arriba). Posteriormente, dividimos estos videos en frames (usando un convertidor online) para importarlos en Teachable Machine.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/fe6b1eba-fc73-4e31-a261-ffaab9b96b4f) (cita)

División de los videos en frames (https://www.online-convert.com/es/result#)

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/4c82a8d2-dd61-49ce-b7e2-fa5df9d6c804) (cita)

_Importando los videos en Teachable Machine_

**Tercer análisis:**

En esta ocasión, la posición izquierda presentó problemas. Esto es debido a que los fotogramas no tomaban el cuerpo completo.

**Proceso 13 de junio**

Este día quisimos dejar entrenado el modelo de Teachable Machine, para así poder llegar a las clases del viernes 14 de junio y avanzar con la parte del código. Por lo tanto, grabamos las posturas en el living de nuestras casas, con las mismas indicaciones anteriores: derecha, izquierda, arriba y abajo.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/e750f5f6-4c73-4ef2-b248-cd0ab303b98c)

**Instrucciones de postura**

Para la derecha, debes levantar el brazo derecho en un ángulo de 90 grados. También, puedes bajarlo 90 grados a la derecha.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/7b8d9876-3d87-45bb-a832-d442e0eb35f9)

En el caso de la izquierda, se aplica lo mismo que en la derecha, pero para el lado izquierdo, valga la redundancia.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/8374a563-406d-4852-a283-c971287dba4e)

Para la postura arriba, debes levantar ambos brazos en 90 grados.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/c098dc3f-1a29-457d-81e7-a0159d760588)

Por último, para hacer la postura de abajo, debes bajar ambos brazos en un ángulo de 90 grados.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/a2bfdeb9-c9cc-4c41-a92c-fff050ad1a72)

**Modelo entrenado**

https://teachablemachine.withgoogle.com/models/Kuml-rphX/

**Código base**

El código base para llevar a cabo el proyecto fue encontrado en el canal de youtube The Coding Train. Es en base a este código con el cual procedemos a realizar las modificaciones pertinentes.

```
// *** HERE IS CODE YOU CAN EDIT ******//

// REPLACE THIS WITH YOUR OWN TEACHABLE MACHINE MODEL!!
let imageModelURL = "https://teachablemachine.withgoogle.com/models/rfrmQGqz_/";

// IF YOU WANT TO TRY KEYBOARD CHANGE TO "TRUE";
let keyboard_control = false;

// Higher numbers are slower!!! Try 1 to 60
let speed = 5;


// *** THE REST OF THE CODE ******//

let video;
let flipVideo;
let label = "waiting...";

let classifier;

// STEP 1: Load the model!
function preload() {
  classifier = ml5.imageClassifier(imageModelURL + "model.json");
}

let snake;
let rez = 20;
let food;
let w;
let h;

function setup() {
  createCanvas(640, 480);
  // Create the video

  // Create the video
  video = createCapture(VIDEO);
  video.size(320, 240);
  video.hide();

  flippedVideo = ml5.flipImage(video);
  // Start classifying
  classifyVideo();

  w = floor(width / rez);
  h = floor(height / rez);
  // frameRate(5);
  snake = new Snake();
  foodLocation();
}

// Get a prediction for the current video frame
function classifyVideo() {
  flippedVideo = ml5.flipImage(video);
  classifier.classify(flippedVideo, gotResult);
}

// When we get a result
function gotResult(error, results) {
  // If there is an error
  if (error) {
    console.error(error);
    return;
  }
  // The results are in an array ordered by confidence.
  label = results[0].label;
  // Classifiy again!
  controlSnake();
  classifyVideo();
}

function foodLocation() {
  let x = floor(random(w));
  let y = floor(random(h));
  food = createVector(x, y);
}

function keyPressed() {
  if (keyboard_control) {
    if (keyCode == RIGHT_ARROW) snake.setDir(1, 0);
    if (keyCode == LEFT_ARROW) snake.setDir(-1, 0);
    if (keyCode == UP_ARROW) snake.setDir(0, -1);
    if (keyCode == DOWN_ARROW) snake.setDir(0, 1);
  }
}

function controlSnake() {
  // console.log(label);
  if (!keyboard_control) {
    if (label === "UP") {
      // UP
      snake.setDir(0, -1);
    } else if (label === "RIGHT") {
      // RIGHT
      snake.setDir(1, 0);
    } else if (label === "LEFT") {
      // LEFT
      snake.setDir(-1, 0);
    } else if (label === "DOWN") {
      // DOWN
      snake.setDir(0, 1);
    }
  }
}

function draw() {
  background(220);
  if (!keyboard_control) {
    image(flippedVideo, 0, 0, 160, 120);
    textSize(32);
    fill(255);
    stroke(0);
    text(label, 10, 40);
  }

  scale(rez);
  if (snake.eat(food)) {
    foodLocation();
    snake.update();
  }
  if (frameCount % speed == 0) {
    snake.update();
  }
  snake.show();

  if (snake.endGame()) {
    print("END GAME");
    background(255, 0, 0);
    noLoop();
  }

  noStroke();
  fill(255, 0, 0);
  rect(food.x, food.y, 1, 1);
}
```

**Análisis del código base**

El código realizado por The Coding Train está hecho considerando un modelo entrenado de Teachable Machine de Proyecto de Imagen. En nuestro caso, entrenamos un modelo de Proyecto de Posturas, por lo cual tuvimos dos salidas: volver a entrenar un modelo, pero esta vez de un proyecto de imagen o hacer las modificaciones necesarias en el código para relacionarlo con nuestro modelo de posturas. En este caso, elegimos la segunda opción. 

**Proceso 17 de junio** 

Investigamos sobre cómo importar un modelo entrenado en Teachable Machine de proyecto de posturas, encontrando la función **Pose Net** en videos de The Coding Train, el cual permite detectar las posturas. A partir de esto, realizamos la modificaciones necesarias en el código para aplicarlo.

**Código de sketch.js:**

```
// Cargar el modelo entrenado

let poseModelURL = 'https://teachablemachine.withgoogle.com/models/29Q7HHyno/';

let video;
let poseNet; // Incluimos pose y pose net al código
let poses = [];
let label = 'Cargando...';

let snake;
let rez = 20;
let food;
let w;
let h;
let speed = 5;
let gameStarted = false;

function setup() {
  createCanvas(600, 400);
  video = createCapture(VIDEO);
  video.size(width, height);
  video.hide();

  poseNet = ml5.poseNet(video, modelLoaded);
  poseNet.on('pose', gotPoses);

  w = floor(width / rez);
  h = floor(height / rez);
  snake = new Snake();
  foodLocation();
}

function modelLoaded() {
  console.log('Modelo de posturas cargado');
}

function gotPoses(results) {
  poses = results;
}

function foodLocation() {
  let x = floor(random(w));
  let y = floor(random(h));
  food = createVector(x, y);
}

// Función para mover la serpiente con el teclado una vez inicia el juego

function keyPressed() {
  if (!gameStarted) {
    gameStarted = true;
    snake.setDir(0, 1); // Empieza moviéndose hacia abajo
  } else {
    if (keyCode === UP_ARROW && snake.ydir === 0) {
      snake.setDir(0, -1);
    } else if (keyCode === DOWN_ARROW && snake.ydir === 0) {
      snake.setDir(0, 1);
    } else if (keyCode === LEFT_ARROW && snake.xdir === 0) {
      snake.setDir(-1, 0);
    } else if (keyCode === RIGHT_ARROW && snake.xdir === 0) {
      snake.setDir(1, 0);
    }
  }
}

// Lienzo del canvas

function draw() {
  background(220);
  image(video, 0, 0, width, height);
  textSize(32);
  fill(255);
  stroke(0);
  text(label, 10, 40);
  text('Puntuación: ' + (snake.len - 1), 10, 80);

// Reflejar imagen

  push();
  translate(width, 0);
  scale(-1, 1);
  image(video, 0, 0, width, height);
  pop();

  scale(rez);
  if (snake.eat(food)) {
    foodLocation();
    snake.grow();
  }
  if (frameCount % speed === 0 && gameStarted) {
    snake.update();
  }
  snake.show();

  if (snake.endGame()) {
    console.log('JUEGO TERMINADO');
    background(255, 0, 0);
    noLoop();
  }

  noStroke();
  fill(255, 0, 0);
  rect(food.x, food.y, 1, 1);

// Función para controlar la serpiente

  controlSnake();
}

// Código de la serpiente

class Snake {
  constructor() {
    this.body = [];
    this.body[0] = createVector(floor(w / 2), floor(h / 2));
    this.xdir = 0;
    this.ydir = 0;
    this.len = 1; // Comienza con longitud 1
  }

  setDir(x, y) {
    this.xdir = x;
    this.ydir = y;
  }

  update() {
    let head = this.body[this.body.length - 1].copy();
    this.body.shift();
    head.x += this.xdir;
    head.y += this.ydir;
    this.body.push(head);
  }

// Función para que la serpiente crezca al comer

  grow() {
    let head = this.body[this.body.length - 1].copy();
    this.len++;
    this.body.push(head);
  }

// Condiciones para que el juego termine

  endGame() {
  let x = this.body[this.body.length - 1].x;
  let y = this.body[this.body.length - 1].y;

// Límite del canvas para que la serpiente muera

  if (x > w - 1 || x < 0 || y > h - 1 || y < 0) {
    return true;
  }

// La serpiente muere al colisionar consigo misma
  for (let i = 0; i < this.body.length - 1; i++) {
    let part = this.body[i];
    if (part.x === x && part.y === y) {
      return true;
    }
  }
  return false;
}

// Función para que la serpiente coma

  eat(pos) {
  let head = this.body[this.body.length - 1];
  let snakeX = head.x;
  let snakeY = head.y;
  let foodX = pos.x;
  let foodY = pos.y;

// Agregamos estas funciones para intentar evitar que la serpiente muera al comer, convertimos las coordenadas de la serpiente y la comida a la misma escala

  snakeX *= rez;
  snakeY *= rez;
  foodX *= rez;
  foodY *= rez;

// Comparamos las posiciones con un margen de error

  let d = dist(snakeX, snakeY, foodX, foodY);
  if (d < 1) {
    return true;
  }
  return false;
}

  show() {
    for (let i = 0; i < this.body.length; i++) {
      fill(0);
      noStroke();
      rect(this.body[i].x, this.body[i].y, 1, 1);
    }
  }
}

// Función para controlar la serpiente basada en las poses del modelo

function controlSnake() {
  if (!gameStarted && poses.length > 0) {
    let pose = poses[0].pose;
    let leftWrist = pose.keypoints[9].position;
    let rightWrist = pose.keypoints[10].position;

    if (abs(leftWrist.x - rightWrist.x) < 50) {
      gameStarted = true;
      snake.setDir(0, 1); // Empieza moviéndose hacia abajo
    }
  }

  if (gameStarted && !keyIsPressed) {
    let pose = poses[0].pose;
    let nose = pose.keypoints[0].position;
    let leftWrist = pose.keypoints[9].position;
    let rightWrist = pose.keypoints[10].position;

    if (leftWrist.y < nose.y && rightWrist.y < nose.y) {
      label = 'UP';
      snake.setDir(0, -1);
    } else if (leftWrist.x < nose.x && rightWrist.x < nose.x) {
      label = 'DOWN';
      snake.setDir(0, 1);
    } else if (leftWrist.x > nose.x && rightWrist.x > nose.x) {
      label = 'RIGHT';
      snake.setDir(1, 0);
    } else if (leftWrist.y > nose.y && rightWrist.y > nose.y) {
      label = 'LEFT';
      snake.setDir(-1, 0);
    }
  }
}
```

**Quinto análisis** 

Hasta este punto, el código desarrollado funcionaba relativamente bien, sin embargo, presentó algunos inconvenientes, tales como que la serpiente muere al comer la comida, en vez de crecer. Además, observamos que las poses entrenadas no se detectaban correctamente, teniendo que girar todo el torso para que funcionen. Tratamos de corregir este error durante los días 17, 18 y 19 de junio, pero no obtuvimos resultado, por lo que buscamos complementar este proyecto con otro. 

# Proyecto final: Dibujando con un modelo entrenado 

La idea de este proyecto surge de investigaciones de proyectos realizados con Ml5 en la red social Youtube, en donde tuvimos como referente a The Coding Train, con ideas como clasificación de dibujos, clasificación de sonidos y clasificación de objetos en webcam. No obstante, nuestro mayor exponente que nos entregó el código base para hacer el trabajo fue Steve's Makerspace, quien nos proporciona la idea de dibujar con tu dedo a través de la cámara y eligiendo colores, con un modelo entrenado de Hand Space. 

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/d1dacb59-b6f3-4c59-b343-c7061b2d0a5d)

_Idea de proyecto por Steve's Makerspace: https://www.youtube.com/watch?v=96sWFP9CCkQ&ab_channel=Steve%27sMakerspace_

**Materiales** 

- Editor de p5js.
- Ml5.js.
- Webcam.
- Markdown para escribir este documento.

**Definición de proyecto:** 

Nuestro proyecto busca que el usuario pueda dibujar en un lienzo, utilizando su cuerpo como un controlador mediante la cámara web. Implementa el uso de ml5 con un modelo de Hand Pose previamente entrenado con 17 puntos claves de la mano. 

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/64304c42-f625-4555-8d13-94d9446564a1)

_Modelo de Hand Pose proporcionado por ml5: https://learn.ml5js.org/#/reference/handpose_

**Instrucciones del código** 

El usuario debe abrir la palma de la mano para que cargue el modelo de ml5 de Hand Pose. Una vez el modelo cargue, aparecerá en la parte inferior 'Model Ready!'.

Posterior a esto, para dibujar, debe estirar el dedo índice y moverlo por el lienzo.

Para seleccionar colores, debe mover el dedo al círculo de color y simular como si el dedo estuviera haciendo click. 

Si quiere borrar lo dibujado, debe presionar sobre el círculo negro. 

**Proceso del proyecto**

En primer lugar, revisamos el modelo previamente entrenado que proporciona Ml5, el cual funcionaba correctamente.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/119694d4-9a83-474d-8a0e-6bf0090d3d3d)

_Modelo de Hand Pose por Ml5: https://editor.p5js.org/ml5/sketches/Handpose_Webcam_

El código proporcionado para utilizar este modelo es el siguiente:

```
let handpose;
let video;
let predictions = [];

function setup() {
  createCanvas(640, 480);
  video = createCapture(VIDEO);
  video.size(width, height);

  handpose = ml5.handpose(video, modelReady);

  // This sets up an event that fills the global variable "predictions"
  // with an array every time new hand poses are detected
  handpose.on("predict", results => {
    predictions = results;
  });

  // Hide the video element, and just show the canvas
  video.hide();
}

function modelReady() {
  console.log("Model ready!");
}

function draw() {
  image(video, 0, 0, width, height);

  // We can call both functions to draw all keypoints and the skeletons
  drawKeypoints();
}

// A function to draw ellipses over the detected keypoints
function drawKeypoints() {
  for (let i = 0; i < predictions.length; i += 1) {
    const prediction = predictions[i];
    for (let j = 0; j < prediction.landmarks.length; j += 1) {
      const keypoint = prediction.landmarks[j];
      fill(0, 255, 0);
      noStroke();
      ellipse(keypoint[0], keypoint[1], 10, 10);
    }
  }
}
```
**Código base para el proyecto** 

Realizado por Steve's Makerspace

```
// Pointer finger to draw or pick color; flat "stop" hand to move pointer.  If it's having trouble tracking your finger, either change your background or try including your middle finger with your pointer finger.
//Handpose code by the ml5.js team.  Visit https://ml5js.org/
// Drawing code by Steve's Makerspace
// Video: https://youtu.be/96sWFP9CCkQ

let handpose;
let video;
let predictions = [];
let canvas2;
let prevtop = null;
let prevleft = null;
let leftArr = [];
let topArr = [];
let leftAvg, topAvg;
let colr = 0;
let colb = 255;
let colg = 0;
let pointerX, pointerY, knuckle, ring;

function setup() {
  createCanvas(640, 480);
  canvas2 = createGraphics(width, height);
  makesquares();
  video = createCapture(VIDEO);
  video.size(width, height);

  handpose = ml5.handpose(video, modelReady);

  // This sets up an event that fills the global variable "predictions"
  // with an array every time new hand poses are detected
  handpose.on("predict", (results) => {
    predictions = results;
  });

  // Hide the video element, and just show the canvas
  video.hide();
}

function modelReady() {
  console.log("Model ready!");
}

function draw() {
  translate(width, 0);
  scale(-1, 1);
  //  background(0);

  image(video, 0, 0, width, height);
  image(canvas2, 0, 0);

  // We can call both functions to draw all keypoints and the skeletons
  drawKeypoints();
}

// A function to draw ellipses over the detected keypoints
function drawKeypoints() {
  for (let i = 0; i < predictions.length; i += 1) {
    const prediction = predictions[i];
    canvas2.strokeWeight(10);
    for (let j = 0; j < prediction.landmarks.length; j += 1) {
      const keypoint = prediction.landmarks[j];
      fill(0, 255, 0);
      noStroke();
      //   ellipse(keypoint[0], keypoint[1], 10, 10);
      if (j == 8) {
        pointerX = keypoint[0];
        pointerY = keypoint[1];
        //print(keypoint);
      } else
      if (j == 14) {
        knuckle = keypoint[1];
      } else
      if (j == 16) {
        ring = keypoint[1];
      }
    }
    //If the ring finger is not extended then draw a line or pick a color
    if (knuckle < ring) {
      fill(0);
      ellipse(pointerX, pointerY, 10, 10);
      if (pointerX < width - 70) {
        getaverages();

        canvas2.stroke(colr, colg, colb);
        if (leftArr.length > 2 && prevleft>0) {
          canvas2.line(prevleft, prevtop, leftAvg, topAvg);
          if (prevleft > 0) {
          prevleft = leftAvg;
          prevtop = topAvg;}
          else{
            prevleft = pointerX;
            prevtop = pointerY;
          }
        }
      } else {
        if (pointerY < 70) {
          colr = 255;
          colg = 0;
          colb = 0;
        }
        
        if (pointerY > 70 && pointerY < 140) {
          colr = 0;
          colg = 255;
          colb = 0;
        }
        if (pointerY > 140 && pointerY < 210) {
          colr = 0;
          colg = 0;
          colb = 255;
        }
        if (pointerY > 210 && pointerY < 280) {
          makesquares();
        }
      }
    } else {
      //If the hand is extended, then just mark where it is and clear the arrays
      fill(255);
      ellipse(pointerX, pointerY, 10, 10);
      leftArr.length = 0;
      topArr.length = 0;
      leftAvg = 0;
      topAvg = 0;
      prevleft = pointerX;
      prevtop = pointerY;
    }
  }
}

function getaverages() {
  if (leftArr.length > 5) {
    leftArr.splice(0, 1);
    topArr.splice(0, 1);
  }
  if (pointerX > 0 ) {
  leftArr.push(pointerX);
  topArr.push(pointerY);
  }
  let leftSum = 0;
  let topSum = 0;
  for (i = 0; i < leftArr.length; i++) {
    leftSum = leftSum + leftArr[i];
    topSum = topSum + topArr[i];
  }
  leftAvg = leftSum / leftArr.length;
  topAvg = topSum / topArr.length;
  
}

function makesquares() {
  canvas2.background(255);
  canvas2.clear();
  //background(255);
  //clear();
  canvas2.fill(255, 0, 0);
  canvas2.rect(width, 0, -70, 70);
  canvas2.fill(0, 255, 0);
  canvas2.rect(width, 70, -70, 70);
  canvas2.fill(0, 0, 255);
  canvas2.rect(width, 140, -70, 70);
  canvas2.fill(0, 0, 0);
  canvas2.rect(width, 210, -70, 70);
  canvas2.stroke(255, 0, 0);
  canvas2.strokeWeight(10);
  canvas2.line(width - 5, 215, width - 65, 275);
}
```

**Modificaciones**

1. Cambiamos los cuadrados por círculos.

<p align="center">
  <img src="![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/87ebdd4b-31ca-4202-b905-ca53e630e981)" />
</p>

2. Cambiamos los colores por tonalidades pasteles.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/735f2e16-38f3-4fdd-988d-ab5cf989de16)

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/ad1e6a05-a171-456a-a63f-5049a3d94923)

3. Al modificar la posición de los círculos en el canvas, debimos modificar las coordenadas de Y. Esto debido a que para pintar del color del círculo, debes mantener el rango en donde haces click.

4. 

**Referencias:**

The Coding Train

1. https://www.youtube.com/playlist?list=PLRqwX-V7Uu6aJwX0rFP-7ccA6ivsPDsK5
 
2. https://www.youtube.com/watch?v=AaGK-fj-BAM
   
3. https://www.youtube.com/watch?v=OMoVcohRgZA&t=0s
   
5. https://www.youtube.com/watch?v=FYgYyqxqAw&list=PL0FrmHECzRfCDMRpGPpQwj4WpGv51Ip_5&ab_channel=TheCodingTrain
