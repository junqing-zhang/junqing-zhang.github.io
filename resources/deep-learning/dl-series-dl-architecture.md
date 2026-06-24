---
title: 'Module 5 Deep Learning Architectures'
date: 2026-06-24
permalink: /resources/deep-learning/dl-series-dl-architecture/
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
- [Module 5 — Deep Learning Architectures](/resources/deep-learning/dl-series-dl-architecture/)

This module introduces models for sequential data and gives a high-level overview of modern deep learning systems, including attention and transformers.

{% include toc %}

---

# 5.1 Learning Goals

By the end of this module, you should understand:

* Why sequence models are needed
* What sequential data is
* Basic idea of RNNs
* Why LSTM/GRU were introduced
* Intuition behind attention mechanisms
* High-level idea of Transformers
* What pretrained models and transfer learning are
* How modern deep learning systems are built

---



# Deep Learning Architectures
* [Deep learning architectures](https://developer.ibm.com/articles/cc-machine-learning-deep-learning-architectures/){:target="_blank"} (IBM blog, 2017)
> This article classifies deep learning architectures into supervised and unsupervised learning and introduces several popular deep learning architectures: convolutional neural networks, recurrent neural networks (RNNs), long short-term memory/gated recurrent unit (GRU), self-organizing map (SOM), autoencoders (AE) and restricted Boltzman machine (RBM). It also gives an overview of deep belief networks (DBN) and deep stacking networks (DSNs)


* [Illustrated: 10 CNN Architectures](https://towardsdatascience.com/illustrated-10-cnn-architectures-95d78ace614d#e276){:target="_blank"}: LeNet-5, AlexNet, VGG-16, Inception-v1, Inception-v3,  ResNet-50, Xception, Inception-v4, Inception-ResNets, ResNeXt-50
* [Understanding AlexNet](https://www.learnopencv.com/understanding-alexnet/){:target="_blank"}

# 5.2 What is Sequential Data?

Sequential data has an order where previous elements affect future ones.

Examples:

* Text (words in a sentence)
* Time series (stock prices, sensor data)
* Speech signals
* Video frames

Unlike images, order matters.

---

# 5.3 Why CNNs Are Not Enough

CNNs are good for spatial patterns but:

* They do not naturally model time/order
* They assume fixed-size local structure
* They struggle with long-range dependencies

We need models that “remember” past information.

---

# 5.4 Recurrent Neural Networks (RNNs)

RNNs process sequences step-by-step.

Core idea:

* Take input one step at a time
* Maintain a hidden “memory” state

```id="rnn_flow"
x1 → x2 → x3 → x4
     ↓    ↓    ↓
   hidden state updates
```

At each step:

* Output depends on current input + past memory

---

RNN problems:

* Forget long-term information
* Vanishing gradient issue
* Hard to train on long sequences

Example problem:

* Early words in a sentence are forgotten in long text

---

# 5.6 LSTM and GRU (Improved Memory Models)

LSTM (Long Short-Term Memory) fixes RNN limitations.

Key idea:

* Add a controlled memory system
* Decide what to remember and forget

GRU is a simpler version of LSTM.

They introduce:

* Memory gates
* Controlled information flow

Result:

* Better handling of long sequences

---

## Intuition: Why LSTM Works

Think of memory like a notebook:

* RNN: overwrites notes constantly
* LSTM: decides what to keep, update, or erase

This helps retain important long-term context.

---

## Attention Mechanism (Core Idea)

Attention allows a model to focus on important parts of input.

Instead of processing sequentially:

* Model looks at all parts at once
* Assigns importance weights

```id="attn"
Input → Weighted focus on relevant parts → Output
```

Example (sentence):

> “The cat that I saw yesterday was sleeping”

Attention helps connect “cat” with “was sleeping”.


Why Attention is Powerful
* Handles long-range dependencies well
* Parallel computation (faster than RNNs)
* Better interpretability
* Scales efficiently

---

# 5.10 Transformers (Modern Standard)

Transformers are the dominant architecture in modern deep learning.

Core components:

* Self-attention
* Feedforward layers
* Positional encoding

---

## Self-Attention (Intuition)

Each token (word) looks at all other tokens and decides:

* Which words are important
* How strongly they are related

Example:

Sentence:

> “The dog chased the ball because it was excited”

Attention helps determine what “it” refers to.

---

## Why Transformers Replaced RNNs

Transformers are preferred because:

* Parallel processing (fast training)
* Better long-range modeling
* Scales well with large data
* Works across text, images, audio

---



# 5.16 Where Each Model is Used

| Model       | Use Case                         |
| ----------- | -------------------------------- |
| RNN         | Basic sequence modeling (legacy) |
| LSTM/GRU    | Time series, speech (still used) |
| CNN         | Image tasks                      |
| Transformer | NLP, vision, multimodal systems  |

---

# 5.17 Key Takeaways

* Sequential data requires memory-aware models
* RNNs introduced sequence processing
* LSTM/GRU improved long-term memory
* Attention allows flexible focus on inputs
* Transformers are the modern standard
* Pretrained models dominate real-world applications

---

# Acknowledgement
Part of the contents are generated by ChatGPT.

Return to the Main Page of [Deep Learning and Machine Learning
](/resources/deep-learning/).
