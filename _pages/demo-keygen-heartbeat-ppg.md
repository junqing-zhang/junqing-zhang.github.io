---
layout: archive
title: "Heartbeat Key Generation Demonstration"
permalink: /demo-keygen-heartbeat-ppg/
author_profile: true
---

You may have used fingerprint authentication or face recognition with your smartphone. But do you know that you can use your heartbeat signals to encrypt your wireless communications?

In this demonstration, we will present a heartbeat-based key generation technique developed at Advanced Networks Research Group, University of Liverpool. 

{% include toc %}

# Overview
This demonstration uses PPG sensors to collect heartbeat signals and extract cryptographic keys from the collected signals. A full key generation protocol has been implemented by the Python. 

# Key Generation Protocol
<br />
<img align="center" width="700" src="{{ site.url }}/images/keygen/heartbeat_keygen_protocol_with_encryption.png" alt="...">
<br />

## Heartbeat Measurement
Any sensor that can measure heartbeat signals will work, e.g., ECG and PPG sensors. This demonstration uses PPG sensors as example. PPG sensors are very easy to use.
 
## IPI Extraction:
* Peak Detection: Detect the peaks of the heartbeat signals. Multiple level wavelet transform is used to denoise the heartbeat signals.
* IPI Alignment: Calculate the interpulse interval (IPI) between any adjacent peaks. Align the common IPIs between Alice and Bob.

## Key Establishment  
*  Quantization: IPI trend-based quantization
*  Information Reconciliation: [BCH-based](https://github.com/jkent/python-bchlib){:target="_blank"} secure sketch
*  Privacy amplification: hash function [SHA256](https://docs.python.org/3/library/hashlib.html){:target="_blank"}
*  Randomness test: [NIST randomness test suite](https://github.com/stevenang/randomness_testsuite){:target="_blank"}

# Setup

<br />
<img align="center" width="400" src="{{ site.url }}/images/keygen/heartbeat_keygen_setup_diagram.png" alt="...">
<br />

<br />
<img align="center" width="500" src="{{ site.url }}/images/keygen/heartbeat_keygen_setup_photo.png" alt="...">
<br />

Please refer to [this link](https://github.com/WorldFamousElectronics/Raspberry_Pi/blob/master/PulseSensor_Arduino_Pi/PulseSensor_Arduino_Pi.md){:target="_blank"} for the hardware and software setup.

## Hardware
* [Pulse Sensor](https://www.adafruit.com/product/1093){:target="_blank"}x2
* Arduino board for AD conversion x2
* Raspberry Pi with touchscreen x2


## Software
* [Arduino](https://github.com/WorldFamousElectronics){:target="_blank"}
* GUI and signal processing: Python

# Demo Video
Click the image below to watch the video.
<a href="https://youtu.be/ENHphVejPpA" target="_blank"><img src="{{ site.url }}/images/keygen/heartbeat_keygen_demo_frontpage.png" alt="Hearbeat Key Generation Demo" width="800" border="10" /></a>

# Acknowledgement
We would like to thank Mr Yushi Zheng for his hard work on completing this excellent demo. 