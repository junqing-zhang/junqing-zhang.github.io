---
title: 'Module 4 — CNNs and Computer Vision'
date: 2026-06-24
permalink: /resources/deep-learning/dl-series-cnn/
categories:
  - Resources
  - Deep Learning  
tags:
  - Deep Learning
---

Deep Learning Tutorial Series  
- [Module 0 — Environment Setup (Beginner Guide)](/resources/deep-learning/dl-series-environment-setup/)
- [Module 1 — Machine Learning & Neural Network Basics](/resources/deep-learning/dl-series-basics/)
- [Module 2 — Training & Learning Process](/resources/deep-learning/dl-series-training-learning/)
- [Module 3 — Practical Deep Learning with PyTorch](/resources/deep-learning/dl-series-pytorch/)
- [Module 4 — CNNs and Computer Vision](/resources/deep-learning/dl-series-cnn/)
- [Module 5 — Sequence Models + Modern Deep Learning Overview](/resources/deep-learning/dl-series-modern-dl/)


This module introduces Convolutional Neural Networks (CNNs), which are the standard approach for image-related deep learning tasks.

{% include toc %}

---

# 4.1 Learning Goals

By the end of this module, you should understand:

* Why fully connected networks are not ideal for images
* What a convolution operation is
* How CNNs extract features from images
* The role of filters and feature maps
* Pooling layers and their purpose
* How to build a basic CNN in PyTorch
* How CNNs are used for image classification

---

# 4.2 Why Not Use Fully Connected Networks for Images?

Images are structured data.

Example: 28×28 image = 784 inputs

Problems with fully connected layers:

* Too many parameters
* Ignore spatial structure
* Poor generalization on images

CNNs solve this by exploiting spatial patterns.

---

# 4.3 Core Idea of CNNs

CNNs learn **patterns in local regions** of images.

Instead of looking at all pixels at once, they look at small patches.


Reading materials:
* [A Comprehensive Guide to Convolutional Neural Networks](https://towardsdatascience.com/a-comprehensive-guide-to-convolutional-neural-networks-the-eli5-way-3bd2b1164a53){:target="_blank"}
* [Matlab, Explanation of Different Layers of Convolutional Neural Networks](https://uk.mathworks.com/help/deeplearning/ug/layers-of-a-convolutional-neural-network.html){:target="_blank"}


---

# 4.4 Convolution Operation (Intuition)

A filter (kernel) slides over an image and extracts features.

Example idea:

* Detect edges
* Detect corners
* Detect textures

Operation:
> Image + Filter → Feature Map

---

# 4.5 Filters (Kernels)

A filter is a small matrix (e.g., 3×3) used to scan an image.

It learns to detect specific patterns:

* Horizontal edges
* Vertical edges
* Shapes

Filters are learned automatically during training.

---

# 4.6 Feature Maps

A feature map is the output of applying a filter.

* Bright regions → strong feature presence
* Dark regions → weak or no feature

Each convolution layer produces multiple feature maps.

---

# 4.7 Stride and Padding

## Stride

How far the filter moves each step.

* Stride = 1 → detailed scan
* Stride = 2 → faster, smaller output

## Padding

Adds borders to preserve image size.

* “Same” padding keeps dimensions
* “Valid” reduces dimensions

---

# 4.8 Pooling Layers

Pooling reduces spatial size while keeping important information.

## Max Pooling

Keeps strongest activation in a region.

Example:

```
[1, 3]
[2, 4] → 4
```

Benefits:

* Reduces computation
* Improves robustness
* Prevents overfitting

---

# 4.9 CNN Architecture Overview

A typical CNN looks like:

```
Input Image
   ↓
Convolution + ReLU
   ↓
Pooling
   ↓
Convolution + ReLU
   ↓
Pooling
   ↓
Fully Connected Layer
   ↓
Output
```

---

# 4.10 Building a CNN in PyTorch

```python id="cnn_model"
import torch
import torch.nn as nn

class SimpleCNN(nn.Module):
    def __init__(self):
        super(SimpleCNN, self).__init__()

        self.conv1 = nn.Conv2d(in_channels=1, out_channels=16, kernel_size=3, padding=1)
        self.relu = nn.ReLU()
        self.pool = nn.MaxPool2d(2, 2)

        self.conv2 = nn.Conv2d(16, 32, 3, padding=1)

        self.fc1 = nn.Linear(32 * 7 * 7, 128)
        self.fc2 = nn.Linear(128, 10)

    def forward(self, x):
        x = self.pool(self.relu(self.conv1(x)))
        x = self.pool(self.relu(self.conv2(x)))

        x = x.view(x.size(0), -1)

        x = self.relu(self.fc1(x))
        x = self.fc2(x)

        return x
```

---

# 4.11 Dataset: CIFAR-10 (Recommended)

CIFAR-10 contains real-world images:

* 10 classes
* 32×32 RGB images
* Examples: airplane, cat, dog, car

---

# 4.12 Loading CIFAR-10 Dataset

```python id="cifar_load"
import torchvision
import torchvision.transforms as transforms

transform = transforms.Compose([
    transforms.ToTensor()
])

train_data = torchvision.datasets.CIFAR10(
    root="./data",
    train=True,
    download=True,
    transform=transform
)

train_loader = torch.utils.data.DataLoader(
    train_data,
    batch_size=64,
    shuffle=True
)
```

---

# 4.13 Training Setup

```python id="cnn_train_setup"
import torch.optim as optim

model = SimpleCNN()

criterion = nn.CrossEntropyLoss()
optimizer = optim.Adam(model.parameters(), lr=0.001)
```

---

# 4.14 Training Loop

```python id="cnn_train_loop"
for epoch in range(5):
    total_loss = 0

    for images, labels in train_loader:
        outputs = model(images)

        loss = criterion(outputs, labels)

        optimizer.zero_grad()
        loss.backward()
        optimizer.step()

        total_loss += loss.item()

    print(f"Epoch {epoch+1}, Loss: {total_loss:.4f}")
```

---

# 4.15 Model Evaluation

```python id="cnn_eval"
correct = 0
total = 0

with torch.no_grad():
    for images, labels in train_loader:
        outputs = model(images)
        _, predicted = torch.max(outputs, 1)

        total += labels.size(0)
        correct += (predicted == labels).sum().item()

print("Accuracy:", correct / total)
```

---

# 4.16 What CNNs Learn (Intuition)

CNN layers learn hierarchical features:

## Early layers:

* Edges
* Lines

## Middle layers:

* Shapes
* Patterns

## Deep layers:

* Objects (cat, car, etc.)

---

# 4.17 Common Issues

* Incorrect input shape (channel mismatch)
* Forgetting normalization
* Overfitting on small datasets
* Too large learning rate

---

# 4.18 Key Takeaways

* CNNs are designed for images
* Convolution extracts local features
* Pooling reduces complexity
* CNNs learn hierarchical representations
* They outperform fully connected networks on vision tasks

---

# Resources: 
MNIST CNN Examples:
* PyTorch: [Basic MNIST Example](https://github.com/pytorch/examples/tree/main/mnist){:target="_blank"}
* Keras: [Simple MNIST convnet](https://keras.io/examples/vision/mnist_convnet/){:target="_blank"}. 
* Matlab: [Create Simple Deep Learning Network for Classification](https://uk.mathworks.com/help/deeplearning/ug/create-simple-deep-learning-network-for-classification.html). The Matlab Deep Learning Toolbox needs to be installed before you run the example.


# Acknowledgement
Part of the contents are generated by ChatGPT.

Return to the Main Page of [Deep Learning and Machine Learning
](/resources/deep-learning/).
