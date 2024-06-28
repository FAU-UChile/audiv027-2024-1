# Trabajo Final: Snake but with hands.

Fecha: 28-06-2024

Herramientas utilizadas:

-p5

-Webcam

-Navegador

## Introducción:
En este trabajo final, teníamos la libertad de crear lo que quisiéramos con todo lo que habíamos aprendido y visto este semestre, así que como grupo, hicimos un brainstorm de ideas que podríamos hacer como trabajo final con herramientas o ideas que nos hayan llamado la atención. Y salimos con las siguientes propuesta:

Transmisión de imágenes a vídeos “StyleTransfer de video” a tiempo real.
Mapa interactivo de historias de rol creadas por “IADungeon”.
Snake jugado con la webcam con “KNNClassification_VideoSquare”.

### Proceso de la propuesta: Transmisión de imágenes a vídeos “StyleTransfer de video” a tiempo real.

Nos gusto el trabajo de Dani Joy que descubrimos en https://mlart.co

Se trata de Style transfer, buscando en la web encontramos esta página en la que nos dirigimos al github de ml5js, al apartado de ejemplos de p5.js. En este sitio parece haber varias herramientas que podríamos ocupar para el trabajo final.

Continuando con la línea del Style transfer, llegamos al StyleTransfer de imagenes y al StyleTransfer de video.

Nos llamó la atención StyleTransfer de video, asi que lo probamos, pero al utilizarlo nos salta la siguiente advertencia:

![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/2c4e35b0-c183-4045-a84c-903d3778bfcb)


Como se puede apreciar en la imagen, nos arroja una advertencia: "High memory usage in GPU: 3709.74 MB, most likely due to a memory leak". Debido a esto, la imagen que captura la cámara se ve muy lageada, actualizando cada 30 segundos aproximadamente y ralentizando todo el computador llegando a ocupar según el administrador de tareas casi 8gb de memoria.

![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/60a19f28-30d0-458f-9bf6-56cf32e2c9f9)

Así que, aun cuando el código funciona, no podremos trabajar con comodidad y tampoco demostrarlo de manera óptima ya que tanto los computadores de la universidad, como nuestras laptops no pueden correr el código de manera fluida.

### Proceso de la propuesta: Mapa interactivo de historias de rol creadas por “IADungeon”.

Desde que nos mostraron la página de https://mlart.co, uno de los proyectos que a los 3 nos encanto fue el de https://play.aidungeon.com/adventure/a9Pu3iLLa-7v/custom/play, asi que pensamos en que podriamos utilizarlo para crear nuestro trabajo final.

Nuestra idea era hacer un mapa interactivo en el que hubiera un mapa gigante y si uno pasaba el mouse en una zona del mapa este haría zoom. Nos habíamos inspirado en este código para hacer la idea: https://editor.p5js.org/p5/sketches/Math:_Map, el cual nos permitía con el movimiento del mouse, incrementar y disminuir el tamaño de un círculo.

![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/da0767b2-1d21-4f9f-9be3-e96895cf6a2e)

Codigo de “Math_Map”:

```
 function setup() {
  createCanvas(720, 400);
  noStroke();
}

function draw() {
  background(0);
  // Scale the mouseX value from 0 to 720 to a range between 0 and 175
  let c = map(mouseX, 0, width, 0, 175);
  // Scale the mouseX value from 0 to 720 to a range between 40 and 300
  let d = map(mouseX, 0, width, 40, 300);
  fill(255, c, 0);
  ellipse(width/2, height/2, d, d);
} 
```
Utilizamos https://play.aidungeon.com/adventure/a9Pu3iLLa-7v/custom/play, la cual es una IA utilizada para crear  juegos de rol. Creamos una historia y con una opción que tiene, le pedimos que nos mostrará con imágenes como es el entorno que nos describe:

![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/e03fc705-0712-4d47-8b65-281da39b2ed0)
![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/23fb7f2b-89de-4319-895f-b25b2d477bb4)
![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/a47d1fc8-6e32-453f-a935-651a9e70585a)
![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/372e5b7f-174c-46e2-ab46-60d944b2d235)
![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/c0291192-b883-4971-8067-22284eb3c0b1)

