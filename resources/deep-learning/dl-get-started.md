---
title: 'Deep Learning Tutorial for Beginners, Get Started'
date: 2023-06-11
permalink: /deep-learning/dl-get-started/
categories:
  - Resources
  - Deep Learning  
tags:
  - Deep Learning
---

This page provides a short deep learning tutorial for beginners in this area.

{% include toc %}

## 1 Introduction to Deep Learning

Deep learning is a branch of machine learning techniques that utilizes artificial neural networks to approximate a desired function based on the provided training data. It is particularly suitable for complicated tasks such as natural language processing (NLP), computer vision (CV), autonomous driving because the algorithms for these applications are difficult to design by hand. Deep learning can automatically learn algorithms from extensive number of real-world training data, making it an ideal approach for tackling such difficult tasks.


## 2 A Typical Deep Learning Procedure

This section takes the MNIST handwritten digits classification problem as an example to describe a typical deep learning procedure. The Keras library is used for its simplicity. Note that this is a supervised classification task.

Ref. Links: [Simple MNIST convnet (keras.io)](https://keras.io/examples/vision/mnist_convnet/)
	            [Training a neural network on MNIST with Keras  |  TensorFlow Datasets](https://www.tensorflow.org/datasets/keras_example)

### 2.1 Load Dataset

Import used Python libraries.
```
import numpy as np
from tensorflow import keras
from tensorflow.keras import layers
```

Load the training and test dataset. `x_train` and `y_train` are training data (images) and labels used to update neural network parameters. `x_test` and `y_test` are test data and labels used to evaluate the neural network performance.

```
(x_train, y_train), (x_test, y_test) = keras.datasets.mnist.load_data()
```

Scale images to the [0, 1] range. 

```
x_train = x_train.astype("float32") / 255
x_test = x_test.astype("float32") / 255
```

Make sure images have shape (28, 28, 1)

```
x_train = np.expand_dims(x_train, -1)
x_test = np.expand_dims(x_test, -1)
print("x_train shape:", x_train.shape)
print(x_train.shape[0], "train samples")
print(x_test.shape[0], "test samples")
```

One-hot encoding, i.e., converting labels to binary class vectors.

```
y_train = keras.utils.to_categorical(y_train, num_classes)
y_test = keras.utils.to_categorical(y_test, num_classes)
```

### 2.2 Build the Model

Next a neural network is built before the training can be carried out. There are various types of neural networks available, such as recurrent neural network (RNN), convolutional neural network (CNN), graph neural network (GNN), transformer, etc. These neural network architectures/designs exhibit different __inductive biases__, i.e., the prior knowledge/assumption to the data. For example, the CNNs incorporates the assumption of translation invariance, and are therefore primarily used to process images and spatial data. While RNNs exhibits an inductive bias for capturing temporal dependencies in the inputs thus are widely used to process sequential data.

The loaded MNIST handwritten digits are gray-scale images, thus a simple CNN is built for processing.

```
num_classes = 10
input_shape = (28, 28, 1)

model = keras.Sequential(
    [
        keras.Input(shape=input_shape),
        layers.Conv2D(32, kernel_size=(3, 3), activation="relu"),
        layers.MaxPooling2D(pool_size=(2, 2)),
        layers.Conv2D(64, kernel_size=(3, 3), activation="relu"),
        layers.MaxPooling2D(pool_size=(2, 2)),
        layers.Flatten(),
        layers.Dropout(0.5),
        layers.Dense(num_classes, activation="softmax"),
    ]
)
```

### 2.3 Training

Next we will do the training. Keras is a highly encapsulated library and enables us to train the model with several lines of codes. The internal initialization, forward/backward propagation, parameter updating procedures are all encapsulated in the `fit` function.

```
batch_size = 128
epochs = 15

model.compile(loss="categorical_crossentropy", 
			  optimizer="adam", 
			  metrics=["accuracy"])

model.fit(x_train, 
		  y_train, 
		  batch_size=batch_size, 
		  epochs=epochs, 
		  validation_split=0.1)
```


### 2.4 Test/Inference

Then we can evaluate the model once the training is complete. A commonly used evaluation metric for classification problems is the overall accuracy.

```
score = model.evaluate(x_test, y_test, verbose=0)
print("Test loss:", score[0])
print("Test accuracy:", score[1])
```

## 3 Development Tools

This section introduces useful development tools, frameworks for AI research. The Python and MATLAB languages are recommended for beginners.

### 3.1 Python

Python is currently the most popular programming language for AI researchers. 

#### 3.1.1 TensorFlow and PyTorch

Two of the most popular deep learning frameworks, Tensorflow and PyTorch, are developed by Google and Facebook respectively. The best way to learn them is to follow the official tutorials, the links to which are listed below:
- TensorFlow: [Tutorials TensorFlow Core](https://www.tensorflow.org/tutorials)
- PyTorch: [Welcome to PyTorch Tutorials — PyTorch Tutorials 2.0.1+cu117 documentation](https://pytorch.org/tutorials/)

A special note is the TensorFlow has integrated Keras as a high-level API (they exist separately in the past). Keras offers a high level of encapsulation, making it especially suitable for beginners with limited knowledge in deep learning.

#### 3.1.2 NumPy

NumPy is another popular Python package used for scientific/numerical computing. It is often used to preprocess data before using Tensorflow/PyTorch to build and train a neural network. Beginners with experience in MATLAB should become familiar with NumPy quickly.
- NumPy: [NumPy user guide — NumPy v1.24 Manual](https://numpy.org/doc/1.24/user/index.html#user)

#### 3.1.3 Anaconda

Anaconda simplified the package management process in Python. In short, the packages such as Tensorflow/PyTorch/NumPy can be installed using the anaconda platform. Anaconda can help create isolated environments and check the version of the package to be installed to avoid conflicts between different library versions. 
- Download Anaconda: [Free Download Anaconda](https://www.anaconda.com/download/)

#### 3.1.4 IDE (Integrated Development Environment)

PyCharm and VS Code are highly recommended IDEs for Python. MATLAB-familiar users can also try Spyder. 

### 3.2 MATLAB

The MATLAB Deep Learning Toolbox provides a framework for designing and implementing neural networks. The author's personal feeling is that MATLAB's deep learning APIs are closer to Keras and are beginner friendly as well. MATLAB provides detailed official documentation and examples to get users familiar with deep learning faster.
- Example: [Create Simple Image Classification Network - MATLAB & Simulink (mathworks.com)](https://www.mathworks.com/help/deeplearning/gs/create-simple-deep-learning-classification-network.html)

As MATLAB requires a paid license, the public resources for MATLAB are limited compared to Python-based deep learning framework. Researchers who rely heavily on other MATLAB toolboxes, such as wireless researchers, may prefer the MATLAB Deep Learning Toolbox.

## 4 Learning Resources

- CS231n: Convolutional Neural Networks for Visual Recognition at Stanford University [link](http://cs231n.stanford.edu/)
- Book: [Dive into Deep Learning — Dive into Deep Learning 1.0.0-beta0 documentation (d2l.ai)](http://d2l.ai/index.html)