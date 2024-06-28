

Desarrollando un detector de imágenes para identificar manuscritos usando LabelImg y TensorFlow.

1. Preparación del entorno:
Comenzamos instalando LabelImg en el sistema para etiquetar las imágenes de manuscritos.
Esta herramienta resultó bastante intuitiva: simplemente cargas una imagen, dibujas un cuadro alrededor de cada instancia de manuscrito y asignas una etiqueta.
 Esto creó archivos XML que contienen las coordenadas de las cajas delimitadoras y las etiquetas asociadas.

Link donde baje LabelImg: https://drive.google.com/file/d/1nFFaT6wXRgKH8bpaw4PhAkiW2MWU5jFF/view

2. Recolección y preparación de datos:
Recolectar imágenes adecuadas fue un desafío inicial, para ello utilizamos nuestro propios manuscritos los cuales recopilamos en carpetas compartidas en un Drive, designado letra por letra .
Después de etiquetarlas con LabelImg, convertí los archivos XML a formato compatible con TensorFlow para el siguiente paso.


![Trabjo ia 2](https://github.com/Juanitaliano/audiv027-2024-1/assets/163590978/010c86fe-a1f4-479c-b304-988701ee1bd6)
![Trabajo ia](https://github.com/Juanitaliano/audiv027-2024-1/assets/163590978/470f7980-f045-4dd8-8436-e8dc5e878658)


 3. Configuración del modelo:
Opté por usar la API de detección de objetos de TensorFlow y elegí el modelo Faster faster_rcnn_resnet101_coco como base debido a su precisión y capacidad para manejar múltiples objetos en una imagen.
Sin embargo, tuvimos problemas a la hora de descargar el modelo debido a posibles links caidos. Intentamos buscar por otros lados pero no hubo resultados.

Link de los modelos de Tensor Flow https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/tf1_detection_zoo.md

En caso de haber tenido los modelos la idea era configurar el modelo y entrenarlo para luego ajustar y utilizar.

Videos de referencias:
https://youtu.be/SJRP0IRfPj0?si=gBg4keEXNkmiVPMt  
https://youtu.be/EKe05rMG-Ww?si=Emebh-yhkEZvCQTU








