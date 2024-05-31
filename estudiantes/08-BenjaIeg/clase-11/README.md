Clase 11: exploracion herramientas de ml5

Image Clasifier

https://editor.p5js.org/ml5/sketches/ImageClassification

´´´
/* ===
Ejemplo en p5 del casificador de imagenes de ml5
El siguente es un codigo de javascript
Image classification using MobileNet and p5.js
This example uses a callback pattern to create the classifier
=== */

// Initialize the Image Classifier method with MobileNet. A callback needs to be passed.
let classifier;

// A variable to hold the image we want to classify
let img;

function preload() {
  classifier = ml5.imageClassifier('MobileNet');
  img = loadImage('images/bird.jpg');
}

function setup() {
  createCanvas(854, 480);
  classifier.classify(img, gotResult);
  image(img, 0, 0);
}

// A function to run when we get any errors and the results
function gotResult(error, results) {
  // Display error in the console
  if (error) {
    console.error(error);
  }
  // The results are in an array ordered by confidence.
  console.log(results);
  createDiv('Label: ' + results[0].label);
  createDiv('Confidence: ' + nf(results[0].confidence, 0, 2));
}

´´´
![Captura de pantalla 2024-05-31 165314](https://github.com/BenjaIeg/audiv027-2024-1/assets/128185999/cf85be98-c671-4eda-9577-4715a21dcddc)



Doodle


Herramientas y paginas:

VizCom, genera un modelo 3D a partir de bosquejos que subas

SunoAi: hacer musica con inteligencia artificial con prompt, etc etc

Artistas/diseñadores/trabajos referentes:

Alvarejo arteaga: ilustracion, dibujo y fotografia(Diseñador)



