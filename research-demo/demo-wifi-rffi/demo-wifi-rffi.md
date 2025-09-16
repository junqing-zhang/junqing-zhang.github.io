---
title: "Wi-Fi RFFI @ University of Liverpool"
date: 2025-04-11
permalink: /research-demo/demo-wifi-rffi/
author_profile: true
categories:
  - Research
  - RFFI
tags:
  - RFFI
  - Application
---


A Wi-Fi Radio Frequency Fingerprint Identification (RFFI) demonstration has been developed at University of Liverpool, UK. 

{% include toc %}

# Overview

The following figure shows the setup.
<br />
<br /><img src='./wifi_rffi_demo_setup.png' width="800" title="Setup" alt="Setup">
<br />



# Hardware
* Device Under Test (DUT), a laptop with a Wi-Fi dongle
* Access Point (AP): a TP-Link Wi-Fi router
* Monitor: Laptop + USRP N210
<br />
<br /><img src='./wifi_rffi_hardware.png' width="800" title="Wi-Fi RFFI Demo Testbed" alt="Wi-Fi RFFI Demo Testbed">
<br />
Wi-Fi RFFI Demo Testbed


# Software
* DUT (dongle): running ping
* AP: running in a normal AP mode
* Monitor: The laptop running [PicoScenes](https://ps.zpj.io/){:target="_blank"}  to access Wi-Fi signals. Deep learning is powered by Pytorch.
<br />
<br />  <img src="./wifi_rffi_ui.png" alt="Wi-Fi RFFI Demo GUI" title="Wi-Fi RFFI Demo GUI" width="800"/>
<br />

# Video
Click the image below to watch the video.
<a href="https://youtu.be/jQuvRcBXh8I" target="_blank"><img src="./wifi_rffi_demo_frontpage.png" alt="Wi-FI RFFI Demo" width="800" border="10" /></a>

# Acknowledgement
This project was awarded under [EPSRC Federated Telecoms Hub 6G Research Partnership Funds (THRPF)](https://www.federated-telecoms-hubs.org/), as a collaborative project with [HASC: Future
Communications Hub in All-Spectrum Connectivity](https://allspectrumhub.org/). 

Return to the Main Page of [Radio Frequency Fingerprint Identification](/research/rffi/rffi_main_page/) or the Main Page of [Research Demonstration](/research-demo/research-demo-main-page/).
