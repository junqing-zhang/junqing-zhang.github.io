---
layout: archive
title: "Deep Learning Based RFF Identification for LoRa"
permalink: /teaching/demo-fyp-2020-rffi-lora/
author_profile: true
---

Traditional authentication schemes are implemented on the MAC layer for the LoRaWAN network. Radio frequency fingerprint (RFF) is a physical layer feature, originated from hardware imperfection. 

In this demonstration, we will present a CNN-based RFF identification for LoRa. This demo is created by Mr Junzhe Ge as part of this final year project. This work has won the second place of the [RISE Student Competition on hardware & embedded systems security](https://www.ukrise.org/competition/){:target="_blank"} in 2021.

{% include toc %}

# Overview
RFF identification is an emerging technology and it can be used for authentication of the Internet of Things with low power consumption. This demonstration uses Lopy4 to transmit LoRa signals and RTL-SDR for reception. The signal processing and CNN training have been implemented by Python. 

# System Overview
<br />
<img align="center" width="1000" src="{{ site.url }}/images/teaching/demo-fyp-2020-rffi-lora-overview.png" alt="...">
<br />

## Signal Generation
Any board that can generate LoRa signal without higher layers will work, e.g., Lopy4, Fipy. This demonstration uses eight Lopy4 boards as example. 
 
## Signal Reception and Processing
* Synchronization: Detect the exact starting point of the preamble. 
* CFO Estimation and Compensation: Estimate the CFO of the received signal and compensate it with the estimated CFO.
* Singal Transform: Transform I/Q samples into the spectrograms. The differential spectrogram is used to eliminate the impact of the wireless channel.

## Deep Learning  
*  CNN Training: Feature extraction and Classification
*  Inference: Identification of trained devices

# Setup

<br />
<img align="center" width="600" src="{{ site.url }}/images/teaching/demo-fyp-2020-rffi-lora-setup.png" alt="...">
<br />


## Hardware
* Lopy4 x10
* RTL-SDR x1
* Jetson TX2 Developer Kit x1


## Software
Platform
* [ATOM](https://atom.io/packages/pymakr){:target="_blank"} for configuring LoPy4
* MobaXterm for remonte control of Jetson TX2

Programming language and packages
* [Micropython](https://docs.pycom.io/tutorials/networks/lora/){:target="_blank"} for LoPy4
* [pyrtlsdr ](https://pypi.org/project/pyrtlsdr/){:target="_blank"} for RTL SDR
* GUI and signal processing: Python
* CNN: Keras 2.4.3 and Tensorflow 2.4.1

# Demo Video
Click the image below to watch the video.
<a href="https://youtu.be/AzqhLXkZvAM" target="_blank"><img src="{{ site.url }}/images/teaching/demo-fyp-2020-rffi-lora-frontpage.png" alt="Hearbeat Key Generation Demo" width="800" border="10" /></a>

# Contact
Please contact Dr. Junqing Zhang (junqing.zhang at liverpool.ac.uk) if you require further information.