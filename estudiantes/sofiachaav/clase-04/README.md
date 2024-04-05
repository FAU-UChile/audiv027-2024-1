Para wekinator con el codigo "simple mouse x,y position" -ejemplos online de wekinator-, descargamos y abrimos en proccesing:
1. abrimos wekinator, 2 input, 1 output
2. grabamos en wekinator en 0 mientras movemos el cursor en el lado izquierdo de la pantalla
3. grabamos en wekinator en 0,5 mientras movemos el cursor en el medio de la pantalla
4. grabamos en wekinator en 1 mientras movemos el cursor en el lado derecho de la pantalla
5. train
6. run

con esto el computador entiende y distingue los lados y el medio

luego usamos "Simple continuous color control"
comunicacion con wekinator:
//Necessary for OSC communication with Wekinator:
import oscP5.*;
import netP5.*;
OscP5 oscP5;
NetAddress dest;

numeros que pueden distinguir parte decimal:
//Parameters of sketch
float myHue;
(los numeros son entre 1 y 0 en el lenguaje de programacion, excepto por float)

lugar donde puedo cargar una tipografia:
PFont myFont;

si algun dia te llega un mensaje haz esto, tona ese valor que te llega y escalalo entre 0 y 255 (RGB): 
//This is called automatically when OSC message is received
void oscEvent(OscMessage theOscMessage) {
 if (theOscMessage.checkAddrPattern("/wek/outputs")==true) {
     if(theOscMessage.checkTypetag("f")) { // looking for 1 control value
        float receivedHue = theOscMessage.get(0).floatValue();
        myHue = map(receivedHue, 0, 1, 0, 255);
     } else {
        println("Error: unexpected OSC message received by Processing: ");
        theOscMessage.print();
      }


si wekinator envia 2 parametros y proccesing necesita 3, no va a funcionar 

en el ejemplo "Simple continuously-controlled particle system" abrimos nuevamente wekinator, y ponemos 2 entradas y 3 salidas, junto con el ejemplo anterior de "simple mouse x,y position"
1. grabamos en 1 las posiciones izquierdas del mouse en x e y, y grabamos las posiciones derechas en 1
2. train
3. run
4. mientras movemos el mouse en el ejemplo 1, el ejemplo 2 cambiara su posicion y gravedad

![image](https://github.com/sofiachaav/audiv027-2024-1/assets/129554344/ea3a572e-3ba6-4238-bf1b-50b4e4fb445f)
