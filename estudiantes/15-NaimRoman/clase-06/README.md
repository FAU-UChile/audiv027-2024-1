# clase-06

## entrega: Anotaciones y sonidos dependiendo de la gestualidad

integrantes Naim Roman

fecha 19/04/20024

## materiales

- El trabajo lo realice con Teachable machine de google, p5.js en su version 0.9.0 disponible en su web, markdownpara este archivo, En el navegador Microsoft Edge en su Versión 124.0.2478.51 (Compilación oficial) (64 bits), y una webcam.

## código

El codigo se encuentra en [este enlace](https://editor.p5js.org/NaimRoman/sketches/spMJCoeEM)

## Proceso de investigación y capturas de pantalla
Simple object animation (5 continuous control parameters)
Processing source code http://www.doc.gold.ac.uk/~mas01rf/WekinatorDownloads/wekinator_examples/all_source_zips/Processing_SimpleObjectAnimation_5Continuous.zip
![1](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/15-NaimRoman/clase-06/Captura%20de%20pantalla%20(1).png)

Face Tracking (Processing version; tracks the x- and y- position and width of one face)
Source code in Processing (will not work on OS X Catalina)
http://www.doc.gold.ac.uk/~mas01rf/WekinatorDownloads/wekinator_examples/all_source_zips/VideoInput_FaceDetection_Processing_3Inputs.zip
![2](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/15-NaimRoman/clase-06/Captura%20de%20pantalla%20(3).png)

Estoy tratando de controlar el cubo de "simple object animation" con la cara. Dependiendo de la posición de la cara.

Por alguna razon Simple object animation no capta los outputs de wekinator.

Estudiando por que no funciona
Me funciona una vez no se por que.
No vuelve a funcionar, sin que cambie nada.

No me termina de entusiasmar el proyecto por lo que lo deshecho.


Paso a experimentar con teachable machine
Lo entreno para diferenciar "arriba", "abajo", "izquieda", "derecha" dependiendo de hacia donde señales con la mano izquierda
[Link al modelo](https://teachablemachine.withgoogle.com/models/8HkSYfUIw/)

Lo traspaso a p5.js siguiendo el [tutorial](https://www.youtube.com/watch?v=kwcillcWOg0)

Trato de escribir el codigo pero me da error por lo que trato de usar su template, pero no consigo hacerlo funcionar.

![6](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/15-NaimRoman/clase-06/Captura%20de%20pantalla%20(6).png)

Incremento la muestra de imagenes para refinar el modelo. Tras probarlo me doy cuenta de que tiene grandes problemas para diferenciar entre izquierda y derecha.
![7](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/15-NaimRoman/clase-06/Sin%20t%C3%ADtulo.png) ![8](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/15-NaimRoman/clase-06/Sin%20t%C3%ADtulo2.jpg)

No me convence el nivel del modelo.

Decidiré bien que hacer y lo haré en mi casa cuando me sienta mejor.

- Tras un largo proceso de pruebas decidiendo mi proyecto, decidí realizar un trabajo basado en un [Video](https://www.youtube.com/watch?v=9z9mbiOZqSs&t=461s) de "The coding Train" con varias modificaciones.

A continuación dejare algunos de los registros fotograficos del proyecto final, pero hasta llegar a este ultimo y decisivo proyecto pasé por varios intentos en otros proyectos de los cuales le dejo el registro [aqui](https://github.com/NaimRoman/audiv027-2024-1/tree/main/estudiantes/15-NaimRoman/clase-06)

Aqui se me puede ver creando el modelo en Teachable Machine y probandolo ya en p5.js
![9](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/15-NaimRoman/clase-06/Captura%20de%20pantalla%20(37).png)

![10](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/15-NaimRoman/clase-06/Captura%20de%20pantalla%20(35).png)

## conclusiones

en este trabajo aprendí a leer y entender muchodel codigo en p5.js y me di cuenta de que está muy simplificado para que gente como yo sin experiencia en codigo pueda entenderlo. Tambien aprendi a usar la mayoria de posibilidades que ofrece Teachable Machine.

## citas y referentes
[The coding train](https://www.youtube.com/watch?v=9z9mbiOZqSs&t=461s)
[Codigo en linea](https://editor.p5js.org/jeremycricchus@gmail.com/sketches/QXyTvVePV)
