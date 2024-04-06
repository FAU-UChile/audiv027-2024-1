dragged -> arrastrar
start recording -> muevo el mouse -> train -> run

Processing simplecolor:
*permite que llegue la señal a wekinator:*
//Necessary for OSC communication with Wekinator:
import oscP5.*;
import netP5.*;
OscP5 oscP5;
NetAddress dest;

float una manera de describir con los mismos bits números que pueden tener decimales, ya que estammos en tre el 1 y decimales: 
10.//Parameters of sketch
11. float myHue;
12. PFont myFont;

Pfont -> los que tienen prefijo P se hizo especificamente para processing y es un lugar donde puedo cargar una tipografía 


15.//Initialize OSC communication              -> donde empieza la comunicación 
  16.oscP5 = new OscP5(this,12000); //listen for OSC messages on port 12000 (Wekinator default)             -> (this, 12000) es una forma de decir "este computador" se refiere a este en especifico
  17. dest = new NetAddress("127.0.0.1",6448); //send messages back to Wekinator on port 6448, localhost (this machine) (default)

19. colorMode(HSB);        -> interpreta por conecuencia al no poner RGB
20. size(400,400, P3D);    -> crea el lienzo y P3D significa que el render es capaz de hacer cosas en 3d
21. smooth();                -> 
22. background(255);

30. void draw() {        -> 
  background(myHue, 255, 255);  -> pinta el fondo de color. (myhue, maximo de saturacion, maximo de brillo)
  drawtext();

Processing particule: 
- input 2 y output 3

Knn -> Nearest neighbor : algoritmo que es es como comparativo con las muestras más cercanas. toma en cuenta solo a aquellas muestras que están más cerca. el computador Calcula la distancia y este toma la decisión 

CPU/unidad central de pensamiento: hace los calculos matematicos para que la computadora funcione 

GPU: para ver un pixel en cada momento se hacen 3 calculos al mismo tiempo. su fin es grafico para hacer pixeles, hace mmuchos calculos en paralelo, porque quiere refrescar cada pixel 3 numeros al mismo tiempo. tiene una escala e tirmpo muy rapida 
la gpu se usa para entranar la inteligencia artificial, no es que fueran creadas para ellos pero son muy usadas en este ambito. 

TPU: La tpu es de tensores, o sea si la GPU es capaz de hacer una matriz de datos para pixeles, esta es para matrices en general. es especifico para programar tensores. 
tensorflow -> de google para programar tensores. 

https://alt-ai.net/



