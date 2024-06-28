# Evaluación 2:

**Estudiantes:**

Natalie Astudillo.

Valentina Ochoa.

**Ideas previas:**

1. Utilización de partículas con un reactivo ante la música usando TouchDesigner.

2. Utilización de partículas/colores con imagen.

3. Clasificación de objetos con TensorFlow.

4. Arte generativo con p5js.

5. Clasificación de dibujos con ml5.js.

**Ideas The Coding Train:**

1. https://www.youtube.com/watch?v=ABN_DWnM5GQ

   (Clasificación de dibujos con DoodleNet, el cual es un modelo preentrenado de ml5.js que es capaz de reconocer 345 categorías de dibujos a mano gracias a su aprendizaje a base de garabatos y trazados hechos por más de 15 millones de personas. El modelo se entrena con el conjunto de datos de Google QuickDraw y se puede utilizar para clasificar dibujos en tiempo real.)

2. https://www.youtube.com/watch?v=TOrVsLklltM

   (El vídeo enseña y muestra cómo usar Teachable Machine, para crear un modelo de clasificación de sonidos tales como: "silbidos, campanas y ukelele". El modelo se entrena a base de utilizar muestras de audio e integrarlas a un código base que es el juego de serpientes, donde el movimiento de la serpiente se encuentra controlado por los sonidos.)

3. https://github.com/Pawandeep-prog/virtual-paint - https://www.youtube.com/watch?v=dwCaEFFXq74

   (El vídeo realiza una demostración del creador dibujando con los dedos por medio de la cámara, cambiando de formas, estilos e incluso borrando. Asimismo, su Github es una entrada a los códigos que realizó en Python con el objetivo del proyecto.)

4. https://www.youtube.com/watch?v=ZiwZaAVbXQo

   (Creación de un pintor virtual utilizando IA y OpenCV Python. El proyecto busca rastrear la mano y usar puntos para dibujar en la pantalla de manera que el resultado sea en tiempo real, seleccionando colores y un borrador.)

5. https://www.youtube.com/watch?v=UPgxnGC8oBU&t=406s

   (En este vídeo, se enseña y muestra cómo utilizar Teachable Machine para poder controlar un juego de serpientes mediante el reconocimiento de gestos manuales. El modelo se entrena a base de la clasificación para reconocer los movimientos de izquierda, derecha, arriba y abajo.)

6. https://www.youtube.com/watch?v=3MqJzMvHE3E

   (El vídeo enseña cómo crear una red neuronal con ml5.js para clasificar formas geométricas tales como: "círculos, cuadrados y triángulos". Recopilando datos para entrenar el modelo e implementarlo a la clasificación de formas dibujadas a mano.)

**Proyecto a realizar**

Snake Game (juego de la serpiente)

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/fda6d9a5-b9a8-40ea-9ab0-59a5a9a4058e) 
Coolmath Games (2024). Snake Game [Screenshot, imagen web]. https://www.coolmathgames.com/0-snake 

¿Qué es Snake Game?

Snake Game o mejor conocido al español como "el juego de la serpiente", es un videojuego lanzado a mediados de los 70' por Nokia, para los dispositivos electrónicos tales como equipos de escritorio (pc) y celulares, popularizando su formato en dispositivos telefónicos a modo de entretención para los usuarios, con el fin de que fuese transportable.

En el juego, el usuario desplaza a una velocidad constante un animal; la serpiente, la cual se encuentra dentro de un plano delimitado de píxeles. El animal va recogiendo alimentos (o algún otro elemento) mientras trata de evitar golpearse contra su cola y/o las paredes que rodean el área del juego. Cada vez que la serpiente se come un pedazo de comida, la cola crece más provocando así que aumente la dificultad del juego.

El usuario controla la dirección de la cabeza de la serpiente (arriba, abajo, izquierda o derecha) y el cuerpo de la serpiente la sigue. Además, el usuario/jugador no puede detener el movimiento de la serpiente, mientras que el juego está en marcha, el animal seguirá avanzando y recolectando puntos.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/9ebbb0dd-aca3-4f5a-9233-2a062f943ada) TecnoXplora (2024). El juego de la serpiente de los Nokia ya está en Facebook Messenger [Página Web, imagen web]. https://www.lasexta.com/tecnologia-tecnoxplora/apps/juego-serpiente-nokia-esta-facebookmessenger_2017022758b522300cf2fa92de5445be.html

**Lista de materiales**

- Teachable Machine.
- Webcam.
- Editor de p5js.

**Proceso clase 07 de junio 2024**

1. Fueron resvisados vídeos previos, para así poder entrenar data en Teachable Machine.
2. Se hizo una visualización de la playlist de The Coding Train, quien entregó toda la información para llevar a cabo el proyecto.
3. Se comenzó a entrenar un primer modelo en Teachable Machine con "Proyecto de Imagen", estableciendo las clases arriba, abajo, izquierda y derecha.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/1b10350e-2339-4d66-a22d-1ccb46a521ff) Ochoa,V. (2024). Entrenar Teachable Machine [Screenshot]. Computadores de la sala G34, FAU, Santiago de Chile.

