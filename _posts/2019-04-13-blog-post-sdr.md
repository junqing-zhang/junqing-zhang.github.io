---
title: 'Software Defined Radio'
date: 2019-04-13
permalink: /posts/2019/04/blog-post-sdr/
categories:
  - Resources
tags:
  - Resources
  - Software Defined Radio
---

This page summarizes information for software defined radio (SDR).

* Universal Software Radio Peripheral (USRP)
  * USRP Selection: [https://kb.ettus.com/Selecting_an_USRP_Device](https://kb.ettus.com/Selecting_an_USRP_Device)
  * RF Daughterboard Selection: Not all the USRP is equpped with the RF card, including N and X series. A selection guide is provided at [https://kb.ettus.com/Selecting_an_RF_Daughterboard](https://kb.ettus.com/Selecting_an_RF_Daughterboard)
* Wireless Open Access Research Platform (WARP)
  * link: [http://warpproject.org/trac](http://warpproject.org/trac)
  * Strictly speaking, WARP is not an SDR platform, because it uses a WiFi chipset MAX2829. It mainly has two reference designs, namely 802.11 reference design and WARPLab reference design. The driver has been developed for both designs and the users can simply focus on developing their applications and prototypes.
  * WARP 802.11 reference design is compatible with the commercial WiFi standard. The PHY and MAC codes are running at the FPGA. An experimental framework has been developed with two WARP boards connecting to a PC via a Ethernet switch. Python has been used. A more detailed introduction can be found at link
  * WARPLab reference design is very suitable for fast prototype of physical layer algorithm. Two or more WARP boards are connected to a PC via a Ethernet switch.  The signal is modulated at the Matlab, then transferred to WARP transmitter via Ethernet cable. The data is triggered for transmission through the real wireless channel. The WARP receiver captures the signal and transfer it to the PC/Matlab via Ethernet cable for further processing.
