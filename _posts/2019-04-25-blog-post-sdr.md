---
title: 'Software Defined Radio'
date: 2019-04-25
permalink: /posts/2019/04/blog-post-sdr/
categories:
  - Resources
tags:
  - Resources
  - Software Defined Radio
---

This page summarizes information for software defined radio (SDR).

# SDR Comparison
* Comparisons among different SDR can be found at [link](https://www.crowdsupply.com/lime-micro/limesdr) and [link](https://www.rtl-sdr.com/about-rtl-sdr/)

Comparsion between different SDR. Source: https://www.crowdsupply.com/lime-micro/limesdr
| Item                     | HackRF One                 | Ettus B200          | Ettus B210          | BladeRF x40         | RTL-SDR      | LimeSDR                                  |
|--------------------------|----------------------------|---------------------|---------------------|---------------------|--------------|------------------------------------------|
| Frequency Range          | 1MHz-6GHz                  | 70MHz-6GHz          | 70MHz-6GHz          | 300MHz-3.8GHz       | 22MHz-2.2GHz | 100kHz-3.8GHz                            |
| RF Bandwidth             | 20MHz                      | 61.44MHz            | 61.44MHz            | 40MHz               | 3.2MHz       | 61.44MHz                                 |
| Sample Depth             | 8 bits                     | 12 bits             | 12 bits             | 12 bits             | 8 bits       | 12 bits                                  |
| Sample Rate              | 20MSPS                     | 61.44MSPS           | 61.44MSPS           | 40MSPS              | 3.2MSPS      | 61.44MSPS (Limited by USB 3.0 data rate) |
| Transmitter Channels     | 1                          | 1                   | 2                   | 1                   | 0            | 2                                        |
| Receivers                | 1                          | 1                   | 2                   | 1                   | 1            | 2                                        |
| Duplex                   | Half                       | Full                | Full                | Full                | N/A          | Full                                     |
| Interface                | USB 2.0                    | USB 3.0             | USB 3.0             | USB 3.0             | USB 2.0      | USB 3.0                                  |
| Programmable Logic Gates | 64 macrocell CPLD          | 75k                 | 100k                | 40k (115k avail)    | N/A          | 40k                                      |
| Chipset                  | MAX5864, MAX2837, RFFC5072 | AD9364              | AD9361              | LMS6002M            | RTL2832U     | LMS7002M                                 |
| Open Source              | Full                       | Schematic, Firmware | Schematic, Firmware | Schematic, Firmware | No           | Full                                     |
| Oscillator Precision     | +/-20ppm                   | +/-2ppm             | +/-2ppm             | +/-1ppm             | ?            | +/-1ppm initial, +/-4ppm stable          |
| Transmit Power           | -10dBm+ (15dBm @ 2.4GHz)   | 10dBm+              | 10dBm+              | 6dBm                | N/A          | 0 to 10dBm (depending on frequency)      |
| Price                    | $299                       | $686                | $1,119              | $420 ($650)         | ~$10         | $299 ($289 pre-order)                    |



# Universal Software Radio Peripheral (USRP)
* USRP Selection: [https://kb.ettus.com/Selecting_an_USRP_Device](https://kb.ettus.com/Selecting_an_USRP_Device)
* RF Daughterboard Selection: Not all the USRP is equpped with the RF card, including N and X series. A selection guide is provided at [https://kb.ettus.com/Selecting_an_RF_Daughterboard](https://kb.ettus.com/Selecting_an_RF_Daughterboard)

# Wireless Open Access Research Platform (WARP)
* link: [http://warpproject.org/trac](http://warpproject.org/trac)
* Strictly speaking, WARP is not an SDR platform, because it uses a WiFi chipset MAX2829. It mainly has two reference designs, namely 802.11 reference design and WARPLab reference design. The driver has been developed for both designs and the users can simply focus on developing their applications and prototypes.
* WARP 802.11 reference design is compatible with the commercial WiFi standard. The PHY and MAC codes are running at the FPGA. An experimental framework has been developed with two WARP boards connecting to a PC via a Ethernet switch. Python has been used. A more detailed introduction can be found at link
* WARPLab reference design is very suitable for fast prototype of physical layer algorithm. Two or more WARP boards are connected to a PC via a Ethernet switch.  The signal is modulated at the Matlab, then transferred to WARP transmitter via Ethernet cable. The data is triggered for transmission through the real wireless channel. The WARP receiver captures the signal and transfer it to the PC/Matlab via Ethernet cable for further processing.
