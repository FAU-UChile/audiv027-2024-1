# **BITÁCORA CLASE 22 DE MARZO 2024**

Comenzamos la clase instalando las aplicaciones Wekinator y Proccesing. Éste último es un programa que sirve para programar inteligencia artificial. 

Uno de los referentes que ha seguido el profesor se llama Rebbeca Fiebrini, la cual ha realizado cursos en la página Kadenze.

Posterior a esto, revisamos información sobre Markdown Cheatsheet. Esto nos permite ser flexibles al momento de realizar nuestro portafolio, siendo una alternativa al lenguaje HTML. Promueve la colaboración. 

# **Apuntes:**
•	Wekinator detecta nuestro rostro.

•	Proccesing manda la orden desde la cámara. Está configurado para realizar para cosas sencillas, como figuras geométricas. Debemos hacer la instalación a través de gestión de herramientas, para hacer cosas adicionales que Proccesing no puede realizar de manera predeterminada. 

• Wekinator tiene solo una salida. También tiene clases, que son las posibles salidas. Ejemplo, izquierda o derecha, sí y no. Mientras más complejo, hay que mandarle mucha más información. 

_Nota: Es importante trabajar con The Proccesing Foundation, que es la cuenta oficial y nos permite administrar de mejor manera nuestro trabajo._

• En Proccesing, con CONTROL + F, podemos buscar palabras en el código y remplazar. 

• Visitar la página de Experiments.withgoogle.com, en donde hay diversos ejemplos sobre programación y el cómo se utiliza la inteligencia artificial. 

• Tensorflow es un algoritmo para inteligencia artificial. Es de Google. Sirve para hacer apps. Se abre con Teachable Machine. 

• Visitar The Coding Train y buscar Andrea Refsgaard. Usaremos los códigos de sus proyectos. 

• Ml5.js es una biblioteca accesible que aporta diferentes algoritmos y modelos de aprendizaje, que se basan en Tensorflow. 

• Runwayml consiste en una app que contiene todos los modelos de inteligencia artificial. Es una empresa de gente chilena.

• Ml5 le entrega a p5 la capa de inteligencia artificial. 

# **Trabajo en clases:**

Primera parte: 

1. En primer lugar, debemos revisar que Proccesing detecte correctamente la cámara. Para esto, vamos a los ejemplos de biblioteca, abrimos la sección de ''Capture'' y utilizamos el ''GettingStarted''. Nos aparecerá un código y luego colocamos play. Para este caso, nos funcionó la cámara correctamente.
   
2. Setup() es una función, se colocan las condiciones iniciales. El murciélago {} le señala al computador lo que significa setup, es su complemento.

3. Posterior a esto, cerramos dicho ejemplo y probamos otro, llamado SlitScan. Éste va capturando poco a poco lo que va viendo, colocándole un efecto. Luego probamos el FrameDifferencing, el cual 'cuantifica el movimiento en el video''. También tenemos el BrightnessTracking, que detecta los focos de luz, detectando el más blanco.

 _Nota: Es importante cerrar el ejemplo que estás utilizando, antes de probar otro, porque sino el programa te lanzará error._

4. Nos dirigimos a la página de Wekinator y vamos a la parte de examples bundlers, abajo de downloands. Seleccionamos el 3.16: Proccesing (animation, screen-based input) y descargamos la opción de Simple mouse x,y position. Esto lo que hace es descargar un archivo de texto de Proccesing, que contiene un código. Nos faltará un archivo llamado Oscp5, el cual deberemos instalar en Gestión de Herramientas. El resultado es que se señala la posición del mouse en plano x e y.
   
5. Seguiremos utilizando este código, pero lo complementaremos con Wekinator. En inputs, deberemos colocar dos, ya que estamos mandando dos datos a través del mouse: x e y. En outpots colocamos 1 y luego en type seleccionamos all classifier, with 2 classes.
   
_Nota: Si OSC In, significa que vamos bien, ya que le está llegando el dato esperado._

Segunda parte:

6. Utilizamos el ejemplo de Video/Webcam Simple 10×10 color grid. Este código lo descargamos al igual que el anterior y lo abrimos en Proccesing. Como no resultó, nos trasladamos al Teachable Machine.

7. Primero debemos grabar diferentes imágenes (con clase 1, clase 2 y clase 3). Una vez que se prepare, la web detectará qué es cada cosa a través de la cámara. (Funcionó correctamente!!!)

