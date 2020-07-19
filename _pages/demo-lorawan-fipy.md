---
layout: archive
title: "LoRaWAN Demonstration"
permalink: /demo-lorawan-fipy/
author_profile: true
---

A LoRaWAN-based Internet of Things (IoT) demonstration is created at the Advanced Networks Research Group (ANRG), University of Liverpool. 

{% include toc %}

# Overview
LoRa/LoRoWAN is one of the most dominant low power wide area networks (LPWAN) techniques. LoRa defines the physical layer modulation and is a proprietary technique patented by Semtech. LoRaWAN is the upper layer protocol maintained by [LoRa Alliance](https://lora-alliance.org/).

A light sensing and control IoT system is created as a case study. The LoRa end device is consisted of FiPy (with LoRa function) and Pysense (expansion board) with light sensors. A LoRa end device A will sense the light and transmit it to the application server. When the luminous intensity is smaller than a threshold, it will send a control signal to the LoRa end device B and turn its LED to green, emulating a control signal to a switch.

# Key Features
* Regular uplink transmissions
* Manual downlink transmissions (confirmed or unconfirmed)
* Automatic downlink transmissions (determined by the threshold)

# Setup
  
<br />
<img align="center" width="1000" src="{{ site.url }}/images/lorawan/LoRaWAN-setup.jpg" alt="...">
<br />

## Hardware
* End device: FiPy + Pysense (light sensors embedded)
* Gateway: Raspberry Pi + RAK831, an instruction can be found at https://www.thethingsnetwork.org/docs/gateways/rak831/

## Software
* TTN to host the gateway and applications
* Python SDK
* Micropython for the FiPy

# Demo Video
<a href="http://www.youtube.com/watch?feature=player_embedded&v=DrxtVFzTsQk&" target="_blank"><img src="{{ site.url }}/images/lorawan/gui_lorawan.png" alt="LoRaWAN Demo" width="1000" border="10" /></a>


# Acknowledgement
We would like to thank Mr Wenpeng Fan for his hard work on completing this excellent demo. 
 