Al probarlo en otra persona, no detectaba el modelo correctamente ya que, se definía la izquierda como arriba o abajo, sin seguir el objetivo principal.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/d7ce4d94-0204-4fb2-99b3-fc6e19418781) Astudillo,N. (2024). Entrenar Teachable Machine [Screenshot]. Computadores de la sala G34, FAU, Santiago de Chile.

**Primer análisis:**

El primer modelo entrenado en Teachable Machine, no resultó como se esperaba ya que, se notificó mediante observación que al entrenar el modelo bajo un fondo específico, netamente podía detectar solo ese espacio. Esto se debe a que utilizamos el Proyecto de Imagen y no el Proyecto de Posturas, por lo que no fue entrenado de la mano de posiciones, sino más bien una imagen sobre otra, reconociendo píxeles en específico.

Utilizar el proyecto de posturas es acorde a lo que se desea ejecutar (entrenar con una forma/postura adecuada para proceder a la reacción de la serpiente dentro del juego gráfico). Por otro lado, emplear el proyecto de imagen considera más que nada la visual como píxeles (clasificando al usuario como objeto).

4. Fue entrenado un segundo modelo en base al análisis realizado anteriormente, esta vez usando el Proyecto de Posturas, en base a ello, fueron establecidas las mismas clases: "izquierda, derecha, arriba y abajo".

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/1d10a5d3-d72a-4932-bb63-a4bd94b087d8)  Ochoa,V. (2024). Entrenar Teachable Machine [Screenshot]. Computadores de la sala G34, FAU, Santiago de Chile.

**Segundo análisis:**

Bajo el segundo análisis, se dieron los resultados al momento de entrenar el modelo, la cámara grababa de la mitad del cuerpo para arriba por estar en un espacio acotado por lo que, al probarla en otros espacios la cámara captaba el cuerpo completo, mezclando la parte de los brazos con las piernas.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/0923d70f-4aae-4af8-b507-beb614663722)  Ochoa,V. (2024). Entrenar Teachable Machine [Screenshot]. Computadores de la sala G34, FAU, Santiago de Chile.

5. A partir del análisis anterior, se hizo la prueba de grabarnos al exterior de la sala en un fondo liso, con la cámara de nuestra tablet distintos videos, cada uno con las diferentes posiciones (izquierda, derecha, abajo y arriba). Posteriormente, dividimos estos videos en frames (usando un convertidor online) para importarlos en Teachable Machine.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/fe6b1eba-fc73-4e31-a261-ffaab9b96b4f)  Ochoa,V. (2024). Entrenar Teachable Machine [Screenshot]. Computadores de la sala G34, FAU, Santiago de Chile.

(La división de los videos para pasarlo a frames se realizó con un convertidor online--> https://www.online-convert.com/es/result#)

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/4c82a8d2-dd61-49ce-b7e2-fa5df9d6c804) Astudillo,N. (2024). Entrenar Teachable Machine [Screenshot]. Computadores de la sala G34, FAU, Santiago de Chile.

**Tercer análisis:**

En esta ocasión, la posición "izquierda" presentó problemas de reconocimiento al momento de realizar las acciones. Esto es debido a que, los fotogramas no tomaban el cuerpo completo siendo incapaces de reconocer adecuadamente.

El último modelo entrenado antes de dar con el definitivo está el siguiente link:
https://teachablemachine.withgoogle.com/models/x9jaICbA3/  

(Es importante destacar que para poder subir un modelo de Teachable Machine a la web, el modelo entrenada se debe guardar y seleccionar la parte para subir) (añadir imagen)

**Proceso 13 de junio**

Este día fue empleado para dejar entrenado el modelo de Teachable Machine, para así poder llegar a las clases del viernes 14 de junio y avanzar con la parte del código. Por lo tanto, fueron grabadas las posturas en un living de una de las casas, con las mismas indicaciones anteriores: "derecha, izquierda, arriba y abajo".

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/e750f5f6-4c73-4ef2-b248-cd0ab303b98c) Ochoa,V. (2024). Seguir entrenando Teachable Machine [Screenshot]. Living del hogar, Santiago de Chile.

**Instrucciones de postura**

Para la derecha, se debe levantar el brazo derecho en un ángulo de 90 grados. También, puede ser descendido a 90 grados a la derecha.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/7b8d9876-3d87-45bb-a832-d442e0eb35f9) Ochoa,V. (2024). Seguir entrenando Teachable Machine [Screenshot]. Living del hogar, Santiago de Chile.

