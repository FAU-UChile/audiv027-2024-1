# Evaluación 2: 

**Estudiantes:** 

Natalie Astudillo
Valentina Ochoa. 

**Ideas previas:**

1. Utilización de partículas con un reactivo ante la música usando Touch Designer.

2. Utilización de partículas/colores con imagen.

3. Clasificación de objetos con Tensorflow

4. Arte generativo con p5js. 

5. Clasificación de dibujos con ml5.js. 

**Ideas The Coding Train:**

1. https://www.youtube.com/watch?v=ABN_DWnM5GQ

2. https://www.youtube.com/watch?v=TOrVsLklltM

3. https://github.com/Pawandeep-prog/virtual-paint (mediapipe)

4. https://www.youtube.com/watch?v=TOrVsLklltM
   
5. https://www.youtube.com/watch?v=ZiwZaAVbXQo (Python - MediaPipe - OpenCV)

6. https://www.youtube.com/watch?v=UPgxnGC8oBU&t=406s

7. https://www.youtube.com/watch?v=3MqJzMvHE3E

**Proyecto a realizar**

Snake game (juego de la serpiente)

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/fda6d9a5-b9a8-40ea-9ab0-59a5a9a4058e)

¿Qué es el Snake Game?

Snake Game o mejor conocido al español como el juego de la serpiente, es un videojuego lanzado a mediados de los 70 por Nokia, para los dispositivos electrónicos popularizando su formato en dispositivos telefónicos a modo de entretención para los usuarios. 

En el juego, el usuario desplaza a una velocidad constante un animal; la serpiente, la cual se encuentra dentro de un plano delimitado, el animal va recogiendo alimentos (o algún otro elemento) mientras trata de evitar golpearse contra su cola y/o las paredes que rodean el área del juego. Cada vez que la serpiente se come un pedazo de comida, la cola crece más, provocando que aumente la dificultad del juego. 

El usuario controla la dirección de la cabeza de la serpiente (arriba, abajo, izquierda o derecha) y el cuerpo de la serpiente la sigue. Además, el usuario/jugador no puede detener el movimiento de la serpiente, mientras que el juego está en marcha, el animal seguirá avanzando y recolectando puntos.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/9ebbb0dd-aca3-4f5a-9233-2a062f943ada)

**Lista de materiales**

- Teachable Machine.
- Webcam.
- Editor de p5js.

**Proceso clase 07 de junio 2024**

1. Revisamos videos para entrenar data en Teachable Machine.
2. Revisamos la playlist de The Coding Train, quien nos entrega toda la información para llevar a cabo el proyecto.
3. Entrenamos un primer modelo en Teachable Machine con Proyecto de Imagen, estableciendo las clases arriba, abajo, izquierda y derecha.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/1b10350e-2339-4d66-a22d-1ccb46a521ff)

*Captura de pantalla entrenando el primer modelo*

Al probarlo en otra persona, no detectaba el modelo correctamente. Definía la izquierda como arriba o abajo, pero menos izquierda.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/d7ce4d94-0204-4fb2-99b3-fc6e19418781)

**Primer análisis:**

El primer modelo entrenado en Teachable Machine, no resultó como esperábamos, ya que observamos que al entrenarlo en un fondo específico,  nos detectaba solo en ese espacio. Esto se debe a que utilizamos el Proyecto de Imagen y no el Proyecto de Posturas, por lo que no entrenamos posiciones, sino más bien una imagen sobre otra. 

Utilizar el proyecto de posturas es acorde a lo que deseamos ejecutar (entrenar con una forma/postura adecuada para proceder a la reacción de la serpiente dentro del juego gráfico). Por otro lado, emplear el proyecto de imagen considera más que nada la visual como pixeles (clasificando al usuario como objeto).

4. Entrenamos un segundo modelo en base al análisis realizado anteriormente, esta vez usando el Proyecto de Posturas. Establecimos las mismas clases: izquierda, derecha, arriba y abajo. 

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/1d10a5d3-d72a-4932-bb63-a4bd94b087d8)

**Segundo análisis:**

Nos percatamos que al momento de entrenar el modelo, la cámara grababa de la mitad del cuerpo para arriba por estar en un espacio acotado, por lo que al probarla en otros espacios, la cámara captaba el cuerpo completo, mezclando la parte de los brazos con las piernas. 

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/0923d70f-4aae-4af8-b507-beb614663722)


**Referencias:**

The Coding Train

https://www.youtube.com/playlist?list=PLRqwX-V7Uu6aJwX0rFP-7ccA6ivsPDsK5
https://www.youtube.com/watch?v=AaGK-fj-BAM

2. 


