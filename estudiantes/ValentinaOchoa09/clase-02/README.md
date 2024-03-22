# **BITÁCORA CLASE 22 DE MARZO 2024**

Comenzamos la clase instalando las aplicaciones Wekinator y Proccesing. Éste último es un programa que sirve para programar inteligencia artificial. 

Uno de los referentes que ha seguido el profesor se llama Rebbeca Fiebrini, la cual ha realizado cursos en la página Kadenze.

Posterior a esto, revisamos información sobre Markdown Cheatsheet. Esto nos permite ser flexibles al momento de realizar nuestro portafolio, siendo una alternativa al lenguaje HTML. Promueve la colaboración. 

# **Apuntes:**
•	Wekinator detecta nuestro rostro.

•	Proccesing manda la orden desde la cámara. Está configurado para realizar para cosas sencillas, como figuras geométricas. Debemos hacer la instalación a través de gestión de herramientas, para hacer cosas adicionales que Proccesing no puede realizar de manera predeterminada. 

• Wekinator tiene solo una salida. También tiene clases, que son las posibles salidas. Ejemplo, izquierda o derecha, sí y no. Mientras más complejo, hay que mandarle mucha más información. 

_Nota: Es importante trabajar con The Proccesing Foundation, que es la cuenta oficial y nos permite administrar de mejor manera nuestro trabajo._

• En Proccesing, con CONTROL + F, podemos buscar palabras en el código y remplazar. 

• Visitar la página de Experiments.withgoogle.com, en donde hay diversos ejemplos sobre programación y el cómo se utiliza la inteligencia artificial. 

• Tensorflow es un algoritmo para inteligencia artificial. Es de Google. Sirve para hacer apps. Se abre con Teachable Machine. 

# **Trabajo en clases:**

Primera parte: 

1. En primer lugar, debemos revisar que Proccesing detecte correctamente la cámara. Para esto, vamos a los ejemplos de biblioteca, abrimos la sección de ''Capture'' y utilizamos el ''GettingStarted''. Nos aparecerá un código y luego colocamos play. Para este caso, nos funcionó la cámara correctamente.
   
2. Setup() es una función, se colocan las condiciones iniciales. El murciélago {} le señala al computador lo que significa setup, es su complemento.

3. Posterior a esto, cerramos dicho ejemplo y probamos otro, llamado SlitScan. Éste va capturando poco a poco lo que va viendo, colocándole un efecto. Luego probamos el FrameDifferencing, el cual 'cuantifica el movimiento en el video''. También tenemos el BrightnessTracking, que detecta los focos de luz, detectando el más blanco.

 _Nota: Es importante cerrar el ejemplo que estás utilizando, antes de probar otro, porque sino el programa te lanzará error._

4. Nos dirigimos a la página de Wekinator y vamos a la parte de examples bundlers, abajo de downloands. Seleccionamos el 3.16: Proccesing (animation, screen-based input) y descargamos la opción de Simple mouse x,y position. Esto lo que hace es descargar un archivo de texto de Proccesing, que contiene un código. Nos faltará un archivo llamado Oscp5, el cual deberemos instalar en Gestión de Herramientas. El resultado es que se señala la posición del mouse en plano x e y.
   
5. Seguiremos utilizando este código, pero lo complementaremos con Wekinator. En inputs, deberemos colocar dos, ya que estamos mandando dos datos a través del mouse: x e y. En outpots colocamos 1 y luego en type seleccionamos all classifier, with 2 classes.
   
_Nota: Si OSC In, significa que vamos bien, ya que le está llegando el dato esperado._

Segunda parte:

6. Utilizamos el ejemplo de Video/Webcam Simple 10×10 color grid. Este código lo descargamos al igual que el anterior y lo abrimos en Proccesing. Como no resultó, nos trasladamos al Teachable Machine.

7. Primero debemos grabar diferentes imágenes (con clase 1, clase 2 y clase 3). Una vez que se prepare, la web detectará qué es cada cosa a través de la cámara. (Funcionó correctamente!!!)

El código es: 

    let model, webcam, labelContainer, maxPredictions;

    // Load the image model and setup the webcam
    async function init() {
        const modelURL = URL + "model.json";
        const metadataURL = URL + "metadata.json";

        // load the model and metadata
        // Refer to tmImage.loadFromFiles() in the API to support files from a file picker
        // or files from your local hard drive
        // Note: the pose library adds "tmImage" object to your window (window.tmImage)
        model = await tmImage.load(modelURL, metadataURL);
        maxPredictions = model.getTotalClasses();

        // Convenience function to setup a webcam
        const flip = true; // whether to flip the webcam
        webcam = new tmImage.Webcam(200, 200, flip); // width, height, flip
        await webcam.setup(); // request access to the webcam
        await webcam.play();
        window.requestAnimationFrame(loop);

        // append elements to the DOM
        document.getElementById("webcam-container").appendChild(webcam.canvas);
        labelContainer = document.getElementById("label-container");
        for (let i = 0; i < maxPredictions; i++) { // and class labels
            labelContainer.appendChild(document.createElement("div"));
        }
    }

    async function loop() {
        webcam.update(); // update the webcam frame
        await predict();
        window.requestAnimationFrame(loop);
    }

    // run the webcam image through the image model
    async function predict() {
        // predict can take in an image, video or canvas html element
        const prediction = await model.predict(webcam.canvas);
        for (let i = 0; i < maxPredictions; i++) {
            const classPrediction =
                prediction[i].className + ": " + prediction[i].probability.toFixed(2);
            labelContainer.childNodes[i].innerHTML = classPrediction;
        }
    }
</script>

8. Luego realizamos el mismo proceso, pero en vez de imagen utilizamos audio, creando un nuevo proyecto de audio. Así mismo, se graba un ruido de fondo y un ruido alto.

9. Finalmente, hicimos un proyecto de poses, grabando dos poses diferentes: pose T y pose fetal. 