En el caso de la izquierda, se aplica lo mismo que en la derecha, con la dirección en 90 grados. 

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/8374a563-406d-4852-a283-c971287dba4e) Ochoa,V. (2024). Seguir entrenando Teachable Machine [Screenshot]. Living del hogar, Santiago de Chile.

Para la postura arriba, se debe levantar ambos brazos en 90 grados.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/c098dc3f-1a29-457d-81e7-a0159d760588) Ochoa,V. (2024). Seguir entrenando Teachable Machine [Screenshot]. Living del hogar, Santiago de Chile.

Por último, para hacer la postura de abajo, se debe bajar ambos brazos en un ángulo de 90 grados.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/a2bfdeb9-c9cc-4c41-a92c-fff050ad1a72) Ochoa,V. (2024). Seguir entrenando Teachable Machine [Screenshot]. Living del hogar, Santiago de Chile.

**Modelo entrenado**

https://teachablemachine.withgoogle.com/models/Kuml-rphX/

**Código del modelo**

```
<div>Teachable Machine Pose Model</div>
<button type="button" onclick="init()">Start</button>
<div><canvas id="canvas"></canvas></div>
<div id="label-container"></div>
<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@teachablemachine/pose@0.8/dist/teachablemachine-pose.min.js"></script>
<script type="text/javascript">
    // More API functions here:
    // https://github.com/googlecreativelab/teachablemachine-community/tree/master/libraries/pose

    // the link to your model provided by Teachable Machine export panel
    const URL = "https://teachablemachine.withgoogle.com/models/Kuml-rphX/";
    let model, webcam, ctx, labelContainer, maxPredictions;

    async function init() {
        const modelURL = URL + "model.json";
        const metadataURL = URL + "metadata.json";

        // load the model and metadata
        // Refer to tmImage.loadFromFiles() in the API to support files from a file picker
        // Note: the pose library adds a tmPose object to your window (window.tmPose)
        model = await tmPose.load(modelURL, metadataURL);
        maxPredictions = model.getTotalClasses();

        // Convenience function to setup a webcam
        const size = 200;
        const flip = true; // whether to flip the webcam
        webcam = new tmPose.Webcam(size, size, flip); // width, height, flip
        await webcam.setup(); // request access to the webcam
        await webcam.play();
        window.requestAnimationFrame(loop);

        // append/get elements to the DOM
        const canvas = document.getElementById("canvas");
        canvas.width = size; canvas.height = size;
        ctx = canvas.getContext("2d");
        labelContainer = document.getElementById("label-container");
        for (let i = 0; i < maxPredictions; i++) { // and class labels
            labelContainer.appendChild(document.createElement("div"));
        }
    }

    async function loop(timestamp) {
        webcam.update(); // update the webcam frame
        await predict();
        window.requestAnimationFrame(loop);
    }

    async function predict() {
        // Prediction #1: run input through posenet
        // estimatePose can take in an image, video or canvas html element
        const { pose, posenetOutput } = await model.estimatePose(webcam.canvas);
        // Prediction 2: run input through teachable machine classification model
        const prediction = await model.predict(posenetOutput);

        for (let i = 0; i < maxPredictions; i++) {
            const classPrediction =
                prediction[i].className + ": " + prediction[i].probability.toFixed(2);
            labelContainer.childNodes[i].innerHTML = classPrediction;
        }

        // finally draw the poses
        drawPose(pose);
    }

    function drawPose(pose) {
        if (webcam.canvas) {
            ctx.drawImage(webcam.canvas, 0, 0);
            // draw the keypoints and skeleton
            if (pose) {
                const minPartConfidence = 0.5;
                tmPose.drawKeypoints(pose.keypoints, minPartConfidence, ctx);
                tmPose.drawSkeleton(pose.keypoints, minPartConfidence, ctx);
            }
        }
    }
</script>
```

**Código base**

El código base para llevar a cabo el proyecto fue encontrado en el canal de youtube "The Coding Train". Es en base a este código con el cual se procedió a realizar las modificaciones pertinentes.

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

El código realizado por "The Coding Train" está hecho considerando un modelo entrenado de Teachable Machine de Proyecto de Imagen. En nuestro caso, fue entrenado un modelo de Proyecto de Posturas, por lo cual nacieron dos salidas: volver a entrenar un modelo, pero esta vez de un Proyecto de Imagen o hacer las modificaciones necesarias en el código para relacionarlo con el modelo de posturas.

**Referencias:**

The Coding Train

https://www.youtube.com/playlist?list=PLRqwX-V7Uu6aJwX0rFP-7ccA6ivsPDsK5
https://www.youtube.com/watch?v=AaGK-fj-BAM
https://www.youtube.com/watch?v=OMoVcohRgZA&t=0s
https://www.youtube.com/watch?v=FYgYyq-xqAw&list=PL0FrmHECzRfCDMRpGPpQwj4WpGv51Ip_5&ab_channel=TheCodingTrain
