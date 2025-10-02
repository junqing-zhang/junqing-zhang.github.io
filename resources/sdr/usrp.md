---
title: 'Software Defined Radio - USRP'
date: 2025-08-30
permalink: /resources/sdr/usrp/
categories:
  - Resources
  - Wireless  
  - Software Defined Radio
tags:
  - USRP
---

This page summarizes information for Universal Software Radio Peripheral (USRP).

{% include toc %}

# Introduction
USRP has different series, including network series, bus series, embedded series. A selection guide is given in [https://kb.ettus.com/Selecting_an_USRP_Device](https://kb.ettus.com/Selecting_an_USRP_Device){:target="_blank"}

Some USRP series do not have RF capabilities, e.g., the N210 USRP. A separate RF daughterboard will be required.
* RF Daughterboard Selection: Not all the USRP is equpped with the RF card, including N and X series. A selection guide is provided at [https://kb.ettus.com/Selecting_an_RF_Daughterboard](https://kb.ettus.com/Selecting_an_RF_Daughterboard){:target="_blank"}

# Installation of GNURadio and UHD
It is strongly recommended to use pybombs to install gnuradio and UHD in Ubuntu. Instructions can be found [here](https://www.gnuradio.org/blog/2016-06-19-pybombs-the-what-the-how-and-the-why/){:target="_blank"}

Other methods can be found as follows.
* [Building and Installing the USRP Open-Source Toolchain (UHD and GNU Radio) on Linux](https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux){:target="_blank"}
* [Building and Installing the USRP Open Source Toolchain (UHD and GNU Radio) on Windows](https://kb.ettus.com/Building_and_Installing_the_USRP_Open_Source_Toolchain_(UHD_and_GNU_Radio)_on_Windows){:target="_blank"}
* [Building and Installing the USRP Open-Source Toolchain (UHD and GNU Radio) on OS X](https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_OS_X){:target="_blank"}

# USRP Models
## USRP B Series

[USRP B200/B210/B200mini/B205mini](https://kb.ettus.com/B200/B210/B200mini/B205mini){:target="_blank"}

| Model      | SDR Chip   | FPGA                                        | Channels   | Connector      |
|:-----------|:-----------|:--------------------------------------------|:-----------|:---------------|
| B210       | AD9361     | Spartan6 XC6SLX150                          | MIMO       | USB 3.0        |
| B200       | AD9364     | Spartan6 XC6SLX75                           | SISO       | USB 3.0        |
| B200mini   | AD9364     | Spartan-6 XC6SLX75                          | SISO       | USB 3.0        |
| B200mini-i | AD9364     | industrial-grade Xilinx Spartan-6 XC6SLX75  | SISO       | USB 3.0        |
| B205mini-i | AD9364     | industrial-grade Xilinx Spartan-6 XC6SLX150 | SISO       | USB 3.0        |
| B206mini-i | AD9364     | industrial-grade AMD Spartan-6 XC6SLX150    | SISO       | USB 3.0 Type C |


## [USRP N200/N210](https://kb.ettus.com/N200/N210){:target="_blank"}
## [USRP X300/X310](https://kb.ettus.com/X300/X310){:target="_blank"}

# Matlab Support
Matlab has a good support for Ettus USRP which allows fast test and prototype. Please visit [Communications Toolbox Support Package for USRP Radio](https://uk.mathworks.com/help/supportpkg/usrpradio/index.html){:target="_blank"} for more information.


# Resources
* [What Is the Difference between NI and Ettus Research USRP Devices?](https://www.ni.com/en-gb/innovations/white-papers/19/what-is-the-difference-between-ni-and-ettus-usrps.html){:target="_blank"}


Return to the Main Page of [Software Defined Radio](/resources/sdr/).





