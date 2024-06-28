# Avance trabajo final

Primera prueba:

En Google Collab se intenta agregar una imagen diferente como prueba, se logró, pero no se pudo descifrar las demás celdas de código por error de síntesis en el códgio. 

![Captura de pantalla 2024-06-28 110547](https://github.com/josefa52/audiv027-2024-1/assets/163590856/fd176e13-5d99-4c74-b722-7dfd0532738d)

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


Segunda prueba:

En Google Collab se intenta agregar una imagen diferente como prueba, pero no se alcanza a ver la imágen, sólo los lienzos. 

![Captura de pantalla 2024-06-28 112746](https://github.com/josefa52/audiv027-2024-1/assets/163590856/52b30f1c-203b-418f-9d05-3f351c569239)

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
Tercera prueba:

Se encuentra un video en Youtube explicando un código de Optical Flow in OpenCV Phyton, usando Visual Studio Code.

![Captura de pantalla 2024-06-28 114202](https://github.com/josefa52/audiv027-2024-1/assets/163590856/b851201b-31d6-4289-a079-c2ad0b1fedb0)
https://www.youtube.com/watch?v=WrlH5hHv0gE 

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

