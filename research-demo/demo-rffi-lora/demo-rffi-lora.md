---
layout: page
title: "RFFI LoRa @ University of Liverpool"
date: 2026-02-26
permalink: /research-demo/demo-rffi-lora/
categories:
  - Research
  - RFFI
tags:
  - RFFI
  - Application
---


A Radio Frequency Fingerprint Identification (RFFI) LoRa demonstration has been developed at University of Liverpool, UK. 

{% include toc %}

## Overview

The following figure shows the setup.
<br />
<br /><img src='./rffi_lora_demo_setup.png' width="800" title="RFFI LoRa Demo Setup" alt="RFFI LoRa Demo Setup" height="315">
<br />



## Hardware
* LoRa Device Under Test (DUT): 4* mbed1261 + 5* mbed1272 
* Receiver: Laptop + USRP N210
<br />
<br /><img src='./rffi_lora_hardware.png' width="800" title="RFFI RFFI Demo Testbed" alt="RFFI LoRa Demo Testbed" height="315">
<br />
RFFI LoRa Demo Testbed


## Software
* LoRa Device: C language. Check https://os.mbed.com/components/SX1272MB2xAS/
* USRP N210 for Data collection: MATLAB 
* Deep learning: Pytorch.
<br />
<br />  <img src="./rffi_lora_ui.png" alt="RFFI LoRa Demo GUI" title="RFFI LoRa Demo GUI" width="800" height="392" />
<br />

Return to the Main Page of [Radio Frequency Fingerprint Identification](/research/rffi/) or the Main Page of [Research Demonstration](/research-demo/research-demo-main-page/).
