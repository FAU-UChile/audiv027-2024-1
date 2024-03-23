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

poner en imputs 2
outputs 1
el osc está en verde es porque llegó un mensaje (estamos en x e y), si está en rojo es porque llegó algo pero no era el esperado
le pedimos a wekinator que respondiera 1 cosa y una salida de 2
con todo esto se creará una base de datos
dejar el outpots en 1, dejar el mouse a la derecha y mover el mouse solo en esta mita,detener grabación y cambiar a outpot 2 y poner el cursor a la izq, moverlo en esta mitad y detener grabación. Después de esto poner entrenar, después poner correr y mover el cursor, esto hace que al mover el cursos, el programa ya sabe que lado es der e izq por lo que el output cambia de número

la ventana de wekinator se cierra con stop de processing

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
