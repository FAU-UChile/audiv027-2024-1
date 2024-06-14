# OF COURSE WE GAN

Investigación basada en el análisis del funcionamiento, estructura y usabilidad de las GAN.

# ÍNDICE

a. Casos de Estudio y Ejemplos Prácticos

Implementación de GANs en proyectos reales

Imágenes

b. Entonces, ¿Qué es una GAN?

Definición de GANs

Casos actuales

Características de una GAN: Generación de imágenes realistas: Mejora de imágenes y super-resolución; Transferencia de estilo y síntesis de texturas
 
Arquitectura básica de una GAN

c. Conclusiones

Resumen de los principales puntos tratados

Impacto potencial de las GANs en la industria y la investigación

d. Referencias

Listado de fuentes consultadas y citadas


# DESARROLLO

a. Casos de Estudio y Ejemplos Prácticos

Implementación de GANs en proyectos reales

TRabajo realizado con Google Colab (versión 3.10 de Python)

Código:

# Instalar bibliotecas necesarias
!pip install matplotlib

!pip install tensorflow

!pip install numpy

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/76d633a0-a6eb-4a41-ad52-15d6ea4dec66)

import numpy as np

import matplotlib.pyplot as plt

import tensorflow as tf

from tensorflow.keras.layers import Dense, LeakyReLU, BatchNormalization, Reshape, Flatten, Conv2D, Conv2DTranspose

from tensorflow.keras.models import Sequential

from tensorflow.keras.datasets import cifar10


(Aquí se importan todas las bibliotecas necesarias. numpy se usa para operaciones numéricas, matplotlib.pyplot para visualización, tensorflow para construir y entrenar modelos de redes neuronales, y se importan capas específicas de tensorflow.keras para definir el generador y el discriminador de la GAN.)


Matplotlib es una biblioteca para la generación de gráficos en dos dimensiones, a partir de datos contenidos en listas o arrays en el lenguaje de programación Python.

Tensor Flow es una biblioteca de código abierto para aprendizaje automático a través de un rango de tareas, y desarrollado por Google para satisfacer sus necesidades de sistemas capaces de construir

NumPy es una biblioteca para el lenguaje de programación Python que da soporte para crear vectores y matrices grandes multidimensionales, junto con una gran colección de funciones matemáticas de alto nivel para operar con ellas. 

Dense (Densa):
Esta capa implementa una red neuronal completamente conectada, donde cada neurona está conectada a todas las neuronas de la capa anterior.


LeakyReLU (Leaky Rectified Linear Unit):
Función de activación que permite un gradiente pequeño cuando la unidad está inactiva, lo que ayuda a prevenir el problema de unidades muertas en redes neuronales profundas.


BatchNormalization (Normalización por lotes):
Esta capa normaliza las activaciones de cada capa oculta, lo que acelera el entrenamiento, estabiliza el proceso de aprendizaje y puede mejorar el rendimiento del modelo.


Reshape (Reformar o remodelar):
Capa utilizada para reformar el tensor de entrada en una nueva forma especificada. Se utiliza frecuentemente para adaptar la salida de una capa a la forma requerida por la siguiente capa.


Flatten (Aplanar):
Esta capa se utiliza para aplanar una matriz multidimensional en una matriz unidimensional. Generalmente se aplica después de una capa convolucional para pasar de una representación 2D a una 1D antes de las capas densas.


Conv2D (Convolución 2D):
Capa que aplica una convolución bidimensional sobre una entrada, típicamente utilizada en redes neuronales convolucionales para extraer características de las imágenes.


Conv2DTranspose (Convolución 2D transpuesta):
Capa que realiza una convolución transpuesta sobre una entrada bidimensional, utilizada principalmente para generar imágenes a partir de representaciones vectoriales en modelos de redes generativas.

# Cargar y preprocesar datos

(X_train, _), (_, _) = cifar10.load_data()

