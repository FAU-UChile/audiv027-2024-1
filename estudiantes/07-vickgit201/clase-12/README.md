INDICE

a. Casos de Estudio y Ejemplos Prácticos

Implementación de GANs en proyectos reales

b. Introducción

Definición de GANs

Características de una GAN: Generación de imágenes realistas:Mejora de imágenes y super-resolución;Transferencia de estilo y síntesis de texturas
 
Arquitectura básica de una GAN

c. Conclusiones

Resumen de los principales puntos tratados

Impacto potencial de las GANs en la industria y la investigación

d. Referencias

Listado de fuentes consultadas y citadas

Desarrollo 

Casos de Estudio y Ejemplos Prácticos

Implementación de GANs en proyectos reales


DESARROLLO

a. Casos de Estudio y Ejemplos Prácticos

Implementación de GANs en proyectos reales

Código:

#instalar bibliotecas necesarias
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

#Cargar y preprocesar datos
(X_train, _), (_, _) = cifar10.load_data()
X_train = (X_train - 127.5) / 127.5  # Normalizar a [-1, 1]
X_train = X_train.astype('float32')


(Los datos CIFAR-10 se cargan y se normalizan para que los píxeles estén en el rango [-1, 1], que es típico para las imágenes que se utilizan en las GAN.)


CIFAR-10 es un conjunto de datos que contiene 60,000 imágenes en color de 32x32 píxeles en 10 clases diferentes, con 6,000 imágenes por clase.


La función tangente hiperbólica (tanh) es una función de activación comúnmente utilizada en capas de salida de generadores en redes generativas (GANs). Esta función produce salidas en el rango [-1, 1]. Al normalizar los datos de entrada en el mismo rango, se facilita el aprendizaje del modelo, ya que los valores de entrada estarán alineados con el rango de salida deseado de la función tanh.


X_train originalmente puede tener un tipo de datos uint8 (valores enteros sin signo de 8 bits) debido a los valores de píxeles en el rango [0, 255].
X_train.astype('float32') convierte los valores de píxeles a tipo de datos float32 (números de coma flotante de 32 bits).
Esto es importante porque las operaciones en redes neuronales suelen realizarse mejor con tipos de datos de punto flotante, ya que proporcionan la precisión necesaria para los cálculos graduales durante el entrenamiento.

#Definir el generador
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


