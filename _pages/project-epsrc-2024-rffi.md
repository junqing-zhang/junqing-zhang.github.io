---
layout: archive
title: "Securing Spectrum Connectivity: Over-the-Air Authentication Using Radio Frequency Fingerprinting"
permalink: /project-epsrc-2024-rffi/
author_profile: true
---
{% include toc %} 

# Overview
* Funder: EPSRC
* Duration: July 2024 to March 2025
* Amount: £331k (Total). Liverpool share: £128k
* Partner: Heriot Watt University and Queen’s University Belfast

This project was awarded under [EPSRC Federated Telecoms Hub 6G Research Partnership Funds (THRPF)](https://www.federated-telecoms-hubs.org/), as a collaborative project with [HASC: Future
Communications Hub in All-Spectrum Connectivity](https://allspectrumhub.org/). 

# Introduction
Wireless communications have brought revolutionary transformation to our everyday lives, industry, etc, achieved by ubiquitous connectivity of massive wireless devices (21.7 billion in 2024) and exciting applications, e.g., smart homes, connected healthcare, autonomous driving, etc. The wireless infrastructure is traditionally protected by cryptography, which, however, faces difficulties to be applied to devices where cost and accessibility are limiting factors.

Radio frequency fingerprinting identification (RFFI) is an emerging non-cryptographic and physical-layer security technique to secure existing and future telecommunication infrastructure. It exploits unique and intrinsic hardware fingerprints of RF components for device identification, which does not rely on cryptography. Its implementation does not require any change to the transmitters and can be readily applied to existing and future radio communication systems. 

# Demo
<br />
<br/><img src='/images/rffi/RFFI_WiFI_demo_setup.png'>
<br />

## Hardware
* Device Under Test (DUT), a laptop with a Wi-Fi dongle
* Access Point (AP): a TP-Link Wi-Fi router
* Monitor: Laptop + USRP N210

## Software
* DUT (dongle): running ping
* AP: running in a normal AP mode
* Monitor: The laptop running [PicoScenes](https://ps.zpj.io/){:target="_blank"}  to access WiFi signals. Deep learning is powered by Pytorch.

## Demo video
To be updated soon.

# Outcome
1. Guolin Yin, **Junqing Zhang**, Yuan Ding, and Simon Cotton, “Noise-Robust Radio Frequency Fingerprint Identification Using Denoise Diffusion Model”, in _Proc. IEEE WCNC Workshop_, 2025. [arXiv link](https://arxiv.org/abs/2503.05514){:target="_blank"}. This paper won the Best Workshop Paper Award from IEEE WCNC 2025 [link](https://wcnc2025.ieee-wcnc.org/program-0/program-glance/best-paper-awards){:target="_blank"}. 
1. Jie Ma, **Junqing Zhang**, Guanxiong, Shen, Linning Peng and Alan Marshall, “Towards Channel-Robust Radio Frequency Fingerprint Identification Using Contrastive Learning”, in _Proc. IEEE WCNC_, 2025.
1. Ningze Yuan, **Junqing Zhang**, Yuan Ding, and Simon Cotton, “Robust Radio Frequency Fingerprint Identification for Bluetooth Low Energy Under Low SNR and Channel Variations”, in _Proc. IEEE WCNC_, 2025.
1. To Truong An, Simon L. Cotton, **Junqing Zhang**, Yuan Ding and Trung Q. Duong, “LoRa Radio Frequency Fingerprinting Using a Hybrid Quantum-Classical Neural Network”, in _Proc. IEEE VTC Fall_, 2024.