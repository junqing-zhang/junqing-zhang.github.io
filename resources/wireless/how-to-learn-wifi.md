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

<figure>
  <img src="/resources/wireless/images/xxHTMIMOPERDiagram.png" alt="Wi-Fi system"/>
  <figcaption>Wi-Fi system. Source:  [Matlab](https://uk.mathworks.com/help/wlan/ug/802-11n-packet-error-rate-simulation-for-2x2-tgn-channel.html){:target="_blank"}
</figure>

# 1 Understand the Physical Layer
## OFDM
* Read Chapter 2 of Book: [Next Generation Wireless LANs 802.11n and 802.11ac](https://www.cambridge.org/core/books/next-generation-wireless-lans/1C3DF09331104E23D48599AE1D6373D4){:target="_blank"} 

## 802.11a/g 
* Read Chapter 4 of Book: [Next Generation Wireless LANs 802.11n and 802.11ac](https://www.cambridge.org/core/books/next-generation-wireless-lans/1C3DF09331104E23D48599AE1D6373D4){:target="_blank"} (Focus on Section 4.1 in the beginning). Understand the preamble design (short training symbols and long training symbols).

## Channel
* Read Chapters 1-3 of [MIMO-OFDM Wireless Communications with MATLAB](https://onlinelibrary.wiley.com/doi/book/10.1002/9780470825631){:target="_blank"}. Understand what is multipath channel. Focus on small-scale fading in the beginning.
* Matlab has modeled the fading channels, which can be found [here](https://www.mathworks.com/help/comm/ug/fading-channels.html){:target="_blank"}
* [Propagation Channel Models for WiFi/IEEE 802.11](https://www.mathworks.com/help/wlan/propagation-channel-models.html){:target="_blank"}

## Receiver Design
* Check this paper [Performance Assessment of IEEE 802.11p with an Open Source SDR-Based Prototype ](https://ieeexplore.ieee.org/document/8031977){:target="_blank"} for the receiver design, including time synchronization, frequency offest estimation, channel estimation, etc.


# 2 Matlab Simulation
* Run [802.11n Packet Error Rate Simulation for 2x2 TGn Channel
](https://uk.mathworks.com/help/wlan/ug/802-11n-packet-error-rate-simulation-for-2x2-tgn-channel.html) to understand physical layer algorithms. Setting the  number of transmit antennas to 1 in the example.
* [Model 802.11a/b/g/j/p-related signal reception functionality](https://uk.mathworks.com/help/wlan/802-11a-b-g-j-p-reception.html): Understand each receiver algorithm

# 3 Experimental Practice
* ESP32


Return to the Main Page of [Wireless Communication Technologies](/resources/wireless/).