---
layout: page
show_last_updated: true
research_section: rffi
title: "RFFI Recommended Reading List"
description: "Recommended papers, surveys, and learning resources on Radio-Frequency Fingerprint Identification."
permalink: /research/rffi/rffi-recommended-reading/
date: 2023-11-06
toc: true
categories:
  - Research
  - RFFI
tags:
  - RFFI
---

{% include research-nav.html section="rffi" %}

{% include toc %}

## Survey and Tutorial Papers from Our Group
<div class="section-card pub-list">

{% bibliography --query @article[keywords~=rffi && keywords~=survey] %}

</div>

## Technical Papers from Our Group
## LoRa RFFI
1. Guanxiong Shen, **Junqing Zhang**, Xuyu Wang, and Shiwen Mao, “Federated Radio Frequency Fingerprint Identification Powered by Unsupervised Contrastive Learning,” _IEEE Transactions on Information Forensics and Security_, vol. 19, pp. 9204-9215, 2024. [IEEE Xplore](https://ieeexplore.ieee.org/document/10697226){:target="_blank"}
1. Guanxiong Shen, **Junqing Zhang**<sup>*</sup>, Alan Marshall, Roger Woods, Joseph Cavallaro, and Liquan Chen, “Towards Receiver-Agnostic and Collaborative Radio Frequency Fingerprint Identification”, _IEEE Transactions on Mobile Computing_, [arXiv link](https://arxiv.org/abs/2207.02999){:target="_blank"}
1. Guanxiong Shen, **Junqing Zhang**<sup>*</sup>, Alan Marshall, Mikko Valkama, and Joseph Cavallaro, “Towards Length-Versatile and Noise-Robust Radio Frequency Fingerprint Identification,” _IEEE Transactions on Information Forensics and Security_, vol. 18, pp. 2355 - 2367, Apr. 2023. [IEEE](https://ieeexplore.ieee.org/document/10100932){:target="_blank"}, [arXiv link](https://arxiv.org/abs/2207.03001){:target="_blank"}
1. Guanxiong Shen, **Junqing Zhang**<sup>*</sup>, Alan Marshall, and Joseph Cavallaro, “Towards Scalable and Channel-Robust Radio Frequency Fingerprint Identification for LoRa,” _IEEE Transactions on Information Forensics and Security_, vol. 17, pp. 774 - 787, Feb. 2022. [IEEE](https://ieeexplore.ieee.org/abstract/document/9715147){:target="_blank"}, [arXiv](https://arxiv.org/abs/2107.02867){:target="_blank"}, [Dataset](https://ieee-dataport.org/open-access/lorarffidataset){:target="_blank"}, [code at github](https://github.com/gxhen/LoRa_RFFI){:target="_blank"}
1. Guanxiong Shen, **Junqing Zhang**<sup>*</sup>, Alan Marshall, Linning Peng, and Xianbin Wang, “Radio Frequency Fingerprint Identification for LoRa Using Deep Learning,” _IEEE Journal on Selected Areas in Communications_, vol. 39, no. 8, pp. 2604 - 2616, Aug. 2021. [IEEE Xplore](https://ieeexplore.ieee.org/document/9448147){:target="_blank"}

Some of the above works have made their datasets and source code available. Please visit our [datasets and code page](/research/dataset-code/) for more information.

{% bibliography --query @*[key=shen2022scalable || key=shen2023length || key=shen2023towards || key=shen2024federated || key=shen2021radioj] %}

## Modelling
{% bibliography --query @*[key=zhang2021radio] %}

## Tutorial Papers from Other Groups
1. Shamnaz Riyaz, Kunal Sankhe, Stratis Ioannidis, and Kaushik Chowdhury, “Deep Learning Convolutional Neural Networks for Radio Identification,” _IEEE Communications Magazine_, 2018


