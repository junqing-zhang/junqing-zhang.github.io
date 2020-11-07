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

## MAC Layer
* Direct Transmission
* Indirect Transmission (Polling)

# ZigBee
## Network Architecture and Topology
* Star Topology
* Tree Topology
* Mesh Topology

# Tutorial
Check the first chapter of [IEEE 802.15.4 Stack User Guide](https://www.nxp.com/docs/en/user-guide/JN-UG-3024.pdf){:target="_blank"} for a brief introduction of IEEE 802.15.4.