Y aunque la idea nos llamaba la atención, al investigar más el cómo podríamos hacerla, decidimos al final descartar esta idea debido a que era muy compleja y no teníamos el suficiente conocimiento para llevar a cabo esta propuesta.

### Proceso de la propuesta: Snake jugado con la webcam con “KNNClassification_VideoSquare”.

Finalmente nos decidimos por hacer un código que combinara la webcam de KNNClassification_VideoSquare con un juego. En específico el snake. 

recopilación de códigos: 
https://breakthecodenow.blogspot.com/2019/11/snake-game-using-javascript-p5.html 

Buscamos en internet el código de juego del snake. Encontramos el código creado por Rishabh Aggarwal en Noviembre 27 del 2019 y comprobamos que funcionara. 

![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/b4e95b0c-2ee4-42bc-a3b2-206ec67862ec)

```
function setup() {
  createCanvas(600, 400);
  stroke(100);
  s = new Snake();
  s.foodCrd();
  
}

function draw() {
  background(0);
  fill(0);
  rect(0,0,400,400);
  fill(255);
  textSize(20);
  text("P5 Snake", 420, 30);
  textSize(15);
  text("Use arrows to control", 420, 50);
  
  text("Score - ", 420, 70);
  text((s.length)*4, 490, 70);
  s.draw();
  s.dead();
  s.check();
  s.move();
  s.food();
  
  frameRate(10);

}

function Snake(){
 this.x = 200;
  this.y = 200;
  this.tailx = [];
  this.taily = [];
  this.length = 0;
  this.xspeed = 1;
  this.yspeed = 0;
  this.move = function(){
    
    for(i = this.length-1; i > 0; i--)
    {
       this.tailx[i] = this.tailx[i-1];  
       this.taily[i] = this.taily[i-1];   
    }
    this.tailx[0] = this.x;
    this.taily[0] = this.y;
    
      this.x += this.xspeed*10;
      this.y += this.yspeed*10;
      if(this.x > 390)
        this.x = 0;
      else if(this.x < 0)
        this.x = 390;
      if(this.y < 0)
        this.y = 390;
      else if(this.y > 390)
        this.y = 0;
    
  }  
  
  this.draw = function(){
    rect(this.x,this.y,12,12);
    
    for(i=0; i < this.length; i++)
      rect(this.tailx[i], this.taily[i], 12, 12);
     
  }
  
  this.change = function(x,y){
    this.xspeed = x;
    this.yspeed = y;
  }
  
  this.food = function(){
    fill(150,0,0);
    rect(this.r,this.p,12,12);
    fill(255);
  }
  
  this.foodCrd = function(){
    this.r = int(random(0,400)/10)*10;
    this.p = int(random(0,400)/10)*10; 
    
  }
  
  this.check = function(){
     if(this.x == this.r && this.y == this.p)
     {
       this.foodCrd(); 
       this.length+=1;
     }
       
  }
  
  this.dead = function(){
     for(i=0; i<this.length; i++)
       if(this.x == this.tailx[i] && this.y == this.taily[i])
       {
          this.length = 0;
           this.tailx = [];
         this.taily = [];
           
       }
  }
}

function keyPressed(){
   
    if(keyCode === UP_ARROW)
      s.change(0,-1);
    else if(keyCode === DOWN_ARROW)
      s.change(0,1);
    else if(keyCode === LEFT_ARROW)
      s.change(-1,0);
    else if(keyCode === RIGHT_ARROW)
      s.change(1,0); 
  }

```

Luego probamos uno de los códigos que habíamos visto antes con una cámara llamado “KNNClassification_VideoSquare”. Entrenamos a la IA para que reconozca las siguientes direcciones con las manos: 

Arriba: Mano apuntando con el índice hacia arriba 
Abajo: Mano apuntando con el índice hacia abajo
Derecha: Mano apuntando con el índice hacia la derecha
Izquierda: Mano apuntando con el índice hacia la izquierda

![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/2a80db2f-633f-4f08-8546-4a7ba5481373)

