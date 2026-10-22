---
layout: page
show_last_updated: true
research_section: rffi
title: "Radio-Frequency Fingerprint Identification Dataset"
description: "Public datasets and experimental resources for research on Radio-Frequency Fingerprint Identification."
show_last_updated: true
permalink: /research/rffi/rffi-dataset/
categories:
  - Research
  - RFFI
tags:
  - RFFI
  - Dataset
---

{% include research-nav.html section="rffi" %}

This page lists publicly available datasets and source code for radio-frequency fingerprint identification research.

{% include toc title="On this page" %}

## LoRa Dataset 
### University of Liverpool
{% bibliography --file my-publications --query @article[keywords~=rffi && keywords~=data_code && keywords~=lora] %}


### Northeastern University and InterDigital
{% bibliography --query @*[key=alshawabka2021deeplora] %}

### Oregon State University
The NetSTAR lab Oregon State University at Oregon State University has made a few datasets available, including LoRa and Wi-Fi datasets.
[Dataset Download Link](https://research.engr.oregonstate.edu/hamdaoui/datasets){:target="_blank"}

## Wi-Fi Dataset
### Southeast University
{% bibliography --query @*[key=xie2024towards] %}

### Oregon State University
The NetSTAR lab Oregon State University at Oregon State University has made a few datasets available, including LoRa and Wi-Fi datasets.
[Dataset Download Link](https://research.engr.oregonstate.edu/hamdaoui/datasets){:target="_blank"}



## ZigBee
### Southeast University
{% bibliography --query @*[key=shi2023robust || key= shi2025snr] %}


## Drone Remote Controller RF Signal Dataset 
### North Carolina State University

* M. Ezuma, F. Erden, C. Kumar, O. Ozdemir, and I. Guvenc, "Micro-UAV detection and classification from RF fingerprints using machine learning techniques," in Proc. IEEE Aerosp. Conf., Big Sky, MT, Mar. 2019, pp. 1-13.
* M. Ezuma, F. Erden, C. K. Anjinappa, O. Ozdemir, and I. Guvenc, "Detection and classification of UAVs using RF fingerprints in the presence of Wi-Fi and Bluetooth interference," IEEE Open J. Commun. Soc., vol. 1, no. 1, pp. 60-79, Nov. 2019.
* E. Ozturk, F. Erden, and I. Guvenc, "RF-based low-SNR classification of UAVs using convolutional neural networks." arXiv preprint arXiv:2009.05519, Sept. 2020.
* [Dataset Download Link](https://ieee-dataport.org/open-access/drone-remote-controller-rf-signal-dataset){:target="_blank"}

