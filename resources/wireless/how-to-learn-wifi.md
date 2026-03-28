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

Learning Wi-Fi can be quite complicated for beginners. Start with legacy Wi-Fi, i.e., 20 MHz OFDM with SISO, which is sufficient to understand the important Wi-Fi design. 

# 0. OFDM
Reading materials:
* Read Section 4.1, 4.2 of Book [MIMO-OFDM Wireless Communications with MATLAB](https://onlinelibrary.wiley.com/doi/book/10.1002/9780470825631){:target="_blank"}.
* Read Chapter 2 of Book [Next Generation Wireless LANs 802.11n and 802.11ac](https://www.cambridge.org/core/books/next-generation-wireless-lans/1C3DF09331104E23D48599AE1D6373D4){:target="_blank"} 

Key learning points:
* Understand time domain and frequency domain signals, how FFT and IFFT are used
* Understand CP

# 1. Understand Wi-Fi Physical Layer
<figure>
  <img src="/resources/wireless/images/xxHTMIMOPERDiagram.png" alt="Wi-Fi system"/>
  <figcaption>Wi-Fi system. Source: <a href="https://uk.mathworks.com/help/wlan/ug/802-11n-packet-error-rate-simulation-for-2x2-tgn-channel.html" title="Matlab">Matlab</a></figcaption>
</figure>

## Transmitter
Reading materials:
* Chapter 4 of Book: [Next Generation Wireless LANs 802.11n and 802.11ac](https://www.cambridge.org/core/books/next-generation-wireless-lans/1C3DF09331104E23D48599AE1D6373D4){:target="_blank"} (Focus on Section 4.1 in the beginning). 
* Chapter ***Orthogonal frequency division multiplexing (OFDM) PHY specification***
 of the IEEE 802.11 standard. Download it from [IEEE Xplore](https://ieeexplore.ieee.org/document/10979691){:target="_blank"}
 * [Non-HT PPDU Structure](https://uk.mathworks.com/help/wlan/gs/non-ht-ppdu-structure.html){:target="_blank"}

Key learning points:
* Understand the preamble design (short training symbols and long training symbols).

## Channel
Reading materials:
* Chapters 1-3 of [MIMO-OFDM Wireless Communications with MATLAB](https://onlinelibrary.wiley.com/doi/book/10.1002/9780470825631){:target="_blank"}. Understand what is multipath channel. Focus on small-scale fading in the beginning.
* Matlab has modeled the fading channels, which can be found [here](https://www.mathworks.com/help/comm/ug/fading-channels.html){:target="_blank"}
* [Propagation Channel Models for WiFi/IEEE 802.11](https://www.mathworks.com/help/wlan/propagation-channel-models.html){:target="_blank"}

Key learning points:
* Small-scale fading


## Receiver 
Reading materials:
* Paper [Performance Assessment of IEEE 802.11p with an Open Source SDR-Based Prototype ](https://ieeexplore.ieee.org/document/8031977){:target="_blank"}, which explains receiver algorithms design, including time synchronization, frequency offest estimation, channel estimation, etc.

Key learning points:
* Packet detection: How to use short training symbol for coarse time synchronization (autocorrelation)
* Symbol alignment: How to use long training symbol for fine time synchronization (cross correlation)
* Carrier frequency offset estimation and correction (autocorrelation)
* Channel estimation using long training symbols


# 2. Matlab Simulation
* Run [802.11n Packet Error Rate Simulation for 2x2 TGn Channel
](https://uk.mathworks.com/help/wlan/ug/802-11n-packet-error-rate-simulation-for-2x2-tgn-channel.html){:target="_blank"} to understand physical layer algorithms. Setting the  number of transmit antennas to 1 in the example.
* [Model 802.11a/b/g/j/p-related signal reception functionality](https://uk.mathworks.com/help/wlan/802-11a-b-g-j-p-reception.html){:target="_blank"}: Understand each receiver algorithm

# 3. Experimental Practice
* Software-defined radio (SDR): if you have SDR platforms (USRP or PlutoSDR), check [Matlab WLAN SDR examples](https://uk.mathworks.com/help/wlan/software-defined-radio.html){:target="_blank"}
* ESP32: try [ESP32 CSI Toolkit](https://stevenmhernandez.github.io/ESP32-CSI-Tool/){:target="_blank"} to get CSI


Return to the Main Page of [Wireless Communication Technologies](/resources/wireless/).