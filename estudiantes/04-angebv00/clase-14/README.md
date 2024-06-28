# Clase 14
Entrega: movimiento de letras con filtro RAFT
integrantes: Josefa Rubio: <https://github.com/josefa52>  y Angela beltrán

fecha: 28/06
#materiales/2024
este trabajo lo hice con los siguientes materiales:
- Web cam
- Visual Studio Code
- Servidor web local: Live Server
- Extesión Python
- Google Collab
  
  # Codigo

```
<!DOCTYPE html>
<html>

<head>
    <title>PoseNet - Camera Feed Demo</title>
    <link rel="stylesheet" href="/posenet-sketchbook/style.d2841a7d.css">
    <link rel="icon" href="/posenet-sketchbook/favicon.a0c961ca.ico" type="image/png">
    <!-- fonts -->
    <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Archivo+Black" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Mono" rel="stylesheet">
</head>

<body>
    <div id="info" style="display:none">
    </div>
    <div id="loading">
        Loading the model...
    </div>
    <div id="main" style="display:none">
        <div id="record-button-container">
                <button id="start-loop" contenteditable="false">Start recording loop</button>
                <button id="stop-loop" contenteditable="false">Stop recording loop</button>
            </div>
        <video id="video" playsinline="" style=" -moz-transform: scaleX(-1);
        -o-transform: scaleX(-1);
        -webkit-transform: scaleX(-1);
        transform: scaleX(-1);
        display: none;
        ">
        </video>
        <div id="canvas-container">
                <canvas id="livestream"></canvas>
                <canvas id="output"></canvas>
        </div>
        <div id="loopingCanvas-container"></div>
    </div>
    <script src="/posenet-sketchbook/main.8dfc7d0a.js"></script>
</body>

</html>
```
# Capturas de Pantalla 
 Es un codigo de Bill T. Jones, https://mlart.co/item/detect-poses-and-voice-and-add-the-spoken-words-live-in-the-choreography Hecho con: Google Creative Lab Tecnología usada: PoseNet, Camera, Voice detection, Microphone ¿Qué hace? -> Detect poses and voice and add the spoken words live in the choreography
 En un principio, no sabíamos dónde ejecutar el código. Consideramos utilizar p5.js, pero este no funcionaba correctamente, por lo que comprendimos que debíamos utilizarlo en un entorno web. Para ello, empleamos Visual Studio Code, donde copié y pegué el código. Sin embargo, era necesario visualizarlo en la web para que funcionara adecuadamente.
