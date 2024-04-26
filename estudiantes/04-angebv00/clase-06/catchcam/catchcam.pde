import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress wekinatorAddress;

float posX;
float posY;
float ballX;
float ballY;
float ballSpeedX = 2; // Velocidad de la pelota en el eje X
float ballSpeedY = 2; // Velocidad de la pelota en el eje Y
float ballSize = 30;
boolean gameOver = true;

// Número de inputs y outputs
int numInputs = 1; // Posición horizontal de la cara
int numOutputs = 1; // Posición horizontal del rectángulo

void setup() {
  size(640, 480);
  rectMode(CENTER);
 
  posX = width / 2;
  posY = height * 0.9; // Posición inicial del rectángulo
  ballX = random(width); // Posición aleatoria en el eje X
  ballY = random(height * 0.5, height); // La pelota empieza desde arriba
 
  // Configurar OSC para enviar datos a Wekinator
  oscP5 = new OscP5(this, 12000);
  wekinatorAddress = new NetAddress("127.0.0.1", 6448); // Dirección de Wekinator
 
  // Enviar información sobre el número de inputs y outputs a Wekinator
  sendOSCMessage("/wekinator/control/inputs", numInputs);
  sendOSCMessage("/wekinator/control/outputs", numOutputs);
}

void draw() {
  background(0);
 
  // Dibujar el rectángulo controlado por Wekinator
  fill(255);
  rect(posX, posY, 40, 10);
 
  // Dibujar la pelota
  fill(255, 0, 0);
  ellipse(ballX, ballY, ballSize, ballSize);
 
  // Actualizar la posición de la pelota
  ballX += ballSpeedX;
  ballY += ballSpeedY;
 
  // Verificar colisión de la pelota con los bordes de la pantalla
  if (ballX + ballSize/2 >= width || ballX - ballSize/2 <= 0) {
  // Si la pelota toca el borde izquierdo o derecho, cambiar la dirección en X
  ballSpeedX *= -1;
  }
 
  if (ballY + ballSize/2 >= height || ballY - ballSize/2 <= 0) {
  // Si la pelota toca el borde superior o inferior, cambiar la dirección en Y
  ballSpeedY *= -1;
  }
 
  // Verificar colisión de la pelota con el rectángulo
  if (ballY + ballSize/2 >= posY - 5 && ballX > posX - 20 && ballX < posX + 20) {
  // Si la pelota toca el rectángulo, cambiar la dirección en Y
  ballSpeedY *= -1;
  // También ajustar la dirección en X de la pelota hacia el centro del rectángulo
  float offsetX = ballX - posX;
  ballSpeedX += offsetX * 0.1;
  }
}

void keyPressed() {
  if (key == ENTER) { // Si se presiona Enter
  gameOver = false; // Reiniciar el juego
  }
}

void oscEvent(OscMessage theOscMessage) {
  if (theOscMessage.checkAddrPattern("/wek/outputs")) {
  // Recibir predicciones de Wekinator
  float predictionX = theOscMessage.get(0).floatValue();
    
  // Mapear las predicciones a la posición del rectángulo
  posX = map(predictionX, 0, 1, 0, width);
  }
}

// Función para enviar mensajes OSC a Wekinator
void sendOSCMessage(String address, int value) {
  OscMessage msg = new OscMessage(address);
  msg.add(value);
  oscP5.send(msg, wekinatorAddress);
}
