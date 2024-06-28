# Proyecto final

mi equipo de trabajo es <https://github.com/juanitaliano>

## Deteccion de Objetos

### Detector de textos

Idea principal

Realizar un detector de letra manuscrita con la deteccion de objetos.

![maxresdefault](https://github.com/BenjaIeg/audiv027-2024-1/assets/128185999/1570d16d-fd7b-4fba-b485-41d7646eaf10)


Se realizo un modelo de teacheable machine de los 27 caracteres

https://teachablemachine.withgoogle.com/models/wbITuiyZK/

![IMG_20240627_010435](https://github.com/BenjaIeg/audiv027-2024-1/assets/128185999/73e1eee1-479e-4a3a-a005-7e1b031b0fa3)

![IMG_20240627_010427](https://github.com/BenjaIeg/audiv027-2024-1/assets/128185999/be4d0de6-1d01-4210-b853-903d7f3468e5)


Se probaron diferentes herramientas.
Libreria     Codigo

ml5--------->P5 Editor

mediapipe--->Python

Tensorflow-->Python

Problema principal

FORMATO COCO SSD o Mobile Net

COCO: Common Objects in Context

Es un banco de datos con millones de imagenes de dentro de mas de 80 categorias de animales, objetos, personas y sus subcategorias como perro, gato, ect.

SSD: Single Shot multibox Detector

Es un modelo de deteccion de baja gama, (para aparatos no tan potentes como celulares) y tambien muy liviano para ser eficiente y rapido al momento de reconocer elementos en una imagen.

Problemas Especificos

Ambos son modelos preentrenados solo con animales y objetos.

El modelo COCO, tiene un formato predefinido, diferente a los extraibles del modelo entrenados teacheable machine

## Nuevas necesidades

MODELO CON ENTRENAMIENTO Y FORMATO COCO o MOBILE NET.

BUSQUEDA DE NUEVAS LIBRERIAS.



https://colab.research.google.com/drive/1WyMMy1FsQ71vGJijqUbpKkTZOeEPSKZK?usp=sharing

```

!pip3 install -U -q imutils

from imutils.object_detection import non_max_suppression
import numpy as np,pylab as pl,time,cv2

file_path='/content/'
file_name='letrero.jpg'
img=cv2.imread(file_path+file_name)

if img is None:
    print("Failed to load image. Check the file path and ensure the image is not corrupted.")
else:
    orig=img.copy()
    (H,W)=img.shape[:2]
    print(orig.shape)

    (rW,rH)=(32*30,32*25)
kW=W/float(rW)
kH=H/float(rH)
img=cv2.resize(img,(rW,rH))
(H,W)=img.shape[:2]
pl.figure(figsize=[12,8]); pl.imshow(img)
img.shape
```
![letrero](https://github.com/BenjaIeg/audiv027-2024-1/assets/128185999/aae9738f-70cc-4920-ab2b-44c6dcefd097)
```
model_path='/content/'
model_file='frozen_east_text_detection.pb'
full_model_path = model_path + model_file

layers=['feature_fusion/Conv_7/Sigmoid',
	        'feature_fusion/concat_3']
nn=cv2.dnn.readNet(model_path+model_file)


blob=cv2.dnn.blobFromImage(img,1.,(W,H),
	(123.68,116.78,103.94),swapRB=True,crop=False)
start=time.time()
nn.setInput(blob)
(scores,geometry)=nn.forward(layers)
end=time.time()
print('text detection took {:.6f} seconds'.format(end-start))

scores.shape,geometry.shape

(num_rows,num_cols)=scores.shape[2:4]
rects,confidences=[],[]
for y in range(0,num_rows):
    probs=scores[0,0,y];
    x0=geometry[0,0,y]
    x1=geometry[0,1,y]
    x2=geometry[0,2,y]
    x3=geometry[0,3,y]
    angles=geometry[0,4,y]
    for x in range(0,num_cols):
        if probs[x]>.9:
            (xoffset,yoffset)=(x*4.,y*4.)
            angle=angles[x]
            cos,sin=np.cos(angle),np.sin(angle)
            h,w=x0[x]+x2[x],x1[x]+x3[x]
            xend=int(xoffset+(cos*x1[x])+(sin*x2[x]))
            yend=int(yoffset-(sin*x1[x])+(cos*x2[x]))
            xstart=int(xend-w); ystart=int(yend-h)
            rects.append((xstart,ystart,xend,yend))
            confidences.append(probs[x])

boxes=non_max_suppression(np.array(rects),probs=confidences)
for (startX,startY,endX,endY) in boxes:
    startX=int(startX*kW); startY=int(startY*kH)
    endX=int(endX*kW); endY=int(endY*kH)
    cv2.rectangle(orig,(startX,startY),(endX,endY),(0,255,0),5)

pl.figure(figsize=[12,8]); pl.imshow(orig);
```


![download](https://github.com/BenjaIeg/audiv027-2024-1/assets/128185999/9f31d300-8973-4a6b-a82b-1fdb2d98d5c5)

