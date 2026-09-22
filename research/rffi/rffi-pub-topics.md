---
layout: page
research_section: rffi
title: "Publication (By Topics) - RFFI @ University of Liverpool"
description: "Publications by topic from the University of Liverpool on Radio-Frequency Fingerprint Identification."
permalink: /research/rffi/rffi-pub-topics/
date: 2025-11-01
toc: true
categories:
  - Research
  - RFFI
tags:
  - RFFI
---

{% include research-nav.html section="rffi" %}

{% include toc %}

<input type="text" class="pub-search" id="pubSearch" placeholder="Filter by title, author, or year...">


## Survey/Tutorial
<div class="section-card pub-list">

{% bibliography --query @article[keywords~=rffi && keywords~=survey] %}

</div>


## Wi-Fi RFFI
<div class="section-card pub-list">

<h3>Refereed Jounal Articles</h3>
{% bibliography --query @article[keywords~=rffi && keywords~=wifi] %}

<h3>Refereed Conference Proceedings</h3>

{% bibliography --query @inproceedings[keywords~=rffi && keywords~=wifi] %}


</div>


## LoRa RFFI
<div class="section-card pub-list">

<h3>Refereed Jounal Articles</h3>
{% bibliography --query @article[keywords~=rffi && keywords~=lora] %}

<h3>Refereed Conference Proceedings</h3>

{% bibliography --query @inproceedings[keywords~=rffi && keywords~=lora] %}


</div>



## BLE RFFI
<div class="section-card pub-list">

<h3>Refereed Jounal Articles</h3>
{% bibliography --query @article[keywords~=rffi && keywords~=ble] %}

<h3>Refereed Conference Proceedings</h3>

{% bibliography --query @inproceedings[keywords~=rffi && keywords~=ble] %}



</div>


## ZigBee RFFI
<div class="section-card pub-list">

<h3>Refereed Jounal Articles</h3>
{% bibliography --query @article[keywords~=rffi && keywords~=zigbee] %}

<h3>Refereed Conference Proceedings</h3>

{% bibliography --query @inproceedings[keywords~=rffi && keywords~=zigbee] %}

</div>


## LTE RFFI
<div class="section-card pub-list">

<h3>Refereed Jounal Articles</h3>
{% bibliography --query @article[keywords~=rffi && keywords~=lte] %}

<h3>Refereed Conference Proceedings</h3>

{% bibliography --query @inproceedings[keywords~=rffi && keywords~=lte] %}


</div>