Código v1 imagenes: <https://editor.p5js.org/NaimRoman/sketches/TsBuF2UoH>

Luego de hacer las pruebas y de asegurarnos de que funcionaran, procedemos a unir los códigos para probar lo que pasaba.

![image](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/15-NaimRoman/clase-13/2.jpg) 

![image](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/15-NaimRoman/clase-13/Sin%20t%C3%ADtulo.png) 

```
 // Copyright (c) 2019 ml5
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

/* ===
ml5 Example
KNN Classification on Webcam Images with mobileNet. Built with p5.js
=== */

let video;
let posX;
let posY;


const squareSize = 100;
// Create a KNN classifier
const knnClassifier = ml5.KNNClassifier();
let featureExtractor;

function setup() {
  

createCanvas(600, 400);
stroke(100);
s = new Snake();
s.foodCrd();
  
  
  // Create a featureExtractor that can extract the already learned features from MobileNet
  featureExtractor = ml5.featureExtractor('MobileNet', modelReady);

  
  
  
  const canvas = createCanvas(640, 480);
  posX = width / 2;
  posY = height / 2;
  // Put the canvas into the <div id="canvasContainer"></div>.
  canvas.parent('#canvasContainer')
  // Create a video element
  video = createCapture(VIDEO);
  video.size(width, height);
  // Hide the video element, and just show the canvas
  video.hide();
  // Create the UI buttons
  createButtons();
  noStroke();
  fill(255, 0, 0);
}

function draw() {
  // Flip the video from left to right, mirror the video
  translate(width, 0)
  scale(-1, 1);
  image(video, 0, 0, width, height);

  //SNAKE
  
  rect(0,0,400,400);
  fill(0);
  textSize(20);
  text("P5 Snake", 420, 30);
  textSize(15);
  text("Use arrows to control", 420, 50);
  
  text("Score - ", 420, 70);
  text((s.length)*4, 490, 70);
  s.draw();
  s.dead();
  s.check();
  s.move();
  s.food();
  
  frameRate(10);
  
  

}


// SNAKE
  function Snake(){
 this.x = 200;
  this.y = 200;
  this.tailx = [];
  this.taily = [];
  this.length = 0;
  this.xspeed = 1;
  this.yspeed = 0;
  this.move = function(){
    
    for(i = this.length-1; i > 0; i--)
    {
       this.tailx[i] = this.tailx[i-1];  
       this.taily[i] = this.taily[i-1];   
    }
    this.tailx[0] = this.x;
    this.taily[0] = this.y;
    
      this.x += this.xspeed*10;
      this.y += this.yspeed*10;
      if(this.x > 390)
        this.x = 0;
      else if(this.x < 0)
        this.x = 390;
      if(this.y < 0)
        this.y = 390;
      else if(this.y > 390)
        this.y = 0;
    
  }
  
  
  this.draw = function(){
    rect(this.x,this.y,12,12);
    
    for(i=0; i < this.length; i++)
      rect(this.tailx[i], this.taily[i], 12, 12);
    
    
  }
  
  this.change = function(x,y){
    this.xspeed = x;
    this.yspeed = y;
  }
  
  this.food = function(){
    fill(150,0,0);
    rect(this.r,this.p,12,12);
    fill(255);
  }
  
  this.foodCrd = function(){
    this.r = int(random(0,400)/10)*10;
    this.p = int(random(0,400)/10)*10; 
    
  }
  
  this.check = function(){
     if(this.x == this.r && this.y == this.p)
     {
       this.foodCrd(); 
       this.length+=1;
     }
       
  }
  
  this.dead = function(){
     for(i=0; i<this.length; i++)
       if(this.x == this.tailx[i] && this.y == this.taily[i])
       {
          this.length = 0;
           this.tailx = [];
         this.taily = [];
           
       }
  }
}



function modelReady(){
  select('#status').html('FeatureExtractor(mobileNet model) Loaded')
}

// Add the current frame from the video to the classifier
function addExample(label) {
  // Get the features of the input video
  const features = featureExtractor.infer(video);

  // Add an example with a label to the classifier
  knnClassifier.addExample(features, label);
  updateCounts();
}

// Predict the current frame.
function classify() {
  // Get the total number of labels from knnClassifier
  const numLabels = knnClassifier.getNumLabels();
  if (numLabels <= 0) {
    console.error('There is no examples in any label');
    return;
  }
  // Get the features of the input video
  const features = featureExtractor.infer(video);

  // Use knnClassifier to classify which label do these features belong to
  knnClassifier.classify(features, gotResults);
}

// A util function to create UI buttons
function createButtons() {
  // When the addClass1 button is pressed, add the current frame to class "Up"
  buttonA = select('#addClass1');
  buttonA.mousePressed(function() {
    addExample('Up');
  });

  // When the addClass2 button is pressed, add the current frame to class "Right"
  buttonB = select('#addClass2');
  buttonB.mousePressed(function() {
    addExample('Right');
  });

  // When the addClass3 button is pressed, add the current frame to class "Down"
  buttonC = select('#addClass3');
  buttonC.mousePressed(function() {
    addExample('Down');
  });

  // When the addClass4 button is pressed, add the current frame to class "Left"
  buttonC = select('#addClass4');
  buttonC.mousePressed(function() {
    addExample('Left');
  });

  // Predict button
  buttonPredict = select('#buttonPredict');
  buttonPredict.mousePressed(classify);

  // Clear all classes button
  buttonClearAll = select('#clearAll');
  buttonClearAll.mousePressed(clearAllLabels);
}

// Show the results
function gotResults(err, result) {
  // Display any error
  if (err) {
    console.error(err);
  }

  if (result.confidencesByLabel) {
    const confidences = result.confidencesByLabel;
    // result.label is the label that has the highest confidence
    if (result.label) {
      select('#result').html(result.label);
      select('#confidence').html(`${confidences[result.label] * 100} %`);

      switch(result.label) {
        case 'Up':
          posY-=2;
          break;

        case 'Down':
          posY+=2;
          break;

        case 'Left':
          posX+=2;
          break;

        case 'Right':
          posX-=2;
          break;
        
        default:
          console.log(`Sorry, unknown label: ${result.label}`);
      }
      // Border checking
      if (posY < 0) posY = 0;
      if (posY > height - squareSize) posY = height - squareSize;
      if (posX < 0) posX = 0;
      if (posX > width - squareSize) posX = width - squareSize;
    }
  }

  classify();
}

// Update the example count for each class	
function updateCounts() {
  const counts = knnClassifier.getCountByLabel();

  select('#example1').html(counts['Up'] || 0);
  select('#example2').html(counts['Right'] || 0);
  select('#example3').html(counts['Down'] || 0);
  select('#example4').html(counts['Left'] || 0);
}

// Clear the examples in one class
function clearLabel(classLabel) {
  knnClassifier.clearLabel(classLabel);
  updateCounts();
}

// Clear all the examples in all classes
function clearAllLabels() {
  knnClassifier.clearAllLabels();
  updateCounts();
  

  
  
  function keyPressed(){
   
    if(keyCode === UP_ARROW)
      s.change(0,-1);
    else if(keyCode === DOWN_ARROW)
      s.change(0,1);
    else if(keyCode === LEFT_ARROW)
      s.change(-1,0);
    else if(keyCode === RIGHT_ARROW)
      s.change(1,0); 
  }
  ```

