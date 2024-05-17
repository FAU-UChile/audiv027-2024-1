# **Clase 17-05-2024**
- https://mlart.co/ es como una galeria de arte en la web con obras dIA
- "GAN" generative adversarial network, es un "sabor" de IA que pone dos algoritmos a competir, hay dos redes nuronales y una genera muy pobremente copias que se parecen a algo y la otra como que le dice "oye te quedo como el pico" entonces al conversar entre ellas compiten hasta generar algo mejor, se usa mucho en generacion de imagenes
- reas.com -> puras obras hechas con "GAN"
- un tipo de proyecto para la 2da nota podría ser cómo entrenar una GAN
- los algoritmos usan una base de datos y una imeagn para un algoritmo es un vector por lo que hace que todas las imagenes sean comparables
- DCGAN es como un subgnero de Gan, Gan tiene muchos tipos no es uno solo
- memo.tv artista de IA,creó una manera de tomar una imagen fuente para crear otra imagen,
- SIGGRAPH convencion de graficas por computador
- pix2pix un pixel que se transforma en otro pixel
- OCR
- google creative lab, ganan 120 palos al año xddddddd
- Mario kilngemann artitsa pix2pix
- https://x.com/obake_ai/status/1299969180658065408
- https://github.com/eyaler/avatars4all
- https://colab.research.google.com/github/eyaler/avatars4all/blob/master/fomm_live.ipynb si accedemos desde nuestra cuenta de google y se puede grabar (recordar guardar la copia en drive antes de empezar CLTR + S) 
- ![imagen](https://github.com/angebv00/audiv027-2024-1/assets/163590234/a0c362a4-c6d4-41fe-8542-1ad92e40930c)
En esta parte al cambiar el link por el de otra imagen cambiamos el avatar a utilizar
tonetransfer
https://mlart.co/item/translating-everyday-sounds-into-instruments-with-magenta_s-differentiable-digital-signal-processing https://mlart.co/item/translating-everyday-sounds-into-instruments-with-magenta_s-differentiable-digital-signal-processing
# **Investigación en clases**

# **Bill T. Jones* 
https://mlart.co/item/detect-poses-and-voice-and-add-the-spoken-words-live-in-the-choreography
Hecho con: Google Creative Lab
Tecnología usada: PoseNet, Camera, Voice detection, Microphone
¿Qué hace? -> Detect poses and voice and add the spoken words live in the choreography  
¿como interpreta la pose? 

<!DOCTYPE html>
<html>

<head>
    <title>PoseNet Sketchbook</title>
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="../../favicon.ico" type="image/png" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
    <div id="info" style='display:none'>
    </div>
    <div id="loading">
        Loading the model...
    </div>
    <div id='main' style='display:none'>
        <video id="video" playsinline style=" -moz-transform: scaleX(-1);
        -o-transform: scaleX(-1);
        -webkit-transform: scaleX(-1);
        transform: scaleX(-1);
        display: none;
        ">
        </video>
        <div id="canvas-container">
            <canvas id="output" />
        </div>
    </div>
    <script src="js/main.js"></script>
</body>
</html>
# **explicacion del codigo*
<meta name="viewport" content="width=device-width, initial-scale=1">: Configura los parametros de visualizacion para que pueda ser visualizado desde dispositivos moviles 
<script src="js/main.js"></script>: se incluye un archivo JavaScript externo main.js que probablemente contiene el código necesario para manejar la lógica de PoseNet 
              
# **codigo de deteccion de cuerpo:

```js
let canvas = document.getElementById('output');
let ctx = canvas.getContext('2d');
let poseDetection;
let poses = [];
let video;
let videoWidth, videoHeight;

const color = 'aqua';
const lineWidth = 2;

let sketchGuiState = {
  showVideo: true,
  showSkeleton: true,
  showPoints: true,
};

export function setupSketch(
  thePoseDetection,
  theVideo,
  theVideoWidth,
  theVideoHeight
) {
  poseDetection = thePoseDetection;
  video = theVideo;
  videoWidth = theVideoWidth;
  videoHeight = theVideoHeight;

  canvas.width = videoWidth;
  canvas.height = videoHeight;
  sketchLoop();
}

export function initSketchGui(gui) {
  gui.open();
  gui.add(sketchGuiState, 'showVideo');
  gui.add(sketchGuiState, 'showSkeleton');
  gui.add(sketchGuiState, 'showPoints');
}

let getNewFrame = true;
async function sketchLoop() {
  if (getNewFrame) {
    poses = await poseDetection.getPoses();
  }
  getNewFrame = !getNewFrame;

  let minPoseConfidence;
  let minPartConfidence;

  switch (poseDetection.guiState.algorithm) {
    case 'single-pose':
      minPoseConfidence = +poseDetection.guiState.singlePoseDetection
        .minPoseConfidence;
      minPartConfidence = +poseDetection.guiState.singlePoseDetection
        .minPartConfidence;
      break;
    case 'multi-pose':
      minPoseConfidence = +poseDetection.guiState.multiPoseDetection
        .minPoseConfidence;
      minPartConfidence = +poseDetection.guiState.multiPoseDetection
        .minPartConfidence;
      break;
  }

  ctx.save();

  ctx.clearRect(0, 0, canvas.width, canvas.height);

  ctx.fillStyle = 'black';
  ctx.fillRect(0, 0, canvas.width, canvas.height);

  // Draw the video on the canvas
  if (sketchGuiState.showVideo) {
    ctx.save();
    ctx.scale(-1, 1);
    ctx.translate(-canvas.width, 0);
    ctx.drawImage(video, 0, 0, canvas.width, canvas.height);
    ctx.restore();
  }

  poses.forEach(({score, keypoints}) => {
    if (score >= minPoseConfidence) {
      if (sketchGuiState.showPoints) {
        drawKeypoints(keypoints, minPartConfidence, ctx);
      }
      if (sketchGuiState.showSkeleton) {
        drawSkeleton(keypoints, minPartConfidence, ctx);
      }
    }
  });

  ctx.restore();

  requestAnimationFrame(sketchLoop);
}

function toTuple({y, x}) {
  return [y, x];
}

export function drawPoint(ctx, y, x, r, color) {
  ctx.beginPath();
  ctx.arc(x, y, r, 0, 2 * Math.PI);
  ctx.fillStyle = color;
  ctx.fill();
}

/**
 * Draws a line on a canvas, i.e. a joint
 */
export function drawSegment([ay, ax], [by, bx], color, scale, ctx) {
  ctx.beginPath();
  ctx.moveTo(ax * scale, ay * scale);
  ctx.lineTo(bx * scale, by * scale);
  ctx.lineWidth = lineWidth;
  ctx.strokeStyle = color;
  ctx.stroke();
}

/**
 * Draws a pose skeleton by looking up all adjacent keypoints/joints
 */
export function drawSkeleton(keypoints, minConfidence, ctx, scale = 1) {
  const adjacentKeyPoints = poseDetection.getAdjacentKeyPoints(
    keypoints,
    minConfidence
  );

  adjacentKeyPoints.forEach((keypoints) => {
    drawSegment(
      toTuple(keypoints[0].position),
      toTuple(keypoints[1].position),
      color,
      scale,
      ctx
    );
  });
}

/**
 * Draw pose keypoints onto a canvas
 */
export function drawKeypoints(keypoints, minConfidence, ctx, scale = 1) {
  for (let i = 0; i < keypoints.length; i++) {
    const keypoint = keypoints[i];

    if (keypoint.score < minConfidence) {
      continue;
    }

    const {y, x} = keypoint.position;
    drawPoint(ctx, y * scale, x * scale, 5, color);
  }
}
```
 



