# Clase 17 de mayo

**Apuntes:**

- GAN: Permite desarrollar un arte generativo a través de la recolección diferentes imágenes. Consiste en una red neuronal para generar imágenes sintéticas. 
  
- Una imagen para un algoritmo es un vector. Una recolección de datos.
  
- Al igual con Wekinator, señala fallos en la base de datos, por ejemplo, te menciona que ''la imagen 25 mil falló''.

- GAN tiene sub géneros, como DCGAN (Deep Convolutional GAN).

- Style GAN: Básicamente una GAN, entrenada con estilos. Pueden ser capaces de entregar rostros. 

- Style Transfer: Reconoce el estilo de un imagen y se lo aplica a otra. Similar a los filtros. 

- SIGGRAPH: Convención de cómo hacer técnicas interactivas para gráficas.

- Pix2pix: Un pixel se convierte en otro pixel.

- Google Creative Lab.

- La computación no se enfoca únicamente en el mouse y el teclado, hay un campo de posibilidades creativas. 

- T-sne: Permite crear una distribución de probabilidad que represente las similitudes de un elemento. 
  
**Artistas que me interesan de ML Art:** 

Lulu xXX, Memo Akten, Seung Joon Choi, Mario Klingemann, Derrick Schultz. 

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/7b960b2e-c533-4ec6-ae14-cf75788a278f)

*Seung Joon Choi*

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/5da393ff-62dc-49ac-8f80-45c40e31945d)

*Lulu xXX*

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/28ca586c-3099-4ae9-8d3e-dda670fe1e77)

*Mario Klingemann* 

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/1bbe348a-44ca-4b92-8294-20f394bd2a64)

*Derrick Schultz*

**Primera parte:**

1. Visita a la página web ML Art:

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/db8769b3-0c57-4658-99f0-27f2ffd0a305)

*https://mlart.co/*

2. Exploración de proyectos en conjunto de la página. Visualización de trabajos con GAN.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/c760b6ae-cd9b-41ef-9145-a4affb63eb3e)

*(Filtrar la página en Tecnología: GAN* 

3. Revisión de la página ''Memo TV'', un experto en Inteligencia Artificial.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/807ddc40-c008-4be7-8e68-cc48b180479c)

*https://www.memo.tv/*

4. Revisamos un trabajo del artista Eyal Gruss:

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/9bd1d968-e1e7-4d30-83f4-a25c3b37f568)

*https://mlart.co/item/a-browser-based-app-to-animate-faces-with-your-camera-in-real-time_-created-with-a-google-colab-wrapper-for-first-order-motion*

5. Probamos el ejemplo con nuestra cámara:

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/63dd6806-494e-417c-9cee-d418d969816e)

6. Nos encargamos de revisar artistas que nos interesaran en Ml Art y tomamos apuntes.

**Segunda parte:**

7. Revisión de la página de Holly Plus.

8. Observación de la página Tone Transfer, que ofrece diferentes sonidos de instrumentos. Puedes entrenarlo con tu propio audio.

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/43d00adf-602b-4e09-a6a0-d2802b1e16b8)

*https://sites.research.google/tonetransfer*

**Trabajo de investigación:**

Título: Edges 2 Cats

Autor: Christopher Hesse

**¿Qué hace?**

Transforma un dibujo creado por el usuario en un gato, dentro de una página web. En mi comprensión, lo que hace es rellenar el dibujo con una imagen de gato. 

**¿Cómo lo hace?**

A través de un almacenamiento de base de datos, en donde se entrena la inteligencia artificial (lo que se entiende como Deep Learning) para que reconozca ciertos estilos de dibujo y los asimile a un gato. Mantiene un formato que consta de imágenes de entrada y de salida. 

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/de92e23c-ea72-4eff-8a2e-7252bfcc047e)

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/9a498f3f-1e07-4a61-b9d4-aaf44921a05d)

**Metodología:**

- Pix2pix:
- Red adversarial generativa condicional (cGAN):

**Ejemplo:**

En la siguiente demostración, dibujé una estrella como imagen de entrada, mientras que la salida se basó en rellenar dicha estrella con la foto de un gato. 

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/26889c10-9d34-4dc1-8fe2-50228a906654)

Así mismo, probé con otras figuras, obteniendo como resultado que el relleno de la forma se completaba con la foto de un gato. 

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/999c3841-3f2b-4151-90ff-7adcd1c364d2)

¿Y qué pasaba si hacía un intento de dibujo de un gato, para que se rellenara de otro gato? 

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/35fc0931-ded0-467d-93fe-4a6dc7c0eda0)

¿Qué otras aplicaciones tiene?

Este mismo ejemplo se aplica a otros elementos, como generar bolsos, edificios, mapas. En palabras de los autores Isola, Junyaz, Tinghyuiz & Efros (2016) ''Demostramos que este enfoque es eficaz para sintetizar fotografías a partir de mapas de etiquetas, reconstrucción de objetos a partir de mapas de bordes, y colorear imágenes, entre otras tareas'' (p. 1). 

![image](https://github.com/ValentinaOchoa09/audiv027-2024-1/assets/127344361/20daec23-7067-429b-8ec2-295bfc4f1ed3)





