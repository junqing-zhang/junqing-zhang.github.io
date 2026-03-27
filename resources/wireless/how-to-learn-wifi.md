---
title: 'How To Learn Wi-Fi'
date: 2026-03-27
permalink: /resources/wireless/how-to-learn-wifi/
categories:
  - Resources
  - Wireless  
  - Internet of Things
tags:
  - Wi-Fi
---

Learning Wi-Fi can be quite complicated for beginners. Start with legacy Wi-Fi, i.e., 20 MHz OFDM with SISO.

# 1 Understand the Physical Layer
## OFDM

* Read Chapter 2 of Book: [Next Generation Wireless LANs 802.11n and 802.11ac](https://www.cambridge.org/core/books/next-generation-wireless-lans/1C3DF09331104E23D48599AE1D6373D4){:target="_blank"} 

## 802.11a/g 

* Read Chapter 4 of Book: [Next Generation Wireless LANs 802.11n and 802.11ac](https://www.cambridge.org/core/books/next-generation-wireless-lans/1C3DF09331104E23D48599AE1D6373D4){:target="_blank"} (Focus on Section 4.1 in the beginning.)

## Receiver Design

* Check this paper [Performance Assessment of IEEE 802.11p with an Open Source SDR-Based Prototype ](https://ieeexplore.ieee.org/document/8031977){:target="_blank"} for the receiver design, including time synchronization, frequency offest estimation, channel estimation, etc.


# Matlab Simulation
* Run [802.11n Packet Error Rate Simulation for 2x2 TGn Channel
](https://uk.mathworks.com/help/wlan/ug/802-11n-packet-error-rate-simulation-for-2x2-tgn-channel.html) to understand physical layer algorithms. Setting the  number of transmit antennas to 1 in the example.

# Experimental Practice
* ESP32


Return to the Main Page of [Wireless Communication Technologies](/resources/wireless/).