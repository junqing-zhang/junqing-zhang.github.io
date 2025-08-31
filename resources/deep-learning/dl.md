---
title: 'Deep Learning for Beginners'
date: 2024-06-05
permalink: /resources/deep-learning/dl/
categories:
  - Resources
  - Deep Learning  
tags:
  - Deep Learning
  - Machine Learning  
---

This paper summarizes resources for deep learning for beginners.

{% include toc %}

# Basic Knowledge
* [What’s the Difference Between Deep Learning Training and Inference?
](https://blogs.nvidia.com/blog/difference-deep-learning-training-inference-ai/){:target="_blank"}
* [How to Configure the Learning Rate When Training Deep Learning Neural Networks](https://machinelearningmastery.com/learning-rate-for-deep-learning-neural-networks/){:target="_blank"}

# Your First Experience
## MNIST Example
MNIST dataset is probably the most popular for creating the first CNN example. It consists of 70,000 images of handwritten digits from 0-9.

Depending on your preference of the programming languages, there are Python and Matlab examples available.
* Python: [Building a Convolutional Neural Network (CNN) in Keras](https://towardsdatascience.com/building-a-convolutional-neural-network-cnn-in-keras-329fbbadc5f5){:target="_blank"}. Pleaes also check [Simple MNIST convnet](https://keras.io/examples/vision/mnist_convnet/){:target="_blank"}. You need to properly install software and configure your environments.
* Matlab: [Create Simple Deep Learning Network for Classification](https://uk.mathworks.com/help/deeplearning/ug/create-simple-deep-learning-network-for-classification.html). The Matlab Deep Learning Toolbox needs to be installed before you run the example.
 
## What is Convolutional Neural Networks (CNN)
* [A Comprehensive Guide to Convolutional Neural Networks](https://towardsdatascience.com/a-comprehensive-guide-to-convolutional-neural-networks-the-eli5-way-3bd2b1164a53){:target="_blank"}
* [Matlab, Explanation of Different Layers of Convolutional Neural Networks](https://uk.mathworks.com/help/deeplearning/ug/layers-of-a-convolutional-neural-network.html){:target="_blank"}


# Deep Learning Architectures
* [Deep learning architectures](https://developer.ibm.com/articles/cc-machine-learning-deep-learning-architectures/){:target="_blank"} (IBM blog, 2017)
> This article classifies deep learning architectures into supervised and unsupervised learning and introduces several popular deep learning architectures: convolutional neural networks, recurrent neural networks (RNNs), long short-term memory/gated recurrent unit (GRU), self-organizing map (SOM), autoencoders (AE) and restricted Boltzman machine (RBM). It also gives an overview of deep belief networks (DBN) and deep stacking networks (DSNs)


* [Illustrated: 10 CNN Architectures](https://towardsdatascience.com/illustrated-10-cnn-architectures-95d78ace614d#e276){:target="_blank"}: LeNet-5, AlexNet, VGG-16, Inception-v1, Inception-v3,  ResNet-50, Xception, Inception-v4, Inception-ResNets, ResNeXt-50
* [Understanding AlexNet](https://www.learnopencv.com/understanding-alexnet/){:target="_blank"}

# Code Examples
## TensorFlow + Keras
* [Getting started with the Keras Sequential model](https://keras.io/getting-started/sequential-model-guide/){:target="_blank"}
* [Simple MNIST convnet](https://keras.io/examples/vision/mnist_convnet/){:target="_blank"}
* [Your First Deep Learning Project in Python with Keras Step-By-Step](https://machinelearningmastery.com/tutorial-first-neural-network-python-keras/){:target="_blank"}
* [Keras Code examples](https://keras.io/examples/){:target="_blank"}
* [How to Develop 1D Convolutional Neural Network Models for Human Activity Recognition](https://machinelearningmastery.com/cnn-models-for-human-activity-recognition-time-series-classification/){:target="_blank"}
* [Implementing AlexNet CNN Architecture Using TensorFlow 2.0+ and Keras](https://towardsdatascience.com/implementing-alexnet-cnn-architecture-using-tensorflow-2-0-and-keras-2113e090ad98){:target="_blank"}
* [Building Autoencoders in Keras](https://blog.keras.io/building-autoencoders-in-keras.html){:target="_blank"}


## Pytorch
* [Deep Learning with PyTorch: A 60 Minute Blitz](https://pytorch.org/tutorials/beginner/deep_learning_60min_blitz.html){:target="_blank"}

## Matlab 
* [Matlab, Training a Model from Scratch](https://www.mathworks.com/solutions/deep-learning/examples/training-a-model-from-scratch.html){:target="_blank"}

# Online Resources
* CS231n: Convolutional Neural Networks for Visual Recognition at Stanford University [link](http://cs231n.stanford.edu/){:target="_blank"}
* A summary of resources [link](https://towardsdatascience.com/convolutional-neural-network-a-step-by-step-guide-a8b4c88d6943){:target="_blank"}
* [Book Dive into Deep Learning](http://d2l.ai/index.html){:target="_blank"}

# Matlab Resources
Matlab has provided lots of useful resources.
* [Set Up Parameters and Train Convolutional Neural Network](https://www.mathworks.com/help/deeplearning/ug/setting-up-parameters-and-training-of-a-convnet.html){:target="_blank"}
* [Deep Learning Tips and Tricks](https://www.mathworks.com/help/deeplearning/ug/deep-learning-tips-and-tricks.html){:target="_blank"}
* [Data Sets for Deep Learning](https://www.mathworks.com/help/deeplearning/ug/data-sets-for-deep-learning.html){:target="_blank"}
* [Matlab, Explanation of Different Layers of Convolutional Neural Networks](https://uk.mathworks.com/help/deeplearning/ug/layers-of-a-convolutional-neural-network.html){:target="_blank"}

# Development Tool
## Python
* [Anaconda Distribution](https://docs.anaconda.com/anaconda/install/){:target="_blank"} 

## Code Snippet
* Check the installed packages
```
conda list
```

* Install a particular tensorflow version using conda
```
conda install -c conda-forge tensorflow=1.13
```