[mi-proyecto.zip](https://github.com/user-attachments/files/15994187/mi-proyecto.zip)
![Captura de pantalla 2024-06-26 150340](https://github.com/angebv00/audiv027-2024-1/assets/163590234/22ba8e2d-5fc8-49f0-9126-76087cbee360)
Para ello, descargamos la extensión Live Server, ya que al abrir el archivo directamente en el navegador, este no funcionaba correctamente.
![Captura de pantalla 2024-06-26 150416](https://github.com/angebv00/audiv027-2024-1/assets/163590234/eb90f814-1fb0-4b21-a873-2bd4d0d69697)
![imagen](https://github.com/angebv00/audiv027-2024-1/assets/163590234/483beea7-4e5a-40dd-ba47-c411e02351f6)

Era necesario organizar y descargar correctamente los archivos referenciados en el código HTML para garantizar que la aplicación web se visualizara correctamente en Visual Studio Code. La correcta disposición de estos archivos permite que el navegador cargue los recursos esenciales, como hojas de estilo y scripts de JavaScript, necesarios para el funcionamiento y la apariencia adecuada de la página web. Sin esta organización, las referencias a los archivos fallan, impidiendo que la página se visualice y funcione correctamente.![Captura de pantalla 2024-06-26 150353](https://github.com/angebv00/audiv027-2024-1/assets/163590234/38c7144b-3c27-4784-94a0-81cb4ca3ca5f)


![Captura de pantalla 2024-06-26 150353](https://github.com/angebv00/audiv027-2024-1/assets/163590234/38c7144b-3c27-4784-94a0-81cb4ca3ca5f)
![Captura de pantalla 2024-06-26 144758](https://github.com/angebv00/audiv027-2024-1/assets/163590234/7bae209c-7f4f-46a0-8d93-edb6c4ad57c2)

Para garantizar el correcto funcionamiento y visualización del código en Visual Studio Code, fue necesario crear carpetas específicas para organizar todos los archivos CSS, JavaScript e imágenes. Esta organización estructurada permite que el navegador localice y cargue correctamente los recursos necesarios.


# Optical Flow Estimation
Intentamos integrar el código con otro que estaba en Python, pero primero necesitábamos visualizar el filtro. Al principio, no sabíamos cómo hacerlo, ya que el filtro estaba escrito en un lenguaje diferente, es decir, Python, mientras que nosotros estábamos utilizando JavaScript.
![imagen](https://github.com/angebv00/audiv027-2024-1/assets/163590234/6f018b73-3156-4fd5-9cc2-a2c984db88de)
sacado de: https://github.com/XiaoyuShi97/VideoFlow
Este era el codigo original para hacer el Optical Flow Estimation
![imagen](https://github.com/angebv00/audiv027-2024-1/assets/163590234/1490469f-98ce-47a5-a071-286e72512e1b)
sacado de : https://github.com/princeton-vl/RAFT

Lo abrimos en Google Collab: 

    https://stackoverflow.com/questions/74536730/unable-to-use-raft-optical-flow-in-google-collab
    https://github.com/itberrios/CV_projects/blob/main/RAFT/RAFT_exploration.ipynb
    https://colab.research.google.com/github/itberrios/CV_projects/blob/main/RAFT/RAFT_exploration.ipynb

Primera prueba:

En Google Collab se intenta agregar una imagen diferente como prueba, se logró, pero no se pudo descifrar las demás celdas de código por error de síntesis en el códgio.
![imagen](https://github.com/angebv00/audiv027-2024-1/assets/163590234/fa27db31-8292-4540-8aaf-24a121bd71a6)

Celda en donde se cambió el url de github del modelo oficial de RAFT por una imagen aleatoria, en este caso sacado de un juego (Honkai Star Rail). 
```
# !wget https://github.com/itberrios/CV_projects/blob/main/RAFT/test_images/fan_frame_1.png
# !wget https://raw.githubusercontent.com/itberrios/CV_projects/main/RAFT/test_images/fan_frame_1.png
```
 Se econtró el siguiente error:
 ```
ModuleNotFoundError                       Traceback (most recent call last)

<ipython-input-18-2ce1d49a79d2> in <cell line: 5>()
      3 import requests
      4 import matplotlib.pyplot as plt
----> 5 from raft import RAFT
      6 from utils import flow_viz
      7 from utils.utils import InputPadder

ModuleNotFoundError: No module named 'raft'


---------------------------------------------------------------------------
NOTE: If your import is failing due to a missing package, you can
manually install dependencies using either !pip or !apt.

To view examples of installing some common dependencies, click the
"Open Examples" button below.
```
Esto se debe a que Phyton no encuentra el módulo RAFT.

# Segunda prueba

En Google Collab se intenta agregar una imagen diferente como prueba, pero no se alcanza a ver la imágen, sólo los lienzos.

![imagen](https://github.com/angebv00/audiv027-2024-1/assets/163590234/6ae6acd9-8fe3-4da5-8f48-467018d9bab2)

Celda en donde se cambió el url de github del modelo oficial de RAFT por una imagen aleatoria que fue cargada en mi github, en este caso sacado de un juego (Honkai Star Rail). 
```
# !wget (https://github.com/josefa52/audiv027-2024-1/assets/163590856/5eb7c5cc-082d-4d51-88b8-2df76ab202df)
```

Se econtró el siguiente error:

```
                # Mostrar la imagen en la subtrama correspondiente
                ax[i].imshow(image_rgb)
                ax[i].set_title(f"Frame {i+1}")
            else:
                print(f"No se pudo leer la imagen: {image_name}")
        else:
            print(f"Error al descargar la imagen {image_name}. Código de estado: {response.status_code}")

    except Exception as e:
        print(f"Error al procesar la imagen {image_name}: {str(e)}")

# Mostrar la figura
plt.show()
```
#Tercera prueba:

Se encuentra un video en Youtube explicando un código de Optical Flow in OpenCV Phyton, usando Visual Studio Code.
 sacado de: https://www.youtube.com/watch?v=WrlH5hHv0gE
![imagen](https://github.com/angebv00/audiv027-2024-1/assets/163590234/68227296-9c3d-4f16-affc-dee4046a8149)

# Respectivo codigo: 

```
import numpy as np
import cv2
import time



def draw flow(img, flow, step=16):

    h, w = img.shape[:2]
    y, x = np.mgrid[step/:h:step, step/2:w:step].reshape(2,-1).astype(int)
    fx, fy = flow[y,x].T

    lines = np.vstack([x, y x-fx, y-fy]).T.reshape(-1, 2, 2)
    lines = np.int32(lines + 0.5)
   
    img_bgr = cv2.cvtColor(img, cv2.COLOR_GRAY2BGR)
    cv2.polylines(img_bgr, lines,0, (0, 255, 0))

    for (x1, y1), (_x2, _y2) in lines:
        cv2.circle(img_bgr, (x1, y1), 1, (0, 255, 0), -1)
   
    return img_bgr


def draw_hsv(flow):

    h, w = flow.shape[:2]
    fx, fy = flow[:,:,0], flow[:,:,1]

    ang = np.arctan2(fy, fx) + np.pi
    v = np.sqrt(fx*fx+fy*fy)

    hsv = np.zeros((h, w, 3), np.uint8)
    hsv[...,0] = ang*(180/np.pi/2)
    hsv[...,1] = 255
    hsv[...,2] = np.minimum(v*4, 255)
    bgr = cv2.cvtColor(hsv, cv2.COLOR_HSV2BGR)

    return bgr




cap = cv2.VideoCapture(0)

suc, prev = cap.read()
prevgray = cv2.cvtColor(prev, cv2.COLOR_BGR2GRAY)


while True:

    suc, img = cap.read()
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

    # startn time to calculate FPS
    start = time.time()


    flow = cv2.calcOpticalFlowFarneback(prevgray, gray, None, 0.5, 3, 15, 3, 5, 1.2, 0)
    prevgray = gray


   
    # End time
    end = time.time()
    # calculate the FPS for current frame detection}
    fps = 1 / (end-start)

    print(f"{fps:.2f}FPS")

    cv2.imshow("flow", draw_flow(grat, flow))
    cv2.imshow("flow HSV", draw_hsv(flow))


    key = cv2.waitKey(5)
    if key == ord("q"):
        break

```
Se encontró el siguiente error: 

```
def draw flow(img, flow, step=16):
             ^^^^
SyntaxError: expected '('
    def draw flow(img, flow, step=16):
             ^^^^
SyntaxError: expected '('
```

# Conclusión:
Como conclusión, durante el desarrollo de esta actividad, aprendimos la importancia de organizar los archivos de código en sus respectivas carpetas. Pudimos identificar errores de código y aprender a partir de estos, y nos involucramos en el uso de otros programas como Desafío, lo cual, aunque dificultó nuestro trabajo, nos brindó una valiosa experiencia de aprendizaje.
