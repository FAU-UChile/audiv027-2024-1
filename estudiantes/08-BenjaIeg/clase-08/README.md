## Analisis de proyecto en MediaPipe P5

Este ejercicio lo estoy realizando junto con Juanitaliano

### Image clasification

https://tetsuakibaba.github.io/p5MediaPipe/image-classification/

La clasificaciones de imagen, como menciona el nombre, es un clasificador de objetos de los cuales se visualizan en la camara web

![Captura de pantalla 2024-05-10 171810](https://github.com/BenjaIeg/audiv027-2024-1/assets/128185999/40ffe344-be8a-4a42-9ae1-45cbdef60ca3)

![Captura de pantalla 2024-05-10 171905](https://github.com/BenjaIeg/audiv027-2024-1/assets/128185999/2403f258-4416-45d8-8d7f-0f0ecd2a7226)

Herramientas de las cuales se apoya el codigo

MediaPipe y libreria de Clasificacion de imagenes:

https://developers.google.com/mediapipe/solutions/vision/image_classifier

Visualizacion de los 3 codigos a la vez https://codepen.io/mediapipe-preview/pen/BaVZejK

ImageNet: Es un banco de datos de miles de imagenes cargadas y entrenadas para el area de computer vision y deep learning.

![Captura de pantalla 2024-05-10 172259](https://github.com/BenjaIeg/audiv027-2024-1/assets/128185999/8a141be9-d2e1-4846-b33d-01f8d5639774)



Codigo para la visualizacion en la web

```

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>p5MediaPipeHands Image Classification</title>
</head>

<body>


  <body>
    <h1>Image Classification</h1>
    <p id="message"></p>


    <button id="webcamButton" disabled>
      ENABLE WEBCAM
    </button>
    <div style="position: relative;">
      <video id="webcam" style="position:absolute;left:0px;top:0px;width:100%;height:auto" autoplay playsinline></video>
      <div id="canvas" style="position:absolute;left:0px;top:0px">
      </div>
    </div>

    <!-- include js libraries -->
    <script src="./js/drawing_utils.js" crossorigin="anonymous"></script>
    <script src="./js/p5.js"></script>
    <script src="./js/sketch.js"></script>
    <script type="module" src="./js/script.js"></script>

  </body>

</html>
```

## Codigo de funcionamiento 

```

let classification_results;

function setup() {
  let p5canvas = createCanvas(400, 400);
  p5canvas.parent('#canvas');

  // お手々が見つかると以下の関数が呼び出される．resultsに検出結果が入っている．
  gotClassification = function (results) {
    classification_results = results;
    adjustCanvas();
  }
}

function draw() {
  // 描画処理
  clear();  // これを入れないと下レイヤーにあるビデオが見えなくなる

  // 各頂点座標を表示する
  // 各頂点座標の位置と番号の対応は以下のURLを確認
  // https://developers.google.com/mediapipe/solutions/vision/hand_landmarker
  if (classification_results) {
    let name = classification_results.classifications[0].categories[0].categoryName;
    let score = classification_results.classifications[0].categories[0].score;
    // console.log(classification_results.classifications[0].categories[0]);
    textSize(48);
    text(`${name}: ${(score * 100).toFixed(0)} %`, 20, 64);
  }

}

function windowResized() {
  adjustCanvas();
}

function adjustCanvas() {
  // Get an element by its ID
  var element_webcam = document.getElementById('webcam');
  resizeCanvas(element_webcam.clientWidth, element_webcam.clientHeight);
  //console.log(element_webcam.clientWidth);
}

```
