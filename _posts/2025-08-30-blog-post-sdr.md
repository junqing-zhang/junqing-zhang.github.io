---
title: 'Software Defined Radio'
date: 2025-08-30
permalink: /posts/blog-post-sdr/
categories:
  - Resources
  - Wireless  
  - Software Defined Radio
tags:
  - Software Defined Radio
---

This page summarizes information for software defined radio (SDR).

{% include toc %}

# Overview
*Radio components such as modulators, demodulators and tuners are traditionally implemented in hardware components. The advent of modern computing and analogue to digital converters allows most of these traditionally hardware based components to be implemented into software instead. Hence, the term software defined radio. This enables easy signal processing and thus cheap wide band scanner radios to be produced.* (quoted from [https://www.rtl-sdr.com/about-rtl-sdr/](https://www.rtl-sdr.com/about-rtl-sdr/){:target="_blank"})

An good (though not the latest) introduction on the SDR is available [here](http://www.taylorkillian.com/2013/08/sdr-showdown-hackrf-vs-bladerf-vs-usrp.html){:target="_blank"}. 

# Hardware
There are many SDR platforms available on the market, with different specifications and prices. A comprehensive list can be found at [here](https://wiki.gnuradio.org/index.php/Hardware){:target="_blank"}

A comparison between different SDR is produced by LimeSDR and quoted here. Source: [https://www.crowdsupply.com/lime-micro/limesdr-mini#comparison-table](https://www.crowdsupply.com/lime-micro/limesdr-mini#comparison-table){:target="_blank"}

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
| Price                    | $299                        | $686                | $1,119              | $420                | ~$10             | $299                              | $159                                |

# Development Tool

## GNU Radio
[Tutorial](https://wiki.gnuradio.org/index.php/Tutorials){:target="_blank"}

## Matlab
* Supported Devices: USRP, Zynq SDR, RTL-SDR, and Adalm PlutoSDR
* [Link](https://uk.mathworks.com/discovery/sdr.html){:target="_blank"}

## Python
Some SDR also supports Python.

# Resources
* [PySDR: A Guide to SDR and DSP using Python](https://pysdr.org/index.html){:target="_blank"}

# SDR Platforms
* [Universal Software Radio Peripheral (USRP)](https://junqing-zhang.github.io/posts/blog-post-usrp/)
* [Analog Devices SDR](https://junqing-zhang.github.io/posts/blog-post-sdr-adi/)
* [LimeSDR](/posts/blog-post-limesdr/){:target="_blank"}
* [RTL-SDR](/posts/blog-post-rtl-sdr/){:target="_blank"}

