# Clase 7: Entrega Proyecto

## Control de gamepad-keyboard a traves de poses

Fecha: Viernes 26 de abril de 2024
Integrantes: <https://github.com/chicomaker> y <https://github.com/Juanitaliano>

Tipeo de teclas predeterminadas a travez del uso de inteligencia artificial para reconocer poses y asociarlos a acciones.

###Herramientas utilizadas.

Teacheable Machine

Python

Navegador

Camara Webcam

## Documentacion

### Teacheable machine

Lo primero a realizar cuando la idea a realizar fue confirmada con el uso de gestos o poses a travez de la camara, nos pusimos
manos a la obra con la primera herramienta de reconocimiento de poses pre entrenada, Teacheable Machine.

Las poses a realizar y diferenciar con el programa fueron, PATADA, PUÑO y NINGUNO (estado neutro)

Modelo entrenado para diferenciar las poses:

Recopilacion de una pose en la cual no ejercemos ni una accion, simplemente brazos y piernas estirados hacia el suelo

![](https://github.com/BenjaIeg/audiv027-2024-1/blob/main/estudiantes/08-BenjaIeg/clase-07/IMAGENES/PARADO.png)

Esta posicion fue la mas dificil de reconocer al modelo de teacheable machine pues no se le da muy bien recibir la informacion de las piernas cuando estas se encuentran perpendiculares. 
Se podria traducir como una posicion en donde no se puedan leer las piernas o donde la rodilla esta ligeramente hacia arriba.

![](https://github.com/BenjaIeg/audiv027-2024-1/blob/main/estudiantes/08-BenjaIeg/clase-07/IMAGENES/PATADA.png)

Y por ultimo la posicion de puño, en donde nuestro esqueleto esta tiene uno de los brazos extendidos horizontalmente.

![](https://github.com/BenjaIeg/audiv027-2024-1/blob/main/estudiantes/08-BenjaIeg/clase-07/IMAGENES/GOLPE.png)

A continuacion es el modelo entrenado en clases, de las posiciones y disponibilidad para su descarga.

https://teachablemachine.withgoogle.com/models/4hGtLV8sq/

El resultado de la descarga tambien se encuentra disponible en este repositorio con el nombre de "model_unquant.tflite"

### Python

Ya con el modelo descargado, se investigo en internet que herramientas y referentes teniamos disponibles para traducir el reconocimiento de diferentes poses
a la accion de teclear botones determinados del Teclado.

Nos encontramos con el material similar en la cual se realiza aquellas acciones que describimos con una mayor cantidad de poses.

[Video Youtube: I made a full-body GAME controller](https://www.youtube.com/watch?v=Vi3Li3TkUVY) 

[Codigo abierto Full body game controler](https://github.com/everythingishacked/Gamebody)

Uno de los problemas que tenemos con el uso de este codigos es el gran numero de lineas que este necesita utilizar, junto con la cantidad de archivos, peso y potencia que necesita el computador personal para su funcionamiento.
El codigo que se nos presenta no solo analizaba el esqueleto y las coordenadas de nuestro esqueleto si no que tambien mandaba las coordenadas de multiples posiciones de las diferentes opciones de modelos los cuales se entrenaron para dicho proyecto.

En el presente trabajo mandaremos a python para cargar los 3 modelos entrenados anteriormente;"puño", "patada" y "parado-ninguno". Y le pediremos que compare el esqueleto mostrado en nuestra webcam y que el mismo tensorflow reconozca y decida cual es la posicion mas cercana a la que se esta realizando en la WEBCAM. 

Para la correcta ejecucion se necesitan las siguientes librerias de lenguaje para python

**cv2** el cual es una libreria que nos permite trabajar con a visualizacion, manipulacion y filtrado de imagenes en python.

**keyboard** lenguaje para recopilar las respuestas del teclado de nuestro computador.

**Numpy** Soporte para la creacion de vectores y matices en python, se especializa en el calculo numerico y calculo de datos.

**Tensorflow** permite la implementacion de aprendizaje automatico como lo es el archivo entregado por Teacheable Machine.

#### Nuestro Codigo 

```

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
    frame = frame / 255.0  //Normalizar

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

//capturar frame por frame

while True:
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
```
El codigo puesto en practica permite dar la orden al computador para esxribir 2 teclas.

Al mantener el puño y brazo extendido, el codigo entendera que esa accion es tambien el tipeo de la tecla *a*

Mientras que con la pierna levantada, el codigo enviara la orden de teclar la tecla *x*

![](https://github.com/BenjaIeg/audiv027-2024-1/blob/main/estudiantes/08-BenjaIeg/clase-07/VideoPrueba.mp4)

El modelo entrenado contempla una tercera pose la cual es una neutral en donde uno solo esta parado, esta pose sirve como medida para hacer entender al programa de que no queremos mandar ni una orden, pues sin la existencia de ese modelo, el programa intentaria describir la pose de "parado" como una de las 2 poses y por consecuencia, la orden asociada a esas teclas.
## Conclusiones

Mientras que Aun existen modelos de Machine learning con enfoque en los gestos disponibles, aquellos que estan abiertos al publico como Teacheable Machine
o PoseNet el cual tambien se probo, muchos de estos pueden tener fallas con respecto a la pose que uno quiere identificar, como en el caso de las patadas,
el cual requiere almenos tener una pierna despegada del suelo y levantada, cosa que aquellas herramientas anteriormente nombradas no logran captar en la 
previsualizacion del esqueleto.

En este trabajo aprendi sobre el uso de python y sobre todo asociado a las acciones integradas del computador, como en este caso, tipear teclas usando python como medio.

Tambien aprendimos a aplicar modelos de aprendizaje automatico, en este caso aquellos modelos que teacheable machine nos entrego, y ponerlos en practica en un codigo, es decir
que el codigo y programa deben ser capaz de identificar que se les entrega un modelo de _Tensorflow Lite_, y diferenciar cada gesto el cual se le entrego, para asociarlos y compararlos con los datos que la webcam esta enviando
y **reconocer** que "pose" entrenada se esta realizando.



