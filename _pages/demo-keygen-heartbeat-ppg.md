---
layout: archive
title: "Heartbeat Key Generation Demonstration Using PPG Sensors"
permalink: /demo-keygen-heartbeat-ppg/
author_profile: true
---


A heartbeat-based key generation demonstration has been developed at University of Liverpool. A full key generation protocol has been implemented by the Python. 

{% include toc %}

# Overview
A PPG-based key generation demo.


# Key Generation Protocol
<br />
<img align="center" width="500" src="{{ site.url }}/images/keygen/heartbeat_keygen_protocol.png" alt="...">
<br />

# Heartbeat Measurement

# IPI Extraction:
* Peak Detection
* IPI Alignment

# Key Establishment  
*  Quantization: IPI trend-based quantization
*  Information Reconciliation: [BCH-based](https://github.com/jkent/python-bchlib){:target="_blank"} secure sketch
*  Privacy amplification: hash function [SHA256](https://docs.python.org/3/library/hashlib.html){:target="_blank"}
*  Randomness test: [NIST randomness test suite](https://github.com/stevenang/randomness_testsuite){:target="_blank"}

# Setup

<br />
<img align="center" width="500" src="{{ site.url }}/images/keygen/heartbeat_keygen_setup_diagram.png" alt="...">
<br />

<br />
<img align="center" width="600" src="{{ site.url }}/images/keygen/heartbeat_keygen_setup_photo.png" alt="...">
<br />

Please refer to [this link](https://github.com/WorldFamousElectronics/Raspberry_Pi/blob/master/PulseSensor_Arduino_Pi/PulseSensor_Arduino_Pi.md){:target="_blank"} for the hardware and software setup.

## Hardware
* [Pulse Sensor](https://www.adafruit.com/product/1093){:target="_blank"}.
* Arduino board for AD conversion
* Raspberry Pi with touchscreen


## Software
* [Arduino](https://github.com/WorldFamousElectronics){:target="_blank"}
* GUI and signal processing: Python

# Demo Video
<a href="https://youtu.be/ENHphVejPpA" target="_blank"><img src="{{ site.url }}/images/keygen/heartbeat_keygen_demo_frontpage.png" alt="Hearbeat Key Generation Demo" width="600" border="10" /></a>

# Acknowledgement
We would like to thank Mr Yushi Zheng for his hard work on completing this excellent demo. 