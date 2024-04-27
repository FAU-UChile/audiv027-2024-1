# Apuntes clase 22/03
markdown cheatsee
es un lenguaje
https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet

processing
manipular pixeles 
archivo>ejemplos>

biblioteca de videos
importar y exportar videos
()=acción/función
void setup() esto es una función
void setup() { setup con murciélago, para cerrar 
[]
{}
void draw() {
60 veces por segundo
la cámara está en setup y draw

errores: escanea en que está el computador. primero conectar la cámara, usarla si funciona en otro programa y después abrir processing y ver si la cámara funciona ahí 
usar slitcam
cerrar una cámara para abrir otra


 * Brightness Tracking 
 * by Golan Levin. 
 *
 * Tracks the brightest pixel in a live video signal. 
 */


wekinator http://www.wekinator.org/examples/

oscp5: proce 55g. p5 es la manera corta de decir processing. Es un tributo al processing original, aplicación antigua. le da la capacidad de dar osc a processing

osc mandar información rápida y en vivo
se empaqueta como vector. sc es una manera de comuncación, como grabar audios.

conectar la ventana de oscp5 con wekinator
se configura wekinator
leer:
/**
* REALLY simple processing sketch that sends mouse x and y position to wekinator
* This sends 2 input values to port 6448 using message /wek/inputs
**/

1- Poner en imputs 2 y en outputs 1. El osc está en verde es porque llegó un mensaje (estamos en x e y), si está en rojo es porque llegó algo pero no era el esperado. Le pedimos a wekinator que respondiera 1 cosa y una salida de 2, con todo esto se creará una base de datos.
![Captura de pantalla 2024-03-22 161556](https://github.com/josefa52/audiv027-2024-1/assets/163590856/c02047ac-21dd-4f30-9d24-77273f009030)

2-Dejar el outpots en 1, dejar el mouse a la derecha y mover el mouse solo en esta mitad,detener grabación y cambiar a outpot 2 y poner el cursor a la izq, moverlo en esta mitad y detener grabación. Después de esto poner entrenar, después poner correr y mover el cursor, esto hace que al mover el cursor, el programa ya sabe que lado es derecha e izquierda por lo que el output cambia de número.
![Captura de pantalla 2024-03-22 161609](https://github.com/josefa52/audiv027-2024-1/assets/163590856/14037977-6ca0-4896-b8b8-d7e084ae2402)

![Captura de pantalla 2024-03-22 161642](https://github.com/josefa52/audiv027-2024-1/assets/163590856/e404f599-dbcf-42ff-894f-1c50ce818a25)

![Captura de pantalla 2024-03-22 161841](https://github.com/josefa52/audiv027-2024-1/assets/163590856/340d9592-36e3-4bd4-8a22-f5a337ed011c)

![Captura de pantalla 2024-03-22 161841](https://github.com/josefa52/audiv027-2024-1/assets/163590856/e4ab41a9-7898-4009-a91f-d28b6ad15c9b)

![Captura de pantalla 2024-03-22 162531](https://github.com/josefa52/audiv027-2024-1/assets/163590856/25b90679-d21a-4781-bee7-dfeca563dbbd)

![Captura de pantalla 2024-03-22 154403](https://github.com/josefa52/audiv027-2024-1/assets/163590856/66baa68e-2c7f-416c-b823-59c599964a9c)

![Captura de pantalla 2024-03-22 155015](https://github.com/josefa52/audiv027-2024-1/assets/163590856/295f1b54-c99b-4eb7-8c8b-2171d733b753)

![Captura de pantalla 2024-03-22 155917](https://github.com/josefa52/audiv027-2024-1/assets/163590856/f8328487-562c-4a26-9612-f8b10a75d507)

![Captura de pantalla 2024-03-22 161339](https://github.com/josefa52/audiv027-2024-1/assets/163590856/1f629e4a-76f1-4a82-9c37-d6987d5bd9e8)


La ventana de wekinator se cierra con stop de processing

TOUCHSC
https://hexler.net/touchosc

VIDEO WEBCAM
osx sist operativo de apple, lo más nuevo para utilizar si no funciona la primera opción 
ctrl f menú para buscar y cambiar de video a cam 
p5js: versión web de processing 

https://github.com/googlecreativelab
tensorflow
https://teachablemachine.withgoogle.com/
guardian project
https://ml5js.org/
youtube: the coding train
https://medium.com/processing-foundation/from-simple-to-advanced-ml5-js-70d6730b360b
https://runwayml.com/
https://editor.p5js.org/AndreasRef/sketches/4K_YGuMik

actualizar github 
