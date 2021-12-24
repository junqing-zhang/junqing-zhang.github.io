---
title: "WiFi Key Generation Demonstration Using WARP @ University of Liverpool"
date: 2020-10-22
permalink: /demo-keygen-warp/
author_profile: true
categories:
  - Research
  - Key Generation
tags:
  - Key Generation
  - Application
---


A WiFi-based key generation demonstration has been developed using WARP boards. A full key generation protocol has been implemented by the Python. 

{% include toc %}

# Overview
Our wireless communications are protected by the symmetric encryption, e.g., WiFi is secured by WPA2, which implements AES. However, the secure and efficient provision of keys for the symmetric encryption is very challenging for Internet of Things (IoT). We have been working on key generation from wireless channels and demonstrated this technique is very suitable for IoT.


# Key Generation Protocol
<br />
<img align="center" width="600" src="{{ site.url }}/images/keygen/keygen_protocol.png" alt="...">
<br />

* Channel Probing:
  * using the Data packet and its corresponding ACK packet to serve as the bidirectional probing packets, implemented based on 802.11 Reference Design: Experiments Framework  . The sampling delay between the Data and ACK is in the order of 10 us therefore a high correlated channel measurements can be obtained.
  * Packet Match: Because the demo is carried out in the office environment, there are many transmissions in the air from other wifi access points. The MAC address is used to filter out the useful packets.
*  Quantization: Mean and standard deviation-based quantization
*  Information Reconciliation: [BCH-based](https://github.com/jkent/python-bchlib){:target="_blank"} secure sketch
*  Privacy amplification: hash function [SHA256](https://docs.python.org/3/library/hashlib.html){:target="_blank"}
*  Randomness test: [NIST randomness test suite](https://github.com/stevenang/randomness_testsuite){:target="_blank"}

# Setup

<br />
<img align="center" width="600" src="{{ site.url }}/images/keygen/setup.jpg" alt="...">
<br />

## Hardware
* [WARP v3](http://warpproject.org/trac/wiki/GettingStarted/WARPv3). The WARP hardware setup can be found in this [link](http://warpproject.org/trac/wiki/802.11/wlan_exp/GettingStarted){:target="_blank"}.
* PC
* 1Gb Ethernet switch

## Software
* [802.11 Reference Design: Experiments Framework](http://warpproject.org/trac/wiki/802.11/wlan_exp){:target="_blank"}
* GUI and signal processing: Python

# Demo Video
<a href="http://www.youtube.com/watch?feature=player_embedded&v=QXeVH1ViXXw&" target="_blank"><img src="{{ site.url }}/images/keygen/keygendemo_screenshot.png" alt="Key Generation Demo" width="800" border="10" /></a>

# Acknowledgement
We would like to thank [Mango Communications](http://mangocomm.com/){:target="_blank"} for their technical support on WARP and  Mr Yan Wang for his hard work on completing this excellent demo. 


[comment]: <a href="http://www.youtube.com/watch?feature=player_embedded&v=zcCXj5M2x0k&" target="_blank"><img src="{{ site.url }}/images/keygen/keygendemo_screenshot.png" alt="Key Generation Demo" width="1000" border="10" /></a>

[comment]: <><iframe width="560" height="315" src="http://www.youtube.com/embed/zcCXj5M2x0k" frameborder="0"> </iframe>