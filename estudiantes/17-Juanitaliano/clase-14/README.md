

Desarrollando un detector de imágenes para identificar manuscritos usando LabelImg y TensorFlow.

1. Preparación del entorno:
Comencé instalando LabelImg en mi sistema para etiquetar las imágenes de manuscritos.
Esta herramienta resultó bastante intuitiva: simplemente cargas una imagen, dibujas un cuadro alrededor de cada instancia de manuscrito y asignas una etiqueta.
 Esto creó archivos XML que contienen las coordenadas de las cajas delimitadoras y las etiquetas asociadas.

Link donde baje LabelImg: https://drive.google.com/file/d/1nFFaT6wXRgKH8bpaw4PhAkiW2MWU5jFF/view

3. Recolección y preparación de datos:
Recolectar imágenes adecuadas fue un desafío inicial, para ello utilizamos nuestro propios manuscritos los cuales recopilamos en carpetas compartidas en un Drive, designado letra por letra .
Después de etiquetarlas con LabelImg, convertí los archivos XML a formato compatible con TensorFlow para el siguiente paso.

https://cdn.discordapp.com/attachments/1253811530496217139/1256042163062702090/Trabajo_ia.jpg?ex=667ffcab&is=667eab2b&hm=e5205b3407922482c6156677b188f21600b354ca9c472f9b842870d5d63848a7&
https://cdn.discordapp.com/attachments/1253811530496217139/1256042163431669853/Trabjo_ia_2.jpg?ex=667ffcab&is=667eab2b&hm=60c8ffefc6090a4d7abd455de5638816a8eb87ea944b4e0d76e60c781e853736&


 5. Configuración del modelo:
Opté por usar la API de detección de objetos de TensorFlow y elegí el modelo Faster faster_rcnn_resnet101_coco como base debido a su precisión y capacidad para manejar múltiples objetos en una imagen.
Sin embargo, tuvimos problemas a la hora de descargar el modelo debido a posibles links caidos. Intentamos buscar por otros lados pero no hubo resultados.

Link de los modelos de Tensor Flow https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/tf1_detection_zoo.md


