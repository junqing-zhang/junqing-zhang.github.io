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

Comparsion between different SDR. Source: [https://www.crowdsupply.com/lime-micro/limesdr-mini#comparison-table](https://www.crowdsupply.com/lime-micro/limesdr-mini#comparison-table)

| Item                     | HackRF One                  | Ettus B200          | Ettus B210          | BladeRF x40         | RTL-SDR          | LimeSDR                           | LimeSDR Mini                        |
|--------------------------|-----------------------------|---------------------|---------------------|---------------------|------------------|-----------------------------------|-------------------------------------|
| Frequency Range          | 1 MHz - 6 GHz               | 70 MHz - 6 GHz      | 70 MHz - 6 GHz      | 300 MHz - 3.8 GHz   | 22 MHz - 2.2 GHz | 100 kHz - 3.8 GHz                 | 10 MHz - 3.5 GHz                    |
| RF Bandwidth             | 20 MHz                      | 61.44 MHz           | 61.44 MHz           | 40 MHz              | 3.2 MHz          | 61.44 MHz                         | 30.72 MHz                           |
| Sample Depth             | 8 bit                       | 12 bit              | 12 bit              | 12 bit              | 8 bit            | 12 bit                            | 12 bit                              |
| Sample Rate              | 20 MSPS                     | 61.44 MSPS          | 61.44 MSPS          | 40 MSPS             | 3.2 MSPS         | 61.44 MSPS                        | 30.72MSPS                           |
| TX Channels              | 1                           | 1                   | 2                   | 1                   | 0                | 2                                 | 1                                   |
| RX Channels              | 1                           | 1                   | 2                   | 1                   | 1                | 2                                 | 1                                   |
| Duplex                   | Half                        | Full                | Full                | Full                | N/A              | Full                              | Full                                |
| Interface                | USB 2.0                     | USB 3.0             | USB 3.0             | USB 3.0             | USB 2.0          | USB 3.0                           | USB 3.0                             |
| Programmable Logic Gates | 64 macrocell CPLD           | 75k                 | 100k                | 40k (115k avail)    | N/A              | 40k                               | 16K                                 |
| Chipset                  | MAX5864, MAX2837, RFFC5072  | AD9364              | AD9361              | LMS6002M            | RTL2832U         | LMS7002M                          | LMS7002M                            |
| Open Source              | Full                        | Schematic, Firmware | Schematic, Firmware | Schematic, Firmware | No               | Full                              | Full                                |
| Oscillator Precision     | +/- 20 ppm                  | +/- 2 ppm           | +/- 2 ppm           | +/- 1 ppm           | ?                | +/-1 ppm initial, +/-4 ppm stable | +/- 1 ppm initial, +/- 4 ppm stable |
| Transmit Power           | -10 dBm+ (15 dBm @ 2.4 GHz) | 10 dBm+             | 10 dBm+             | 6 dBm               | N/A              | max 10 dBm (depending on freq.)   | max 10 dBm (depending on freq.)     |
| Price                    | $299                        | $686                | $1,119              | $420 ($650)         | ~$10             | $299                              | $159                                |



# Universal Software Radio Peripheral (USRP)
* USRP Selection: [https://kb.ettus.com/Selecting_an_USRP_Device](https://kb.ettus.com/Selecting_an_USRP_Device)
* RF Daughterboard Selection: Not all the USRP is equpped with the RF card, including N and X series. A selection guide is provided at [https://kb.ettus.com/Selecting_an_RF_Daughterboard](https://kb.ettus.com/Selecting_an_RF_Daughterboard)

# Wireless Open Access Research Platform (WARP)
* link: [http://warpproject.org/trac](http://warpproject.org/trac)
* Strictly speaking, WARP is not an SDR platform, because it uses a WiFi chipset MAX2829. It mainly has two reference designs, namely 802.11 reference design and WARPLab reference design. The driver has been developed for both designs and the users can simply focus on developing their applications and prototypes.
* WARP 802.11 reference design is compatible with the commercial WiFi standard. The PHY and MAC codes are running at the FPGA. An experimental framework has been developed with two WARP boards connecting to a PC via a Ethernet switch. Python has been used. A more detailed introduction can be found at link
* WARPLab reference design is very suitable for fast prototype of physical layer algorithm. Two or more WARP boards are connected to a PC via a Ethernet switch.  The signal is modulated at the Matlab, then transferred to WARP transmitter via Ethernet cable. The data is triggered for transmission through the real wireless channel. The WARP receiver captures the signal and transfer it to the PC/Matlab via Ethernet cable for further processing.
