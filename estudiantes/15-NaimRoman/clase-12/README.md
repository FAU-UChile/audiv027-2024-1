# Proyecto Final

Equipo:
[GrimmUchile](https://github.com/GrimmUChile/audiv027-2024-1/tree/main/estudiantes/02-GrimmUChile/clase-12) y 
[Marijou](https://github.com/Marijou/audiv027-2024-1/tree/main/estudiantes/14-Marijou/clase-12)

## Elección de proyecto

### Propuesta 1

Me gusta el trabajo de [Dani Joy](https://www.aiartonline.com/community/215/) que descubrí en [mlart](https://mlart.co/item/produce-large-scale-style-transfer-like-artworks_-print_-and-paint-over).

Se trata de **Style transfer**, buscando en la web encuentro [esta pagina](https://ml5js.github.io/ml5-examples/) en la que me dirijo al [github de ml5js](https://github.com/ml5js/ml5-library/tree/main/examples),
al apartado de ejemplos de [p5.js](https://editor.p5js.org/ml5/sketches).
En este sitio parece haber varias herramientas que podríamos ocupar para el trabajo. 

Continuando con la linea del **Style transfer**, llego al [StyleTransfer de imagenes](https://editor.p5js.org/ml5/sketches/3_J7IA680K) y al [StyleTransfer de video](https://editor.p5js.org/ml5/sketches/hIB3Nvfmk4).

Me llama la atención el de video ya que permite mayor interacción con el usuario. Lamentablemente al ejecutarlo me da el siguiente error:

![image](https://private-user-images.githubusercontent.com/163590875/337786003-2a05c83a-5038-4d47-96bf-1596beef229d.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTc3OTMzOTcsIm5iZiI6MTcxNzc5MzA5NywicGF0aCI6Ii8xNjM1OTA4NzUvMzM3Nzg2MDAzLTJhMDVjODNhLTUwMzgtNGQ0Ny05NmJmLTE1OTZiZWVmMjI5ZC5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQwNjA3JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MDYwN1QyMDQ0NTdaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1hN2MyMzdhZDU0MjcwYzFmOTRlNDQzYmFkYzdlZGVhYmI1ZWIwMWMwNTk3ZWEyZWI0MjUwY2NkZTU5ZGIwZTI4JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZhY3Rvcl9pZD0wJmtleV9pZD0wJnJlcG9faWQ9MCJ9.5gFTlKG9bghdkZnV5NnNcV7RY41BZdJv_D5q4NjuV10)

Entiendo que "src" está "undefined" asi que añado un "let src;" al inicio del código.
Vuelvo a intentarlo y desconozco de si gracias a lo que hice, sorprendentemente en esta ocasión funciona.

![Screenshot](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/15-NaimRoman/clase-12/Captura%20de%20pantalla%20(2).png)

Como se puede apreciar en la imagen, nos arroja una advertencia: "High memory usage in GPU: 3709.74 MB, most likely due to a memory leak". Debido a esto, la imagen que captura la camara se ve muy lageada, actualizandose cada 30 segundos aprox y ralentizando todo el computador,llegando a ocupar, según el administrador de tareas, 8gb de memoria.

![Screenshot](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/15-NaimRoman/clase-12/Captura%20de%20pantalla%20(6).png)

Funciona, pero va muy lento.

### Propuesta 2

Disponible en el [github de Marijou](https://github.com/Marijou/audiv027-2024-1/tree/main/estudiantes/14-Marijou/clase-12)

### Propuesta 3

Continuamos investigando los codigos disponibles [aquí](https://editor.p5js.org/ml5/sketches)

Nos llamó la atención [KNNClassification_VideoSquare](https://editor.p5js.org/ml5/sketches/TW3JwmVdg8), simplemente usarlo es entretenido, y nos recordó al juego "snake", por lo que decidimos ir con la propuesta de jugar al snake usando como controles las manos.

![Screenshot](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/15-NaimRoman/clase-12/Captura%20de%20pantalla%20(8).png)
![Screenshot](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/15-NaimRoman/clase-12/Captura%20de%20pantalla%20(9).png)
![Screenshot](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/15-NaimRoman/clase-12/Captura%20de%20pantalla%20(10).png)

Buscamos en la web si alguien habia creado el codigo de snake para p5js y por suerte encontramos [una pagina](https://breakthecodenow.blogspot.com/2019/11/snake-game-using-javascript-p5.html) en la que estaba lo que necesitabamos (by Rishabh Aggarwal).

Copiamos el codigo en el editor de p5js y todo funciona correctamente.

![Screenshot](https://github.com/NaimRoman/audiv027-2024-1/blob/main/estudiantes/15-NaimRoman/clase-12/Captura%20de%20pantalla%20(14).png)

### Random
