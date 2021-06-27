---
layout: archive
title: "Classifying Wireless Siblings of the LoRa Family, Radio Frequency Fingerprint Identification using Deep Learning"
permalink: /project-rffi-lora/
author_profile: true
---
{% include toc %} 

# Overview
* Funder: Royal Society Research Grants
* Duaration: March 2019 to March 2020
* Amount: £19k

# Introduction
Low power wide area network (LPWAN) is a key enabler of the Internet of Things (IoT) to connect sensors cheaply and reliably for smart manufacturing, agriculture, healthcare, etc. McKinsey estimated that LPWAN would deliver £19.2b to £57.6b for the UK by 2025. LoRa is a key technology for the LPWAN with 0.6 billion devices estimated by 2023. The UK is ambitious to build a national LoRa network. 

The wireless security is vital because the exchanged data may be confidential. In particular, device authentication is very essential for allowing the legitimate users to access the network but more important for rejecting the malicious attackers. Conventional schemes use device address such as MAC address which can be easily tampered even by amateurs. This is even worse for LoRa because many LoRa sensors are low cost with limited resources. On the other hand, a LoRa gateway (base station) can connect thousands of end devices and access of malicious users may compromise the entire LoRa network.

This project aims to design a robust device authentication scheme by exploiting the radio frequency fingerprinting (RFF). RFF is intrinsic hardware imperfection resulted from the manufacturing process, which is unique and cannot be tampered. Therefore, it is a good candidate for device identity.

# Methodology
RFF identification is consisted of two stages, namely the training and classification.
 
<figure>
  <img src="{{site.url}}/images/rffi/rffi_lora.png" alt="RFFI for LoRa">
  <figcaption>RFF identification for LoRa </figcaption>
</figure>


# Outcome
1. Guanxiong Shen, **Junqing Zhang**<sup>*</sup>, Alan Marshall, Linning Peng, and Xianbin Wang, “Radio Frequency Fingerprint Identification for LoRa Using Deep Learning,” _IEEE Journal on Selected Areas in Communications_, 2021, accepted. [link](https://ieeexplore.ieee.org/document/9448147){:target="_blank"}
1. Guanxiong Shen, **Junqing Zhang**<sup>*</sup>, Alan Marshall, Linning Peng, and Xianbin Wang, “Radio Frequency Fingerprint Identification for LoRa Using Spectrogram and CNN,” in _Proc. IEEE INFOCOM_, 2021, accepted. [link](https://arxiv.org/abs/2101.01668){:target="_blank"}
