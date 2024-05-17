# **Clase 10/05/2024**
the component Gallery
- computer visision (cv) trata de encargarse de el computador "pueda ver". detecta escenas objetos, tracking, eventos, estimar movimiento, poses 3d, imagenes, esto a través de entrenamiento con IA.
- Kate Crawford autora de libro sobre la huella de carbono de IA (Atlas of IA)
- clmtrackr es una libreria de Javascript para reconocer caras en videos o imagenes (bastante antiguo tho) 
- como un computador detecta una cara? como reconoce esto? analiza la pupila, busca encontrarla siempre ya que no es algo cambiante. busca el pixel de la pupila, esto porque otros rasgos como cejas, nariz, etc pueden cambiar, tambien busca ciertas simetrias
- https://github.com/auduno/clmtrackr?tab=readme-ov-file

 yo puedo modificar el codigo de una pagina sin alterarla en general porque estar en una pagina es como descargarla y hacerla correr en el momento
la version que funciona actualmente equivalente a var en javascript es let
- hay ciertos concepto de codifgo como "auto loop" que hoy en dia son considerados antiguos, ya no se usan por lo que si lo vemos en un codigo podemos asumir que es antiguo.
- que algo sea asincrono significa que no hay un tiempo determinado que algo sucda, ciertos botones u opciones podrian o no ser activados u apretados y eso se programa, se programa  los momentos determinados que este se va activar según el el consentimiento del usuario de apretar o no el botón y
- "mediapipe ondevice machine for everyone" motor el cual se usa para distintos tipos de apps y usos de reconocimiento facial y usarlo en pequeños dispositivos como moviles (lo cual es un gran desafio) encuentra caras a pesar de la gestualidad y accsesorios
- mediapipe esta hecho por google, puede ser usado para leer, cosas, textos, personas etc.
alfaphabet es el investor relation de google, google es dueño de multiples
- google coral
- guardian proyect lugar donde se hacen aplicaciones seguras de softward de fuente abierta, para que nadie intercepte tus datos, obscrura cam por ej, navegador thor
- Haven bajo procesador de android, si es apple es secreto

   # "EJERCICIO EN CLASES"
  # "HANDS LANDMAKER"
  
let hand_results;

function setup() {
  let p5canvas = createCanvas(400, 400);
  p5canvas.parent('#canvas');

  // お手々が見つかると以下の関数が呼び出される．resultsに検出結果が入っている．
  gotHands = function (results) {
    hand_results = results;
    adjustCanvas();
  }
}

function draw() {
  // 描画処理
  clear();  // これを入れないと下レイヤーにあるビデオが見えなくなる

  // 各頂点座標を表示する
  // 各頂点座標の位置と番号の対応は以下のURLを確認
  // https://developers.google.com/mediapipe/solutions/vision/hand_landmarker
  if (hand_results) {
    if (hand_results.landmarks) {
      for (const landmarks of hand_results.landmarks) {
        for (let landmark of landmarks) {
          noStroke();
          fill(100, 150, 210);
          circle(landmark.x * width, landmark.y * height, 10);
        }
      }
    }
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

# "definiciones del codigo"
- function setup define propiedades iniciales como el tamaño de la pantalla y el color de fondo, y para cargar medios
- "お手々が見つかると以下の関数が呼び出される．resultsに検出結果が入っている gotHands = function (results) {
    hand_results = results; adjustCanvas();" es cuando encuentra la mano y describe las funciones que contienen los resultados de la detección.
  
  - function draw() { -> proceso de renderización de la imagen 
  // 描画処理
  clear();  // これを入れないと下レイヤーにあるビデオが見えなくなる clear remueve todos los elementos de un objeto Set por lo que significa que "Si no lo incluye, no verá el vídeo en la capa inferior."

- // https://developers.google.com/mediapipe/solutions/vision/hand_landmarker
  if (hand_results) {
    if (hand_results.landmarks) {
      for (const landmarks of hand_results.landmarks) {
        for (let landmark of landmarks) {
          noStroke();
          fill(100, 150, 210);
          circle(landmark.x * width, landmark.y * height, 10);   se visualizan coordenadas de los veertices y la correspondencia entre la posición y el número de cada coordenada de vértice (puntos de referencias sobre las manos) 
  ![imagen](https://github.com/angebv00/audiv027-2024-1/assets/163590234/0acb80a9-8880-4d80-a3c8-a7bfa62b5526)
  https://developers.google.com/mediapipe/solutions/vision/hand_landmarker

- function windowResized()
{ adjustCanvas();  busca ajustar las dimensiones del lienzo (canvas) en el que se están dibujando los gráficos

- function adjustCanvas() { parte del ajuste de dimsensiones del lienzo 
 Get an element by its ID
  var element_webcam = document.getElementById('webcam');  Un id es un identificador unico, esto quiere decir que solo se puede poner o se recomienda solo poner una vez en un elemto HTML, 'usar el ID' es a usar la variable donde obtuviste el elemento por el ID
  o sea el ID es de donde se obtuvo
- var element_webcam = document.getElementById('webcam');
  resizeCanvas(element_webcam.clientWidth, element_webcam.clientHeight);
  //console.log(element_webcam.clientWidth);
}  Aqui se interactúa con la camara
  
