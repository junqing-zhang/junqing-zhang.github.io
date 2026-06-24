---
title: 'Part 1 — Machine Learning & Neural Network Basics'
date: 2026-06-24
permalink: /resources/deep-learning/dl-series-basics/
categories:
  - Resources
  - Deep Learning  
tags:
  - Deep Learning
---

Deep Learning Tutorial Series  
- [Part 0 — Environment Setup (Beginner Guide)](/resources/deep-learning/dl-series-environment-setup/)


This module introduces the core ideas behind machine learning and neural networks. The focus is on intuition rather than mathematics or code.

---

# 1.1 Learning Goals

By the end of this module, you should understand:

* What machine learning is
* Difference between traditional programming and ML
* Types of machine learning (supervised / unsupervised)
* What a model is
* Basic structure of a neural network
* How predictions are generated

---

# 1.2 What is Machine Learning?

Machine learning is a way for computers to learn patterns from data instead of being explicitly programmed with rules.

## Traditional programming

```
Rules + Data → Output
```

## Machine learning

```
Data + Output → Learn Rules (Model)
```

In ML, the system learns a function that maps inputs to outputs.

---

# 1.3 Types of Machine Learning

## 1) Supervised Learning

* Data includes inputs and correct answers (labels)
* Example:

  * Image → cat / dog
  * Email → spam / not spam

Goal: learn mapping from input to output

---

## 2) Unsupervised Learning

* Data has no labels
* Example:

  * Clustering customers
  * Finding patterns in data

Goal: discover hidden structure in data

---

## 3) Reinforcement Learning (overview only)

* Learning through rewards and feedback
* Example: game agents learning to play

---

# 1.4 What is a Model?

A model is a function that learns from data:

```
y = f(x)
```

Where:

* x = input
* y = output prediction
* f = learned mapping

Training means learning the best function f.

---

# 1.5 What is a Neural Network?

A neural network is a model made of layers of simple computational units called neurons.

Structure:

* Input layer
* Hidden layers
* Output layer

Each layer transforms the data step by step.

---

# 1.6 The Neuron (Core Idea)

A neuron performs:

```
output = activation(w1*x1 + w2*x2 + ... + b)
```

Where:

* x = inputs
* w = weights (learned importance)
* b = bias
* activation = non-linear function

The neuron learns which inputs matter most.

---

# 1.7 Activation Functions

Without activation functions, a neural network would only be a linear model.

## ReLU

```
f(x) = max(0, x)
```

* Most commonly used
* Simple and effective

## Sigmoid

* Outputs between 0 and 1
* Often used for binary classification

## Tanh

* Outputs between -1 and 1
* Less commonly used in modern deep learning

---

# 1.8 Forward Pass (Prediction Process)

A forward pass is how a neural network makes predictions:

```
Input → Layers → Output
```

Steps:

1. Input enters network
2. Each layer applies weights + activation
3. Final layer produces prediction

---

# 1.9 Simple Example

Predicting house price:

Inputs:

* Size
* Location
* Number of rooms

Output:

* Price

The model learns how each feature affects the final price.

---

# 1.10 What Does “Learning” Mean?

Learning means improving predictions by adjusting weights.

High-level process:

1. Make prediction
2. Compare with correct answer
3. Measure error
4. Adjust parameters

(Training details will come in Module 2)

---

# 1.11 Key Terms Summary

| Term       | Meaning                            |
| ---------- | ---------------------------------- |
| Model      | Function that maps input to output |
| Feature    | Input variable                     |
| Label      | Correct output                     |
| Training   | Learning from data                 |
| Prediction | Model output                       |

---

# 1.12 Quick Check (No Coding)

Think about:

* What inputs would a weather prediction model need?
* What is the output?
* Is this supervised or unsupervised learning?

---
