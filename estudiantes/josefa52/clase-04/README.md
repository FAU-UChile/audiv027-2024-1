# Apuntes Clase 05/04

el valor, enseñar distintas formas al cuadrado. 0 con un slider, tenemos una variable entre 0 y 1

<ul>
import oscP5 import netP5 OscP5 oscP5 NetAddress dest
</ul>

Permite que le lleguen mensajes a wekinator 

float myHue;

PFont myFont;

<ul>
<li>float: 0 a 1 mapa de bits. puede ser un entero. los floats es una manera de describir números con parte decimal, como estamos de 0 a 1. 
<li>pfont: los que tienen prefijo p, es un lugar en donde puedo cargar tipografía, es una tipografía.
<li>("127.0.0.1",6448) esto es la IP del computador, el mensaje va y llega al mismo computador
<li>6448):puerto
<li>colorMode(HSB): equivalente al RGB
<li>myHue = 255 va entre 0 a 255

-void draw() {
  background(myHue, 255, 255); máx. de saturación y brillo
  
-map(receivedHue, 0, 1, 0, 255); escalar de 0 a 1 a 0 a 255

<h4>wekinator</h4>

KNN: el nn significa nearest neighbours 
calcula distancia entre x e y. El algoritmo dependiendo de la distancia que "figura" será más importante (K)