X_train = (X_train - 127.5) / 127.5  # Normalizar a [-1, 1]

X_train = X_train.astype('float32')


(Los datos CIFAR-10 se cargan y se normalizan para que los píxeles estén en el rango [-1, 1], que es típico para las imágenes que se utilizan en las GAN.)


CIFAR-10 es un conjunto de datos que contiene 60,000 imágenes en color de 32x32 píxeles en 10 clases diferentes, con 6,000 imágenes por clase.


La función tangente hiperbólica (tanh) es una función de activación comúnmente utilizada en capas de salida de generadores en redes generativas (GANs). Esta función produce salidas en el rango [-1, 1]. Al normalizar los datos de entrada en el mismo rango, se facilita el aprendizaje del modelo, ya que los valores de entrada estarán alineados con el rango de salida deseado de la función tanh.


X_train originalmente puede tener un tipo de datos uint8 (valores enteros sin signo de 8 bits) debido a los valores de píxeles en el rango [0, 255].

X_train.astype('float32') convierte los valores de píxeles a tipo de datos float32 (números de coma flotante de 32 bits).

Esto es importante porque las operaciones en redes neuronales suelen realizarse mejor con tipos de datos de punto flotante, ya que proporcionan la precisión necesaria para los cálculos graduales durante el entrenamiento.

# Definir el generador

def build_generator():
    
    model = Sequential()
    
    model.add(Dense(8 * 8 * 256, activation="relu", input_dim=100))
    
    model.add(Reshape((8, 8, 256)))
    
    model.add(BatchNormalization(momentum=0.8))
    
    model.add(Conv2DTranspose(128, kernel_size=4, strides=2, padding='same'))
    
    model.add(LeakyReLU(alpha=0.2))
    
    model.add(BatchNormalization(momentum=0.8))
    
    model.add(Conv2DTranspose(64, kernel_size=4, strides=2, padding='same'))
    
    model.add(LeakyReLU(alpha=0.2))
    
    model.add(BatchNormalization(momentum=0.8))
    
    model.add(Conv2D(3, kernel_size=3, padding='same', activation='tanh'))
    
    return model


generator = build_generator()

generator.summary()


8 * 8 * 256: Es el número de unidades en la capa densa. Esto especifica que la capa tendrá 16,384 neuronas.


input_dim=100: Especifica que la dimensión de entrada a esta capa será un vector de 100 dimensiones, lo que significa que el generador recibirá un vector de 100 valores (espacio latente).


Reshape((8, 8, 256)) cambia la forma del tensor de salida de la capa anterior para que sea de 8x8x256.
Esto transforma el vector de 16,384 valores en un volumen de 8x8 con 256 canales.


(Este es el generador de la GAN. Toma una entrada de ruido aleatorio de dimensión 100 y produce imágenes de tamaño 32x32x3 (CIFAR-10). La arquitectura incluye capas densas, reshape, normalización por lotes y capas de convolución transpuesta para generar las imágenes.)

# Definir el discriminador

def build_discriminator():
   
    model = Sequential()
    
    model.add(Conv2D(64, kernel_size=3, strides=2, input_shape=(32, 32, 3), padding='same'))
    
    model.add(LeakyReLU(alpha=0.2))
    
    model.add(Conv2D(128, kernel_size=3, strides=2, padding='same'))
    
    model.add(LeakyReLU(alpha=0.2))
    
    model.add(Conv2D(256, kernel_size=3, strides=2, padding='same'))
    
    model.add(LeakyReLU(alpha=0.2))
    
    model.add(Flatten())
    
    model.add(Dense(1, activation='sigmoid'))
    
    return model


(Este es el discriminador de la GAN. Toma una imagen de entrada de tamaño 32x32x3 y produce una predicción de si la imagen es real o generada.)


discriminator = build_discriminator()

discriminator.compile(loss='binary_crossentropy', optimizer='adam', metrics=['accuracy'])

discriminator.summary()


# Compilar la GAN

