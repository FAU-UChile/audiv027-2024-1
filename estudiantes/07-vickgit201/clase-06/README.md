# clase-06

## entrega: Comedia Accesible

integrantes:

Sofía Chavez 

Victoria Claveria 

fecha

19/04/24

## materiales

este trabajo lo hicimos con los siguientes materiales:

- ml5js examples https://ml5-fellowship-2020.github.io/examples/
- p5.js en su versión x.y.z disponible en la web (https://editor.p5js.org/)
- Markdown para escribir la documentación de este archivo
- la base de datos se elaboró en Teacheble Machine (https://teachablemachine.withgoogle.com/)
- Micrófono de SebCam y compuatdor

## código

el código está subido en esta misma carpeta, y en el editor de p5.js

Index:

<!DOCTYPE html>
<html lang="en">
  <head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.9.1/p5.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.9.1/addons/p5.sound.min.js"></script>
    <link rel="stylesheet" type="text/css" href="style.css">
    <meta charset="utf-8" />

  </head>
  <body>
    <main>
    </main>
    <script src="sketch.js"></script>
  </body>
  <div>Teachable Machine Audio Model - p5.js and ml5.js</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.9.0/p5.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.9.0/addons/p5.dom.min.js"></script>
<script src="https://unpkg.com/ml5@latest/dist/ml5.min.js"></script>
<script type="text/javascript">


Sketch:

// Modo actual (texto o imagen)
let mode = 'text';

// Imagen del pingüino
let img;

// Global variable to store the classifier
let classifier;

// Label
let label = 'PREPARENSE...';

// Tiempo en milisegundos que la imagen se mostrará en pantalla (5 segundos)
//const displayTime = 5000;

// Indicador para controlar si se está reproduciendo la descripción
let isSpeaking = false;

// Teachable Machine model URL:
let soundModel = 'https://teachablemachine.withgoogle.com/models/mTRZ6Yho7/';

// Crear un objeto de síntesis de voz
const synth = window.speechSynthesis;

function preload() {
  // Variable clasificadora de sonido desde teachable machine, con .json, sounModel es el url alojado en la web de clasificador de sonido
  classifier = ml5.soundClassifier(soundModel + 'model.json');
  // Load the image
  img = loadImage("pinguino-waton.PNG");
}

function setup() {
  createCanvas(320, 240);
  // Start classifying
  // The sound model will continuously listen to the microphone
  classifier.classify(gotResult);
}

function draw() {
  background(0);
  // Dibujar en funcion del modo actual
  if (mode === 'text') {
    fill(255);
    textSize(32);
    textAlign(CENTER, CENTER);
    text(label, width / 2, height / 2);
  } else if (mode === 'image') {
    image(img, 0, 0, width, height);
  }
}

// The model recognizing a sound will trigger this event
function gotResult(error, results) {
  if (error) {
    console.error(error);
    return;
  }
  console.log(results[0]); // Muestra los resultados en la consola
  // Actualiza la etiqueta solo si se detecta "Uno"
  if (results[0].label === 'Imagen') {
    // Leer el texto en voz alta
    speakText('Se presenta una imagen de un pingüino rey exageradamente redondo, con un filtro amarillento cubriéndolo. Y con el texto, oh, ya no me des más gaseosa, estoy muy satisfecho, pero claramente escrito con más cantidad de improperios');
    // Marcar que la frase precargada ha sido detectada
    presentationDetected = true;
  } else {
    // Volver al modo de texto
    mode = 'text';
    // Las otras etiquetas se asignan directamente
    label = results[0].label;
  }
}

// Función para leer el texto en voz alta
function speakText(text) {
  let utterance = new SpeechSynthesisUtterance(text);
  utterance.onstart = function() {
    // Cuando comienza la lectura en voz alta, cambiar al modo de imagen
    mode = 'image';
    isSpeaking = true;
  };
  utterance.onend = function() {
    // Cuando la lectura en voz alta haya terminado, volver al modo de texto
    mode = 'text';
    isSpeaking = false;
};
  synth.speak(utterance);
}

 //La función draw() se llama automáticamente en p5.js
function draw() {
  background(0);
   //Dibujar la imagen si se está reproduciendo la descripción
  if (isSpeaking) {
    image(img, 0, 0, width, height);
  } else {
     //Dibujar el texto si no se está reproduciendo la descripción
    fill(255);
    textSize(32);
   textAlign(CENTER, CENTER);
     //colocar el texto a la mitad del ancho y de alto
   text(label, width / 2, height / 2);
 }
}
  if (label === 'Imagen') {
    stopLoop = true;
  }




## capturas de pantalla

- ![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/5c06cec2-41c1-4375-998e-95b16786ba8f)

- ![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/6dddb000-7a40-4377-a4c2-cf1bf100bb5f)

## conclusiones

En este trabajo se aprendio a...

## citas y referentes

Específicamente:
  
  Speech Controlled Bugs (https://editor.p5js.org/AndreasRef/sketches/Xme4ymb13)

  ![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/98ae0301-fe9c-4d6d-a81c-27bd4cec1467)

  Word2Vec suggestion tool (https://editor.p5js.org/AndreasRef/sketches/ylEz8k3V)

  ![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/7633faa3-0a84-4f5e-af19-f4bc15535de3)

  Similar Words Floating in Space (https://editor.p5js.org/AndreasRef/sketches/4dlayBySz)

  ![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/17b2b0f4-ec45-4ceb-9084-c2fc0fbfe26a)

