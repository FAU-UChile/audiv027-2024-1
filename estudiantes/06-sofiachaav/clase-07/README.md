component.gallery

Designed to be a reference for anyone building component-based user interfaces, The Component Gallery is an up-to-date repository of interface components based on examples from the world of design systems.

CV: computer vision

rama que intenta entrenar al coputador para ver 

como ejemplo de la empreabilidad de esto seria el traje que uso el actor de gollum, personaje que para ser creado necesitaba de sensores en el cuerpo que el computador reconoce para reemplazar

![image](https://github.com/sofiachaav/audiv027-2024-1/assets/129554344/9cfcbd37-8307-4bb7-8b18-f3f10691da17)

CLMTRACKER: Javascript library for precise tracking of facial features via Constrained Local Models

![image](https://github.com/sofiachaav/audiv027-2024-1/assets/129554344/4d80f09d-c24a-4dd8-9914-a09d4e5513b0)

el computador intenta reconocer las dos pupilas de la cara para identificar una cara humana

como ejemplo de la pagina encontramos un buscador de caras:

![image](https://github.com/sofiachaav/audiv027-2024-1/assets/129554344/c2b7b385-2b86-497f-bde7-d109ed4b1046)

que por cierto puede identificar caras en cosas que no necesariamente la tengan 

esta biblioteca permite tambien una version dinamica, que es la siguiente:

![image](https://github.com/sofiachaav/audiv027-2024-1/assets/129554344/07157c43-93b8-4adc-b319-babbfda5e171)

*asincrono: si pasa algo, que pase lo siguiente

mediapipe: On-device machine learning for everyone, facil de usar, innovador y rapido 

permite que la inteligencia artificial pase dentro del dispositivo 

los ejemplos 
![image](https://github.com/sofiachaav/audiv027-2024-1/assets/129554344/9838b142-fc95-405d-8ced-86bcd21745b5


ejercicio

INDEX.HTML 

- la muestra de posicion en la pantalla por parte de la camara es de esa manera por la siguiente linea de codigo en index.html:

  <video id="webcam" style="position:absolute;left:0px;top:0px;width:100%;height:auto;" autoplay playsinline></video>

- esta linea de codigo volte la imagen de la camara:

  transform: rotateY(180deg);

- esta linea de codigo explica queel siguiente elemento aparecera al mismo tiempo que los anteriores sin bloquearlos:

  display: block;

- esta parte hace que sea compatible con otras paginas web:
 
  -webkit-transform: rotateY(180deg);
  -moz-transform: rotateY(180deg); 

- esta linea hace la portada de la pagina con sus respectivos textos:

-   <h1 invisible>Object Detection</h1>
  <p id="message"></p>

![image](https://github.com/sofiachaav/audiv027-2024-1/assets/129554344/4fbcb247-ffa9-442f-9972-48b5f0efdf4f)

- Esta linea hace que aparezca el botón

https://github.com/TetsuakiBaba/p5MediaPipe/blob/82c2578aa1d5d406ba8639869654593a0cb19f28/object-detection/index.html#L29C3-L31C12

![image](https://github.com/sofiachaav/audiv027-2024-1/assets/129554344/7d88ec3e-927f-45c3-89fe-a44441ec446f)


SCRIPT.JS

- esta linea llama a la biblioteca de imagenes a detectar:

  import { ObjectDetector, FilesetResolver } from "./vision_bundle.js";
  document.getElementById("message").innerHTML = "Loading models...";

- Esta linea de codigo hace que el computador pida permiso para activar la webcam:
  // Check if webcam access is supported.
function hasGetUserMedia() {
    return !!(navigator.mediaDevices && navigator.mediaDevices.getUserMedia);

![image](https://github.com/sofiachaav/audiv027-2024-1/assets/129554344/6d0c2cf0-3bb7-478a-a539-716d6420438c)

SCKETCH.JS

Estas lineas tienen la funcion de crear el cuadro anaranjado que contornea el objeto y pone el nombre respectivamente:

function draw() {
    clear();
    if (results) {
        for (let detection of results.detections) {
            let index = detection.categories[0].index;
            let bb = detection.boundingBox;
            let name = detection.categories[0].categoryName;
            let score = detection.categories[0].score;
            let c = getColorByIndex(index);
            c = [...c, 200];
            stroke(c);
            strokeWeight(2);
            noFill();
            rect(
                bb.originX, bb.originY,
                bb.width, bb.height
            )
            fill(c);
            rect(
                bb.originX, bb.originY - 20,
                bb.width, 20
            )

            noStroke();
            fill(255);
            textAlign(LEFT, CENTER);
            text(`[${index}] ${name} - ${score.toFixed(2)}`, bb.originX + 10, bb.originY - 10);
            index++;
        }

![image](https://github.com/sofiachaav/audiv027-2024-1/assets/129554344/adbe81ef-ce3b-4612-a697-f5f333db90f6)

Esta linea de codigo estaba destinada a ajustar el ancho y el largo del ienzo de la camara dependiendo del objeto, pero esta incompleta o en desuso:

function adjustCanvas() {
    // Get an element by its ID
    var element_webcam = document.getElementById('webcam');
    resizeCanvas(element_webcam.clientWidth, element_webcam.clientHeight);
    //console.log(element_webcam.clientWidth);
}

Esta linea de codigo nos comenta los colores que puede detectar la camara:

function getColorByIndex(index) {
    const colors = [
        [240, 128, 128], // ライトコーラル
        [173, 216, 230], // ライトブルー
        [144, 238, 144], // ライトグリーン
        [220, 220, 220], // グレイ
        [244, 164, 96],  // ライトサーモン
        [192, 192, 192], // シルバー
        [255, 222, 173], // ナバホホワイト
        [175, 238, 238], // パオダーターコイズ
        [255, 228, 196], // ビスク
        [221, 160, 221], // プラム
        [250, 128, 114], // サーモン
        [152, 251, 152], // パレグリーン
        [176, 224, 230], // パウダーブルー
        [255, 218, 185], // ピーチパフ
        [240, 230, 140], // カーキ
        [240, 128, 128], // ライトコーラル
        [144, 238, 144], // ライトグリーン
        [192, 192, 192], // シルバー
        [255, 228, 196], // ビスク
        [250, 128, 114]  // サーモン
    ];

  la traduccion seria:

  función getColorByIndex(índice) {
    colores constantes = [
        [240, 128, 128], // coral claro
        [173, 216, 230], // azul claro
        [144, 238, 144], // verde claro
        [220, 220, 220], // gris
        [244, 164, 96], // salmón claro
        [192, 192, 192], // Plata
        [255, 222, 173], // Navajo Blanco
        [175, 238, 238], // Paodar Turquesa
        [255, 228, 196], // sopa
        [221, 160, 221], // ciruela
        [250, 128, 114], // salmón
        [152, 251, 152], // Palacio Verde
        [176, 224, 230], // azul pálido
        [255, 218, 185], // hojaldre de melocotón
        [240, 230, 140], // caqui
        [240, 128, 128], // coral claro
        [144, 238, 144], // verde claro
        [192, 192, 192], // Plata
        [255, 228, 196], // sopa
        [250, 128, 114] // Salmón
    ];

    





