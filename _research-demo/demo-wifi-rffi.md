---
title: "WiFi RFFI @ University of Liverpool"
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


A WiFi Radio Frequency Fingerprint Identification (RFFI) demonstration has been developed at University of Liverpool, UK. 

{% include toc %}

# Overview

The following figure shows the setup.
<br />
<br /><img src='/images/rffi/RFFI_WiFI_demo_setup.png' width="800" title="Setup" alt="Setup">
<br />



# Hardware
* Device Under Test (DUT), a laptop with a Wi-Fi dongle
* Access Point (AP): a TP-Link Wi-Fi router
* Monitor: Laptop + USRP N210
<br />
<br /><img src='/images/rffi/wifi_rffi_hardware.png' width="800" title="WiFi RFFI Demo Testbed" alt="WiFi RFFI Demo Testbed">
<br />
WiFi RFFI Demo Testbed


# Software
* DUT (dongle): running ping
* AP: running in a normal AP mode
* Monitor: The laptop running [PicoScenes](https://ps.zpj.io/){:target="_blank"}  to access WiFi signals. Deep learning is powered by Pytorch.
<br />
<br />  <img src="{{site.url}}/images/rffi/wifi_rffi_ui.png" alt="WiFi RFFI Demo GUI" title="WiFi RFFI Demo GUI" width="800"/>
<br />

# Video
Click the image below to watch the video.
<a href="https://youtu.be/jQuvRcBXh8I" target="_blank"><img src="{{ site.url }}/images/rffi/wifi_rffi_demo_frontpage.png" alt="WiFI RFFI Demo" width="800" border="10" /></a>

# Acknowledgement
This project was awarded under [EPSRC Federated Telecoms Hub 6G Research Partnership Funds (THRPF)](https://www.federated-telecoms-hubs.org/), as a collaborative project with [HASC: Future
Communications Hub in All-Spectrum Connectivity](https://allspectrumhub.org/). 