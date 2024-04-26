Clase 7

## Control de gamepad-keyboard a travez de poses

Tipeo de teclas predeterminadas a travez del uso de inteligencia artificial para reconocer poses y asociarlos a acciones.

Herramientas utilizadas.

Teacheable Machine

Python

Navegador

Camara Webcam

#Documentacion

## Teacheable machine

Lo primero a realizar cuando la idea a realizar fue confirmada con el uso de gestos o poses a travez de la camara, nos pusimos
manos a la obra con la primera herramienta de reconocimiento de poses pre entrenada, Teacheable Machine.

Las poses a realizar y diferenciar con el programa fueron, PATADA, PUÑO y NINGUNO (estado neutro)

Modelo entrenado para diferenciar las poses:

https://teachablemachine.withgoogle.com/models/4hGtLV8sq/

##Pyhthon

Ya con el modelo descargado, se investigo en internet que herramientas y referentes teniamos disponibles para traducir el reconocimiento de diferentes poses
a la accion de teclear botones determinados del Teclado.

Nos encontramos con el material necesario en el cual se realiza aquellas acciones que describimos con una mayor cantidad de poses.

[Video Youtube: I made a full-body GAME controller](https://www.youtube.com/watch?v=Vi3Li3TkUVY) 

[Codigo abierto Full body game controler](https://github.com/everythingishacked/Gamebody)

Nos pusimos a analizar y realizar una autopsia del codigo existente para la adaptacion de nuestros estandares los cuales eran solo 3 posiciones

## El Codigo 

import cv2
import keyboard
import numpy as np
import tensorflow as tf

// Cargar el modelo TensorFlow Lite
ruta_al_modelo = 'model_unquant.tflite'
interprete = tf.lite.Interpreter(model_path=ruta_al_modelo)
interprete.allocate_tensors()

// Obtener los detalles del input y output del modelo
entrada_details = interprete.get_input_details()
salida_details = interprete.get_output_details()
altura = entrada_details[0]['shape'][1]
ancho = entrada_details[0]['shape'][2]

// Función para detectar el gesto (puño o patada)
def detectar_gesto(frame):
    // Preprocesar el frame para que coincida con el formato de entrada del modelo
    frame = cv2.resize(frame, (ancho, altura))
    frame = frame / 255.0  # Normalizar

    // Agregar una dimensión para el batch
    frame = np.expand_dims(frame, axis=0).astype(entrada_details[0]['dtype'])

    // Configurar la entrada del modelo y realizar la inferencia
    interprete.set_tensor(entrada_details[0]['index'], frame)
    interprete.invoke()

    // Obtener la salida y la clase con la mayor probabilidad
    output_data = interprete.get_tensor(salida_details[0]['index'])
    clase_predicha = np.argmax(output_data)

    // Devolver el gesto detectado
    if clase_predicha == 1:
        return 'Puño'
    elif clase_predicha == 2:
        return 'Patada'
    else:
        return 'Ninguno'

// Inicializar la cámara
cap = cv2.VideoCapture(0)

while True:
    // Capturar frame por frame
    ret, frame = cap.read()

    // Mostrar el frame
    cv2.imshow('Frame', frame)

    // Detectar un gesto
    gesto = detectar_gesto(frame)

    // Accionar según el gesto detectado
    if gesto == 'Puño':
        // Simular la pulsación de la tecla 'a'
        keyboard.press('a')
        keyboard.release('a')
    elif gesto == 'Patada':
        // Simular la pulsación de la tecla 'x'
        keyboard.press('x')
        keyboard.release('x')

    // Salir de del bucle si se presiona 'q'
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

// Liberar la cámara y cerrar todas las ventanas
cap.release()
cv2.destroyAllWindows()

## Conclusiones

Mientras que Aun existen modelos de Machine learning con enfoque en los gestos disponibles, aquellos que estan abiertos al publico como Teacheable Machine
o PoseNet el cual tambien se probo, muchos de estos pueden tener fallas con respecto a la pose que uno quiere identificar, como en el caso de las patadas,
el cual requiere almenos tener una pierna despegada del suelo y levantada, cosa que aquellas herramientas anteriormente nombradas no logran captar en la 
previsualizacion del esqueleto.

En este trabajo aprendi sobre el uso de python y sobre todo asociado a las acciones integradas del computador, como en este caso, tipear teclas usando python como medio.

Tambien aprendimos a aplicar modelos de aprendizaje automatico, en este caso aquellos modelos que teacheable machine nos entrego, y ponerlos en practica en un codigo, es decir
que el codigo y programa deben ser capaz de identificar que se les entrega un modelo de TENSORFLOW lite, y diferenciar cada gesto el cual se le entrego, para asociarlos y compararlos con los datos que la webcam esta enviando
y RECONOCER que "pose" entrenada se esta realizando.



