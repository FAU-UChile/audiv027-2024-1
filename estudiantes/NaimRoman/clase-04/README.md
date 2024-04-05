# Clase 4


## Wekinator

[Examplos wekinator](http://www.wekinator.org/examples/) > apartado 3 están los ejemplos de codigo para recibir inputs > 3.16.Processing > Descargar _"Simple_Mouse_DraggedObject"_

Ejecutar en **Processing 4** el codigo _"Simple_Mouse_DraggedObject"_ .Abrir Wekinator con la siguiente configuración:

Cambiar el numero de input a 2, el numero de output a 1 y dejar el type en el default.

![screenshot](https://raw.githubusercontent.com/NaimRoman/audiv027-2024-1/main/estudiantes/NaimRoman/clase-04/Captura%20de%20pantalla%20(2).png)


Deberia salir la luz verde 

![screenshot](https://raw.githubusercontent.com/NaimRoman/audiv027-2024-1/main/estudiantes/NaimRoman/clase-04/Captura%20de%20pantalla%20(1).png)


Entrenar el modelo. La posicion del slider se "guarda" junto a la posición del cuadro en procesing. 

![screenshot](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/NaimRoman/clase-04/Captura%20de%20pantalla%20(3).png)


Descargar y ejecutar _"Simple continuous color control"_ de la pagina de wekinator en processing.

El color "Hue" cambiará dependiendo de adonde muevas el cuadrado de la otra ventana de processing.


![screenshot](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/NaimRoman/clase-04/Captura%20de%20pantalla%20(4).png)

Cerrar todo menos el _"Simple_Mouse_DraggedObject"_.

Descargar y ejecutar "_Simple continuously-controlled particle system_" de la pagina de wekinator en processing.

Abrir otro wekinator con 2 inputs y 3 outputs. 

Entrenar el modelo al gusto. yo hice que las particulas sigan al cuadro, es decir, cuando el cuadro esta arriba las particulas suben, cuando el cuadro vaya a la izquierda las particulas vayan a la izquierda, etc.

La tercera variable cambia la "gravedad", la direccion de la cola de particulas.

![screenshot modelo entrenado](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/NaimRoman/clase-04/Captura%20de%20pantalla%20(5).png) ![screenshot modelo entrenado](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/NaimRoman/clase-04/Captura%20de%20pantalla%20(6).png) ![screenshot modelo entrenado](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/NaimRoman/clase-04/Captura%20de%20pantalla%20(7).png)


## Random

- La función "map" indica que escale los primeros dos numeros (los "estire") y los transforme a los dos ultimos. (no más regla de tres!)

`map(receivedHue, 0, 1, 0, 255);`

- El [algoritmo KNN](https://es.wikipedia.org/wiki/K_vecinos_m%C3%A1s_pr%C3%B3ximos) es la forma más basica de entrenar Inteligencia Artificial. 

- TPU trabaja con tensores. **Tensorflow**

- Vamos a entrenar algoritmos en [Google Collab](https://colab.research.google.com/). Enseñaremos (en el futuro) a bulbacear al computador.

- [Daito Manabe](https://www.youtube.com/@daito) Programador de IA, cosas extrañas/interesantes. [Ejemplo](https://www.youtube.com/watch?v=s_S3fomiXO0) 

- [Michael Reeves](https://www.youtube.com/@MichaelReeves) Programador.

- Explorar el [repositorio de cursos anteriores](https://github.com/disenoUChile/audiv027-2023-2).
