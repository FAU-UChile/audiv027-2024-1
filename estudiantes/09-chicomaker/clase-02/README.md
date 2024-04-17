Hize muchas cosas hoy

descubri que puedo visualizar la camara en procesing usando este codigo:
/**
 * Getting Started with Capture.
 * 
 * Reading and displaying an image from an attached Capture device. 
 */

import processing.video.*;

Capture cam;

void setup() {
  size(640, 480);

  String[] cameras = Capture.list();

  if (cameras == null) {
    println("Failed to retrieve the list of available cameras, will try the default...");
    cam = new Capture(this, 640, 480);
  } else if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    printArray(cameras);

    // The camera can be initialized directly using an element
    // from the array returned by list():
    cam = new Capture(this, cameras[1]);

    // Or, the camera name can be retrieved from the list (you need
    // to enter valid a width, height, and frame rate for the camera).
    //cam = new Capture(this, 640, 480, "FaceTime HD Camera (Built-in)", 30);
  }

  // Start capturing the images from the camera
  cam.start();
}

void draw() {

  if (cam.available() == true) {
    cam.read();
  }
  // Draw the captured image mirrored horizontally
  pushMatrix(); // Save the current transformation matrix
  scale(-1, 1); // Mirror the image horizontally
  image(cam, -width, 0, width, height); // Draw the mirrored image
  popMatrix(); // Restore the original transformation matrix
}

tambien descubri que puedo voltear la camara tipo espejo usando estas lines de codigo:

  // Draw the captured image mirrored horizontally
  pushMatrix(); // Save the current transformation matrix
  scale(-1, 1); // Mirror the image horizontally
  image(cam, -width, 0, width, height); // Draw the mirrored image
  popMatrix(); // Restore the original transformation matrix


      tambien aprendi como usar wekinator para hacer mi primera IA, fue god.       


                                                           investigar GOOGLE CREATIVE LAB


                                                           TEACHEBLE MACHINE


esto fue epiko señores 

                                                           Mi Modelo: https://teachablemachine.withgoogle.com/models/Ebzn95n5r/
 mi modelo permite reconocerme a mi(Diego) a mi amigo benja 2 figuras que tenia a mano y ademas, subi unas 77 fotos de mi novia y ahora la reconoce en otras fotos.
                                                           
