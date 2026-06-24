---
title: 'Module 2 — Training & Learning Process'
date: 2026-06-24
permalink: /resources/deep-learning/dl-series-training-learning/
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

This module explains how neural networks actually learn from data. The focus is on intuition: how predictions become better over time through feedback.

{% include toc %}

---

# 2.1 Learning Goals

By the end of this module, you should understand:

* What “training” means in machine learning
* What a loss function is
* Why models make errors
* How gradient descent improves models
* The idea of backpropagation (conceptual)
* What an epoch, batch, and iteration are

---

# 2.2 What is Training?

Training is the process of improving a model by adjusting its parameters (weights and biases) using data.

Basic idea:

1. Make a prediction
2. Compare it with the correct answer
3. Measure how wrong it is
4. Update the model to reduce error

This loop repeats many times.

Reading materials:
* [What’s the Difference Between Deep Learning Training and Inference?
](https://blogs.nvidia.com/blog/difference-deep-learning-training-inference-ai/){:target="_blank"}
* [The Difference Between Deep Learning Training and Inference](https://community.intel.com/t5/Blogs/Tech-Innovation/Artificial-Intelligence-AI/The-Difference-Between-Deep-Learning-Training-and-Inference/post/1335634){:target="_blank"}


---

# 2.3 Prediction vs Reality

A model produces a prediction:

prediction ≠ true value

The difference between them is called **error**.

Example:

* True value: 100
* Prediction: 80
* Error: 20

---

# 2.4 What is a Loss Function?

A loss function measures how wrong a model is.

It converts error into a single number.

Example (Mean Squared Error)
> loss = (prediction - true_value)^2


Why we need it:

* Gives a clear training signal
* Smaller loss = better model

---

# 2.5 Goal of Training

The goal is simple: **minimize loss**.

We want the model to make predictions that reduce this error as much as possible.

---

# 2.6 Intuition: Learning as Feedback

Think of learning like this:

* You try something
* You see the mistake
* You adjust next time

Neural networks do exactly this, but mathematically.

---

# 2.7 What are We Updating?

A neural network learns by adjusting:

* Weights (importance of inputs)
* Biases (baseline adjustments)

These parameters control the behavior of the model.

---

# 2.8 Gradient Descent (Core Idea)

Gradient descent is the main algorithm used to reduce loss.

## Intuition:

* If loss is high → change parameters
* Move in direction that reduces error

Think of it as walking downhill:

* Loss = height
* Goal = reach lowest point

---

# 2.9 Learning Rate

The learning rate controls how big each update is.

* Too large → unstable training
* Too small → slow learning

It is one of the most important hyperparameters.

Reading materials:
* [How to Configure the Learning Rate When Training Deep Learning Neural Networks](https://machinelearningmastery.com/learning-rate-for-deep-learning-neural-networks/){:target="_blank"}


---

# 2.10 Backpropagation (Conceptual View)

Backpropagation is how the model figures out:

> which weights caused the error

It works by:

1. Computing loss
2. Sending error backward through network
3. Calculating contribution of each weight
4. Updating weights accordingly

You don’t need full math yet—just the idea that errors flow backward.

---

# 2.11 Epochs, Batches, Iterations
* Epoch: One full pass over the entire dataset
* Batch: A small subset of data used at once
* Iteration: One update step using one batch

Example:
* Dataset: 10,000 samples
* Batch size: 100
* Iterations per epoch: 100

---

# 2.12 Training Loop (Conceptual)

A typical training loop looks like:

1. Take batch of data
2. Make predictions
3. Compute loss
4. Compute gradients
5. Update weights
6. Repeat

This is the core of all deep learning.

---

# 2.13 Why Training Works

Training works because:

* Errors provide feedback
* Gradients tell direction of improvement
* Repeated updates gradually improve performance

Over time, the model learns patterns in data.

---

# 2.14 Common Problems in Training
* Overfitting: Model memorizes training data instead of learning patterns
* Underfitting: Model is too simple to learn patterns
* Vanishing gradients: Learning becomes extremely slow in deep networks

---

# 2.15 Key Takeaways

* Training = iterative improvement
* Loss function measures error
* Gradient descent reduces loss
* Backpropagation assigns responsibility for errors
* Learning happens through repeated updates

---

# Acknowledgement
Part of the contents are generated by ChatGPT.

Return to the Main Page of [Deep Learning and Machine Learning
](/resources/deep-learning/).