discriminator.trainable = False

gan_input = tf.keras.Input(shape=(100,))

generated_image = generator(gan_input)

gan_output = discriminator(generated_image)

gan = tf.keras.Model(gan_input, gan_output)

gan.compile(loss='binary_crossentropy', optimizer='adam')


(Aquí se configura y compila la GAN. El discriminador se establece como no entrenable en esta fase, ya que solo queremos entrenar el generador a través de la GAN.)

# Definir funciones de entrenamiento y muestra

def train_gan(epochs, batch_size, sample_interval):

    for epoch in range(epochs):
    
        idx = np.random.randint(0, X_train.shape[0], batch_size)
        
        real_images = X_train[idx]
        
        real_labels = np.ones((batch_size, 1))
        
        noise = np.random.normal(0, 1, (batch_size, 100))
        
        fake_images = generator.predict(noise)
        
        fake_labels = np.zeros((batch_size, 1))
        
        d_loss_real = discriminator.train_on_batch(real_images, real_labels)
        
        d_loss_fake = discriminator.train_on_batch(fake_images, fake_labels)
        
        d_loss = 0.5 * np.add(d_loss_real, d_loss_fake)
        
        noise = np.random.normal(0, 1, (batch_size, 100))
        
        valid_labels = np.ones((batch_size, 1))
        
        g_loss = gan.train_on_batch(noise, valid_labels)
        
        if epoch % sample_interval == 0:
        
            print(f"{epoch} [D loss: {d_loss[0]} | D accuracy: {100*d_loss[1]}] [G loss: {g_loss}]")
            
            sample_images(epoch)


def sample_images(epoch):
  
    noise = np.random.normal(0, 1, (25, 100))
    
    gen_images = generator.predict(noise)
    
    gen_images = 0.5 * gen_images + 0.5
    
    fig, axs = plt.subplots(5, 5)
    
    count = 0
    
    for i in range(5):
       
        for j in range(5):
        
            axs[i, j].imshow(gen_images[count])
            
            axs[i, j].axis('off')
            
            count += 1
  
    plt.show()


(train_gan es la función principal de entrenamiento de la GAN. En cada iteración (época), se seleccionan imágenes reales del conjunto de datos CIFAR-10 y se generan imágenes falsas a partir de ruido aleatorio. El discriminador se entrena tanto con imágenes reales como falsas para distinguirlas correctamente, mientras que el generador se entrena para engañar al discriminador. sample_images se utiliza para generar y mostrar imágenes de muestra generadas por el generador en intervalos regulares durante el entrenamiento.)


# Entrenar la GAN

train_gan(epochs=10000, batch_size=32, sample_interval=1000)


(Finalmente, se llama a la función train_gan para entrenar la GAN durante 10000 épocas, con un tamaño de lote de 32 y se muestran imágenes de muestra cada 1000 épocas.)

# IMÁGENES

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/f87065d5-55ab-4aea-b27e-e23cd058f912)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/508a0d48-7195-4844-a4ee-e94ee1b4f29f)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/873153fe-f2d0-4e34-bd00-d3e31f984d44)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/2a5d9ed5-f269-4d94-b98a-c4b8ccdabcf1)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/5254f5f3-3b9e-4d20-a661-b91802ea8717)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/c3106c97-d820-4a36-8f9a-3e948551168f)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/c7610e2a-7b1f-4001-bb5a-315ba06f0fb2)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/0a5ffd6e-c683-4903-aa66-a550f70ee607)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/becc0559-9501-46c5-94c6-da2e143b96a8)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/a12eecc2-7679-442f-8e3f-3f057c7c0b08)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/d948742e-5421-4acb-8cbb-36039caa6424)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/021f51d3-1511-48f0-a637-89245f81e644)


b. Entonces, ¿Qué es una GAN?

# Definición de GANs

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/089685ae-ffb3-44d4-a02d-288d1de1bf6e)