Nos dimos cuenta de que no estaba siguiendo la mano y que además no se movía con las flechas, pero al menos aparecía tanto la imagen de la cámara como el juego del snake.

![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/1b3767fe-22f4-45c8-adea-823c3f92111b)

Codigo v2: <https://editor.p5js.org/mariajose.ribba/sketches/yB3VVNQkJ>

Se organizó y limpió el código separando por un lado el del snake y por el otro el KNNClassification, también se separó las keycodes para que funcionaran de manera independiente y así no se interpone una función dentro de otra. Y con eso el snake se podía controlar con las flechas.
```
function draw() {
  // Flip the video from left to right, mirror the video
  
  push();
  translate(width, 0);
  scale(-1, 1);
  image(video, 0, 0, width, height);
  pop();

  //SNAKE

  rect(0, 0, 400, 400);
  fill(0);
  textSize(20);
  text("P5 Snake", 420, 30);
  textSize(15);
  text("Use arrows to control", 420, 50);

  text("Score - ", 420, 70);
  text(s.length * 4, 490, 70);
  s.draw();
  s.dead();
  s.check();
  s.move();
  s.food();

  frameRate(10);
}
```
![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/7fd34ab0-88a0-4077-908e-7bf063f3f645)

Código v3: https://editor.p5js.org/mariajose.ribba/sketches/9W_2B5u4X 

