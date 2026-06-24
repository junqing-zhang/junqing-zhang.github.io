---
title: 'Module 3 — Practical Deep Learning with PyTorch'
date: 2026-06-24
permalink: /resources/deep-learning/dl-series-pytorch/
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

This module introduces hands-on deep learning using PyTorch. You will build and train your first neural network end-to-end on a real dataset.

{% include toc %}

---

# 3.1 Learning Goals

By the end of this module, you should be able to:

* Understand PyTorch tensors
* Build a simple neural network (MLP)
* Write a training loop from scratch
* Train a model on MNIST
* Evaluate model performance
* Interpret training results

---

# 3.2 Why PyTorch?

PyTorch is widely used because:

* Simple and Python-friendly
* Dynamic computation graph
* Strong research and industry adoption
* Easy debugging

---

# 3.3 Core Concept: Tensor

A tensor is the basic data structure in PyTorch.

It is similar to:

* Scalar (0D)
* Vector (1D)
* Matrix (2D)
* Multi-dimensional array (ND)

Example:

```
import torch
x = torch.tensor([1.0, 2.0, 3.0])
print(x)
```

---

# 3.4 Simple Tensor Operations

```
a = torch.tensor([2.0, 3.0])
b = torch.tensor([4.0, 5.0])

print(a + b)
print(a * b)
```

---

# 3.5 Building a Simple Neural Network

We use a basic feedforward network (MLP).

```
import torch
import torch.nn as nn

class SimpleNN(nn.Module):
    def __init__(self):
        super(SimpleNN, self).__init__()
        self.fc1 = nn.Linear(28 * 28, 128)
        self.relu = nn.ReLU()
        self.fc2 = nn.Linear(128, 10)

    def forward(self, x):
        x = x.view(-1, 28 * 28)
        x = self.fc1(x)
        x = self.relu(x)
        x = self.fc2(x)
        return x
```

---

# 3.6 Dataset: MNIST

MNIST dataset is probably the most popular for creating the first Deep Learning example. It consists of 70,000 images of handwritten digits from 0-9.
* Input: 28×28 grayscale image
* Output: digit label (0–9)

Depending on your preference of the programming languages, there are Python and Matlab examples available.
* PyTorch: [Basic MNIST Example](https://github.com/pytorch/examples/tree/main/mnist){:target="_blank"}
* Python: [Building a Convolutional Neural Network (CNN) in Keras](https://towardsdatascience.com/building-a-convolutional-neural-network-cnn-in-keras-329fbbadc5f5){:target="_blank"}. Pleaes also check [Simple MNIST convnet](https://keras.io/examples/vision/mnist_convnet/){:target="_blank"}. You need to properly install software and configure your environments.
* Matlab: [Create Simple Deep Learning Network for Classification](https://uk.mathworks.com/help/deeplearning/ug/create-simple-deep-learning-network-for-classification.html). The Matlab Deep Learning Toolbox needs to be installed before you run the example.
 

---

# 3.7 Loading Dataset

```
import torchvision
import torchvision.transforms as transforms

transform = transforms.ToTensor()

train_data = torchvision.datasets.MNIST(
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

# 3.8 Loss Function and Optimizer

```
import torch.optim as optim

model = SimpleNN()

criterion = nn.CrossEntropyLoss()
optimizer = optim.Adam(model.parameters(), lr=0.001)
```

---

# 3.9 Training Loop (Core Part)

```
for epoch in range(2):
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

# 3.10 Model Evaluation

```
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

# 3.11 What Just Happened?

You built a full ML pipeline:

1. Loaded dataset
2. Defined neural network
3. Defined loss function
4. Optimized model
5. Evaluated performance

This is the core workflow of deep learning.

---

# 3.12 Key Concepts Summary

| Component     | Role                      |
| ------------- | ------------------------- |
| Tensor        | Data representation       |
| Model         | Neural network            |
| Loss          | Error measurement         |
| Optimizer     | Updates weights           |
| Training loop | Repeated learning process |

---

# 3.13 Common Beginner Mistakes

* Forgetting `optimizer.zero_grad()`
* Not reshaping input correctly
* Confusing logits vs probabilities
* Using wrong loss function
* Ignoring data normalization

---

# 3.14 Suggested Experiment

Try changing:

* Learning rate (0.1, 0.01, 0.001)
* Hidden layer size (64, 128, 256)
* Number of epochs

Observe how accuracy changes.


# Acknowledgement
Part of the contents are generated by ChatGPT.

Return to the Main Page of [Deep Learning and Machine Learning
](/resources/deep-learning/).