"Las Redes Generativas Antagónicas (RGAs), también conocidas como GAN en inglés, son una clase de algoritmos de inteligencia artificial que se utilizan en el aprendizaje no supervisado. Fueron presentadas por primera vez por Ian Goodfellow en el 2014."(Proyecto IDIS (Investigación en Diseño de Imagen y Sonido) de la Facultad de Arquitectura, Diseño y Urbanismo, Universidad de Buenos Aires)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/e572d56d-1b17-42dc-8584-4c66c24c5019)

"Las redes generativas antagónicas (GAN) son un tipo de red neuronal profunda que se utiliza para generar imágenes sintéticas. Su arquitectura consta de dos redes neuronales profundas, una generativa y otra discriminativa, que compiten mutuamente (de ahí lo de “antagónicas”). El generador produce nuevas instancias de datos, mientras que el discriminador distingue entre instancias de datos “reales”, procedentes del conjunto de datos de entrenamiento, y datos “falsos”, producidos por el generador." (Definición de math work, una corporación privada estadounidense que se especializa en software de computación matemática.)



# Arquitectura básica de una GAN

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/4263e23e-8e12-4dfa-9b0a-868f19e925fe)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/c1b04357-9657-45d0-9499-664fba795f2f)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/dbe994a3-a0ad-4aed-b3d3-5367590223f1)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/b0fcc678-7118-471c-b509-ef7ad7bc702c)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/8d276aed-eaa9-4fbc-8073-17e2763cead1)


# Características de una GAN: Generación de imágenes realistas:Mejora de imágenes y super-resolución;Transferencia de estilo y síntesis de texturas
 
# Casos actuales

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/75fee2de-0c9d-408f-8d3f-c6add8cb56db)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/15c457a0-b677-4381-98a3-a68d3ff278b2)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/19c0a222-e010-4993-82c0-f23186add115)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/b823f203-280f-4b88-ac23-587f3744c115)

# Conclusiones

En esta investigación hemos profundizado en las GANs su estructura, componentes principales y algunas de sus aplicaciones. Además de mostrar con un ejemplo parte de la forma en que se programan este tipo de redes antagónicas. 

En adición a esto consideramos que las GANs tienen una gran proyección en relación a los usos que posee tanto en campo del arte y tratamiento de imágenes como sus potenciales usos en seguridad y en el área de la salud, entre otros. 

Consideramos además relevante mencionar que el aprendeizaje y práctica de una matertia tan compleja como lo es la GAN, permite ampliar no solo la idea que poseemos de la tecnología sino también de nuestras propias capacidades entorno al "espacio latente" del desarrollo académico y profesional.


#d. Referencias


# Listado de fuentes consultadas y citadas

Vídeos

GANs - Introducción

https://www.youtube.com/watch?v=VEO0-AHxm-U&ab_channel=SensIO

Curso Gratuito de Python​: Creación de una Red Generativa Antagónica

https://www.youtube.com/watch?v=06cNmEwvJ4s&ab_channel=UniversidadVIU

Fuentes web

Proyecto IDIS (Investigación en Diseño de Imagen y Sonido)

https://proyectoidis.org/propuesta/

Mathworks

https://la.mathworks.com/discovery/generative-adversarial-networks.html

Textos:

Generative Adversarial Networks (GANs) (por: LeewayHertz)

Making Pictures With Generative Adversarial Networks (por: Casey Reas)

Generative Adversarial Nets (por: Ian J. FGoodfellow)

A Style-Based Generator Architecture for Generative Adversarial Networks (por: Tero Karras, Samuli Laine, Timo Aila)

Generative Adversarial Networks (GANs)  (por: Binglin, Shashank & Bhargav)


# MUCHAS GRACIAS 

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/f4676a82-4637-4985-94bc-04fc5dee1e84)

![image](https://github.com/vickgit201/audiv027-2024-1/assets/128842460/a1043160-296c-4d96-ad49-d206de7aad12)


