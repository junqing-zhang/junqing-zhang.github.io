---
layout: archive
title: "Deep Learning Based RFF Identification for LoRa"
permalink: /teaching/demo-fyp-2020-rffi-lora/
author_profile: true
---

Traditional authentication schemes are implemented on the MAC layer for the LoRaWAN network. Radio frequency fingerprint (RFF) is a physical layer feature, originated from hardware imperfection. 

In this demonstration, we will present a CNN-based RFF identification for LoRa. 

{% include toc %}

# Overview
RFF identification is an emerging technology and it can be used for authentication of the Internet of Things with low power consumption. This demonstration uses Lopy4 to transmit the LoRa signal and uses RTL-SDR to receive the signal. The signal processing and CNN training have been implemented by Python. 

# The structure of RFFI system
<br />
<img align="center" width="700" src="{{ site.url }}/images/keygen/heartbeat_keygen_protocol_with_encryption.png" alt="...">
<br />

##Signal Generation
Any board that can generate LoRa signal without higher layers will work, e.g., Lopy4, Fipy. This demonstration uses eight Lopy4 boards as example. 
 
## Signal Reception and Processing:
* Synchronization: Detect the exact starting point of the preamble. 
* CFO Estimation and Compensation: Estimate the CFO of the received signal and compensate it with the estimated CFO.
* Singal Transform: Transform I/Q samples into the spectrograms. The differential spectrogram is used to eliminate the impact of the wireless channel.

## Deep Learning  
*  CNN Training: Feature extraction and Classification
*  Inference: Identification of trained devices

# Setup

<br />
<img align="center" width="400" src="{{ site.url }}/images/keygen/heartbeat_keygen_setup_diagram.png" alt="...">
<br />

<br />
<img align="center" width="500" src="{{ site.url }}/images/keygen/heartbeat_keygen_setup_photo.png" alt="...">
<br />

## Hardware
* Lopy4 x10
* RTL-SDR x1
* Jetson TX2 Developer Kit x1


## Software
* [ATOM](https://atom.io/packages/pymakr){:target="_blank"}
* GUI and signal processing: Python
* Keras 2.4.3, Tensorflow 2.4.1
# Demo Video
Click the image below to watch the video.
<a href="https://youtu.be/ENHphVejPpA" target="_blank"><img src="{{ site.url }}/images/keygen/heartbeat_keygen_demo_frontpage.png" alt="Hearbeat Key Generation Demo" width="800" border="10" /></a>

# Acknowledgement
We would like to thank Mr Junzhe Ge for his hard work on completing this excellent demo. 