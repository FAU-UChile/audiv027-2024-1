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

1-Wekinator example bundles

![Captura de pantalla 2024-04-05 154315](https://github.com/josefa52/audiv027-2024-1/assets/163590856/5a45a045-c16d-418e-a7ef-b113e5f7a607)

2- Descargar oscp5 en libraries
![Captura de pantalla 2024-04-05 154508](https://github.com/josefa52/audiv027-2024-1/assets/163590856/6210d266-7f9b-4685-b637-44a4af3a2fdf)

3-Descargar processing simple color continuos de examples bundles en wekinator
![Captura de pantalla 2024-04-05 154547](https://github.com/josefa52/audiv027-2024-1/assets/163590856/4d9010a1-918f-48da-aaf6-cd14663f5b99)

4- Poner inputs y outputs

![Captura de pantalla 2024-04-05 161327](https://github.com/josefa52/audiv027-2024-1/assets/163590856/6f1ec937-bd2c-4881-8c03-28bec59fb43e)

5- Descargar simple continuously-controlled particle system y entrenar en wekinator junto a processing simple color continuos

![Captura de pantalla 2024-04-05 162603](https://github.com/josefa52/audiv027-2024-1/assets/163590856/9b9e99a8-401b-4c56-a82e-3c1c6f91e2bb)
![Captura de pantalla 2024-04-05 163026](https://github.com/josefa52/audiv027-2024-1/assets/163590856/c45511ee-fb40-4cef-b392-0d65b4ace5fa)




