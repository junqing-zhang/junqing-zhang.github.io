---
title: "WiFi Key Generation Demonstration Using Raspberry Pi @ University of Liverpool"
date: 2021-12-24
permalink: /demo-keygen-rpi/
author_profile: true
categories:
  - Research
  - Key Generation
tags:
  - Key Generation
  - Application
---


A WiFi-based key generation demonstration has been developed using Raspberry Pi boards. A full key generation protocol has been implemented by the Python. 

{% include toc %}

# Overview
Our wireless communications are protected by the symmetric encryption, e.g., WiFi is secured by WPA2, which implements AES. However, the secure and efficient provision of keys for the symmetric encryption is very challenging for Internet of Things (IoT). We have been working on key generation from wireless channels and demonstrated this technique is very suitable for IoT.


# Key Generation Protocol
<br />
<img align="center" width="600" src="{{ site.url }}/images/keygen/keygen_protocol.png" alt="...">
<br />

* Channel Probing:
  * Completed by probe request and probe response.
  * Packet Match: Because the demo is carried out in the office environment, there are many transmissions in the air from other wifi access points. The MAC address is used to filter out the useful packets.
*  Quantization: Mean and standard deviation-based quantization
*  Information Reconciliation: [BCH-based](https://github.com/jkent/python-bchlib){:target="_blank"} secure sketch
*  Privacy amplification: hash function [SHA256](https://docs.python.org/3/library/hashlib.html){:target="_blank"}
*  Randomness test: [NIST randomness test suite](https://github.com/stevenang/randomness_testsuite){:target="_blank"}

# Setup

<br />
<img align="center" width="600" src="{{ site.url }}/images/keygen/keygen_rpi_setup_photo.png" alt="...">
<br />

## Hardware
* Raspberry Pi 4 Model B + Touchscreen * 2
* ALFA Network AWUS036NHA *2 

## Software
Python is used for the implementation
* scapy: WiFi 
* GUI design: Tkinter and matplotlib

# Demo Video
<a href="http://www.youtube.com/watch?feature=player_embedded&v=37JyT22elm8&" target="_blank"><img src="{{ site.url }}/images/keygen/keygen_rpi_demo_screenshot.png" alt="Key Generation Demo" width="800" border="10" /></a>

# Acknowledgement
We would like to thank Miss Jingyu Hu for her hard work on completing this excellent demo as part of her final year project.