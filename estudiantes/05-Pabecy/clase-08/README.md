# Clase 8 #

### Referencias ###
- Steve Krug - Don't make me think /n
- The Component Gallery https://component.gallery/
- Kate Crawford - Atlas of AI
- Clmtrackr https://github.com/auduno/clmtrackr
- Mediapipe
- Ml5
- CMU https://www.cmu.edu/ Golan Levin >> Lingdong Huang
- Mediapipe p5

Analizamos con [abo1934](https://abo1934.github.io/audiv027-2024-1/) el ejemplo de Segmentador de Imagenes de Mediapipe P5 disponible en el github de Tetsuaki BaBa
https://github.com/TetsuakiBaba/p5MediaPipe/tree/v0.10.13 

En este ejemplo lo que sucede es que a través de un modelo desarrollado en tensorflow que detecta que es fondo de la imagen (background) y que es el primer plano (selfie), este es llamado al script y lo hace funcionar en el video de la webcam y crea una mascara negra en el fondo, esta información es fundamental para el funcionamiento del sketch.js que toma los datos y recorre pixel por pixel comparando y cambiando la opacidad del fondo.

Vea imagenes referentes en 