## Power Amplifier
**Journal**
1. Yuepei Li, Symon K. Podilchak, **Junqing Zhang**, Simon L. Cotton, Tharmalingam Ratnarajah, and Yuan Ding, “RFFI Protocols Using Antenna Mutual Coupling and Power Amplifier Nonlinear Memory Effects,” _IEEE Communications Letters_, vol. 29, no. 6, pp. 1250 - 1254, Jun. 2025. [IEEE](https://ieeexplore.ieee.org/document/10955860){:target="_blank"}
1. Yuepei Li, Kai Xu, **Junqing Zhang**, Chongyan Gu, Yuan Ding, George Goussetis, and Symon K. Podilchak, “PUF-Assisted Radio Frequency Fingerprinting Exploiting Power Amplifier Active Load-pulling”, _IEEE Transactions on Information Forensics and Security_, vol. 19, pp. 5015 - 5029, 2024. [IEEE Xplore](https://ieeexplore.ieee.org/document/10500472){:target="_blank"}
1. Yuepei Li, Yuan Ding, Junqing Zhang, George Goussetis, and Symon K. Podilchak, “Radio Frequency Fingerprinting Exploiting Non-Linear Memory Effect,” _IEEE Transactions on Cognitive Communications and Networking_, vol. 8, no. 4, pp. 1618 - 1631, Dec. 2022. [IEEE Xplore](https://ieeexplore.ieee.org/document/9913208/){:target="_blank"}

**Conference**
1. Yuepei Li, Yuan Ding, George Goussetis, and **Junqing Zhang**, “Power Amplifier enabled RF Fingerprint Identification,” in _Proc. IEEE Texas Symposium on Wireless and Microwave Circuits and Systems_, 2021.

## Attack
**Journal**
1. Jie Ma, **Junqing Zhang**, Guanxiong Shen, Alan Marshall, and Chip-Hong Chang “Adversarial Attacks Against Deep Learning-Based Radio Frequency Fingerprint Identification,” _IEEE Transactions on Mobile Computing_, vol. 25, no. 6, pp. 7831 - 7844, 2026. [IEEE](https://ieeexplore.ieee.org/document/11304531){:target="_blank"}, [arXiv link](https://arxiv.org/abs/2512.12002){:target="_blank"}.
1. Tianya Zhao, **Junqing Zhang**, Jun Dai, Xiaoyan Sun, and Xuyu Wang, “Unveiling the Threat: Data-Free Backdoor Attacks on PreTrained Models for RF Fingerprinting,” _IEEE Transactions on Mobile Computing_, vol. 25, no. 4, pp.  5421 - 5433, 2026.  [IEEE](https://ieeexplore.ieee.org/abstract/document/11224638){:target="_blank"}
1. Tianya Zhao, **Junqing Zhang**, Shiwen Mao, and Xuyu Wang, “Explanation-Guided Backdoor Attacks Against Model-Agnostic RF Fingerprinting Systems,” _IEEE Transactions on Mobile Computing_, vol. 24, no. 3, pp.  2029 - 2042, Mar. 2025. [IEEE](https://ieeexplore.ieee.org/document/10738467){:target="_blank"}

**Conference**
1. Tianya Zhao, Ningning Wang, **Junqing Zhang**, and Xuyu Wang, “Protocol-agnostic and Data-free Backdoor Attacks on Pre-trained Models in RF Fingerprinting”, in _Proc. IEEE INFOCOM_, 2025.
1. Tianya Zhao, Xuyu Wang, **Junqing Zhang**, and Shiwen Mao, “Explanation-Guided Backdoor Attacks on Model-Agnostic RF Fingerprinting,” in _Proc. IEEE INFOCOM_, 2024.
1. Jie Ma, **Junqing Zhang**, Guanxiong Shen, Alan Marshall, and Chip-Hong Chang, “White-Box Adversarial Attacks on Deep Learning-Based Radio Frequency Fingerprint Identification”, in _Proc. IEEE ICC_, 2023
1. Yuxuan Xu, Ming Liu, Linning Peng, **Junqing Zhang**, and Yawen Zheng, “Colluding RF Fingerprint Impersonation Attack Based on Generative Adversarial Network”, in _Proc. IEEE ICC_, 2022

## Modelling
{% bibliography --query @*[key=zhang2021radio] %}

## Others
**Journal Article**
{% bibliography --query @*[key=xing2020design] %}

**Conference Paper**
1. To Truong An, Simon L. Cotton, **Junqing Zhang**, Yuan Ding and Trung Q. Duong, “LoRa Radio Frequency Fingerprinting Using a Hybrid Quantum-Classical Neural Network”, in _Proc. IEEE VTC Fall_, 2024.
1. Chuanting Zhang, Shuping Dang, **Junqing Zhang**, Haixia Zhang, and Mark A. Beach, “Federated Radio Frequency Fingerprinting with Model Transfer and Adaptation”, in _Proc. IEEE INFOCOM Workshop_, 2023. [arXiv](https://arxiv.org/abs/2302.11418){:target="_blank"}
1. Hongyi Luo, Guyue Li, Yuexiu Xing, **Junqing Zhang**, Aiqun Hu, and Xianbin Wang, “RelativeRFF: Multi-Antenna Device Identification in Multipath Propagation Scenarios”, in _Proc. IEEE ICC_, 2023