Se configura el código para que los valores que tenían las flechas para mover al snake se apliquen a los ejemplos que se le dieron a la IA para saber las direcciones por medio de la cámara: 

```
if (result.confidencesByLabel) {
    const confidences = result.confidencesByLabel;
    // result.label is the label that has the highest confidence
    if (result.label) {
      select("#result").html(result.label);
      select("#confidence").html(`${confidences[result.label] * 100} %`);
    

      switch (result.label) {
        case "Up":
          posY -= 2;
          s.change(0, -1);
          break;

        case "Down":
          posY += 2;
          s.change(0, 1);
          break;

        case "Left":
          posX += 2;
          s.change(-1, 0);
          break;

        case "Right":
          posX -= 2;
          s.change(1, 0);
          break;

```

Código v4: <https://editor.p5js.org/mariajose.ribba/sketches/RYNbtXm-q>
Por último cambiamos la posición de la pantalla del snake para que no se superponga a la imagen de la cámara.

```
function draw() {
  // Flip the video from left to right, mirror the video
  //cambiamos la posición de la cámara para que este abajo del juego y no moleste el gameplay
  push();
  translate(width, 0);
  scale(-1, 1);
  image(video, 0,800, width, height);
  pop();
  ```
Antes:

![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/08bf70f2-aaca-4c36-bc50-1c8b04fc77fc)

Después: 

![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/cff03bf7-4ff7-4b55-81e4-dbac0cbb20a6)

Descripción visual:

![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/367e391e-4905-4de0-aa38-bd1415150d96)

## Conclusiones:

Gracias a este proyecto hemos aprendido a combinar distintos códigos y probar qué pasaba con cada cambio que se realizaba, descubrimos distintas páginas como ml5 y nos adentramos en sus bibliotecas encontrando los KNNClassifier que luego utilizamos y probamos para realizar el proyecto.  

Lamentablemente al código le dio un patatus y decidió no seguir funcionando. Por lo que observamos el KNNClassifier ya no era tomado como una función y esto no solo pasaba con este código sino que también con todos los KNNClassification:

![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/a9a8dea2-fe37-40f5-92f5-4d6ac534a255)

![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/53142bff-fee8-4e08-8dca-d8594d2d5a4b)

Lo que resultó en que ninguna versión de nuestro código funcione, buscamos un código reemplazante pero ninguno funcionaba tampoco.

![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/e5e593d1-79af-498a-a5dc-6582f7bd9f38)

![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/c4536380-5003-42ad-ae98-c7f5b857698f)

![image](https://github.com/Marijou/audiv027-2024-1/assets/163590875/9e35e4ff-16da-4dfe-862d-6bf3f3a843a5)

Así que lo único que tenemos para demostrar que nuestro código funcionaba, es el video que tomamos el viernes en la clase 12.


https://github.com/Marijou/audiv027-2024-1/assets/163590875/54eb5674-a894-4a04-9f6a-7a1bc7c777e8


## Bibliografía de referentes:

Código snake:  https://breakthecodenow.blogspot.com/2019/11/snake-game-using-javascript-p5.html 

Código KNNClassification: https://editor.p5js.org/ml5/sketches

Knnvideoclassification: https://editor.p5js.org/ml5/sketches/TW3JwmVdg8

IA Dungeon:
 https://play.aidungeon.com/adventure/a9Pu3iLLa-7v/custom/play

Mlart: https://mlart.co/

Style Transfer: https://editor.p5js.org/ml5/sketches/hIB3Nvfmk4

Ml5 library: https://github.com/ml5js/ml5-library/tree/main/examples