El código es: 

    let model, webcam, labelContainer, maxPredictions;

    // Load the image model and setup the webcam
    async function init() {
        const modelURL = URL + "model.json";
        const metadataURL = URL + "metadata.json";

        // load the model and metadata
        // Refer to tmImage.loadFromFiles() in the API to support files from a file picker
        // or files from your local hard drive
        // Note: the pose library adds "tmImage" object to your window (window.tmImage)
        model = await tmImage.load(modelURL, metadataURL);
        maxPredictions = model.getTotalClasses();

        // Convenience function to setup a webcam
        const flip = true; // whether to flip the webcam
        webcam = new tmImage.Webcam(200, 200, flip); // width, height, flip
        await webcam.setup(); // request access to the webcam
        await webcam.play();
        window.requestAnimationFrame(loop);

        // append elements to the DOM
        document.getElementById("webcam-container").appendChild(webcam.canvas);
        labelContainer = document.getElementById("label-container");
        for (let i = 0; i < maxPredictions; i++) { // and class labels
            labelContainer.appendChild(document.createElement("div"));
        }
    }

    async function loop() {
        webcam.update(); // update the webcam frame
        await predict();
        window.requestAnimationFrame(loop);
    }

    // run the webcam image through the image model
    async function predict() {
        // predict can take in an image, video or canvas html element
        const prediction = await model.predict(webcam.canvas);
        for (let i = 0; i < maxPredictions; i++) {
            const classPrediction =
                prediction[i].className + ": " + prediction[i].probability.toFixed(2);
            labelContainer.childNodes[i].innerHTML = classPrediction;
        }
    }

8. Luego realizamos el mismo proceso, pero en vez de imagen utilizamos audio, creando un nuevo proyecto de audio. Así mismo, se graba un ruido de fondo y un ruido alto.

9. Finalmente, hicimos un proyecto de poses, grabando dos poses diferentes: pose T y pose fetal.

10. Código ejemplo Mr.Bean:

/*
Mr Bean regression

The example lets you train a regression model with our webcam and use it to control Mr Bean! 

Built with regression model from ml5js and p5js

Created by Andreas Refsgaard 2020

Original idea by @heynthn at CIID Summer School 2017: 
https://www.instagram.com/p/BXDrDCblRvL/

Original video source: https://www.youtube.com/watch?v=HCfrKGrjI2g
*/

let featureExtractor;
let regressor;
let video;
let loss;
let slider;
let samples = 0;

let lerpedResult = 0.5;
let allowedToPredict = true;

let images = [];
let nImages = 44;

let currentImage = 0;

function preload() {
  for (let i = 0; i < nImages; i++) {
    images[i] = loadImage("frame_" + i + "_delay-0.2s.jpg");
    images[i].resize(640, 480);
  }
}

function setup() {
  createCanvas(640, 480);
  // Create a video element
  video = createCapture(VIDEO, 640, 480);
  video.hide();
  // Extract the features from MobileNet
  featureExtractor = ml5.featureExtractor('MobileNet', modelReady);
  // Create a new regressor using those features and give the video we want to use
  regressor = featureExtractor.regression(video, videoReady);
  // Create the UI buttons
  setupButtons();
  rectMode(CENTER);
}

function draw() {
  image(images[currentImage], 0, 0, width, height);
  image(video, 3 * width / 4, 3 * height / 4, width / 4, height / 4);
  noStroke();
  fill(255, 0, 0, 100);
  currentImage = constrain(floor((1 - slider.value()) * nImages), 0, nImages - 1);
}

// A function to be called when the model has been loaded
function modelReady() {
  select('#modelStatus').html('Model loaded!');
}

// A function to be called when the video has loaded
function videoReady() {
  select('#videoStatus').html('Video ready!');
}

// Classify the current frame.
function predict() {
  allowedToPredict = true;
  regressor.predict(gotResults);
}

function stopPredicting() {
  allowedToPredict = false;
}

// A util function to create UI buttons
function setupButtons() {
  slider = select('#slider');
  select('#addSample').mousePressed(function() {
    regressor.addImage(slider.value());
    select('#amountOfSamples').html(samples++);
  });

  // Train Button
  select('#train').mousePressed(function() {
    regressor.train(function(lossValue) {
      if (lossValue) {
        loss = lossValue;
        select('#loss').html('Loss: ' + loss);
      } else {
        select('#loss').html('Done Training! Final Loss: ' + loss);
      }
    });
  });

  // Predict Button
  select('#buttonPredict').mousePressed(predict);
  select('#buttonStopPredict').mousePressed(stopPredicting);

  // Save model
  saveBtn = select('#save');
  saveBtn.mousePressed(function() {
    regressor.save();
  });

  // Load model
  loadBtn = select('#load');
  loadBtn.changed(function() {
    regressor.load(loadBtn.elt.files, function() {
      select('#modelStatus').html('Custom Model Loaded!');
    });
  });
}

// Show the results
function gotResults(err, result) {
  if (err) {
    console.error(err);
  }
  if (result && result.value && allowedToPredict) {
    lerpedResult = lerp(lerpedResult, result.value, 0.15);
    slider.value(lerpedResult);
    predict();
  }
}
