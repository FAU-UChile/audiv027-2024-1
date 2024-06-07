# Proyecto Final

## Elección de proyecto

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

![Screenshot]()
### Random
