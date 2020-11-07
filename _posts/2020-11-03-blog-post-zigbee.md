---
title: 'Resources for ZigBee and IEEE 802.15.4'
date: 2020-11-03
permalink: /posts/2020/11/blog-post-zigbee/
categories:
  - Resources
  - Wireless  
tags:  
  - ZigBee
  - IEEE 802.15.4
---

This page summarizes resources for ZigBee and IEEE 802.15.4. It is still under active update.

{% include toc %}

# Overview
IEEE 802.15.4 defines the physical and MAC layers. ZigBee is based on IEEE 802.15.4 but also defines higher layer protocols.

IEEE 802.15.4 is also adopted by 6LoWPAN, WirelessHART, THREAD, etc.

# IEEE 802.15.4

## Physical Layer
Frequency Band
* 868 MHz, Europe, channel 0
* 915 MHz, America, Australia, channel 1 - 10
* 2.4 GHz, Worldwide, channel $k$ = 11 - 26, $f_c = 2405 + 5*(k-11)$ MHz, O-QPSK

### O-QPSK Physical Layer
<br />
<img align="center" width="1000" src="{{ site.url }}/images/bluetooth/lrwpanOQPSK.png" alt="...">
<br />
Figure from [https://uk.mathworks.com/help/comm/ug/end-to-end-ieee-802-15-4-phy-simulation.html](https://uk.mathworks.com/help/comm/ug/end-to-end-ieee-802-15-4-phy-simulation.html){:target="_blank"}.

Please refer to [Section 1.1.1.2 O-QPSK PHY of the Rohde & Schwarz Application Note](https://scdn.rohde-schwarz.com/ur/pws/dl_downloads/dl_application/application_notes/1gp105/1GP105_1E_Generation_of_IEEE_802154_Signals.pdf){:target="_blank"} for a detailed introduction.

Run the [Matlab End-to-End IEEE 802.15.4 PHY Simulation](https://uk.mathworks.com/help/comm/ug/end-to-end-ieee-802-15-4-phy-simulation.html){:target="_blank"} to have a deep understanding on the modulation. 

## MAC Layer
* Direct Transmission
* Indirect Transmission (Polling)

### MAC Type
* Data Frame
* Beacon Frame
* Acknowledgement Frame
* MAC Command Frame

# ZigBee
## Network Architecture and Topology
* Star Topology
* Tree Topology
* Mesh Topology

# Tutorial
Check the first chapter of [IEEE 802.15.4 Stack User Guide](https://www.nxp.com/docs/en/user-guide/JN-UG-3024.pdf){:target="_blank"} for a brief introduction of IEEE 802.15.4.

