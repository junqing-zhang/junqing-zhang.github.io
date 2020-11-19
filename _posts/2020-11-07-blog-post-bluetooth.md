---
title: 'Resources for Bluetooth Low Energy'
date: 2020-11-07
permalink: /posts/2020/11/blog-post-bluetooth/
categories:
  - Resources
  - Wireless  
tags:  
  - Bluetooth
---

This page summarizes resources for Classic Bluetooth and Bluetooth Low Energy. It is still under active update.

{% include toc %}

# Overview
There is some confusion about the Bluetooth. Generally speaking, Bluetooth 1.0 - 3.0 includes classic Bluetooth. Bluetooth 4.0 starts to use Bluetooth Low Energy (BLE). A brief introduction about their difference can be found at [link1](https://www.bluetooth.com/learn-about-bluetooth/bluetooth-technology/radio-versions/){:target="_blank"}, [link2](https://blog.nordicsemi.com/getconnected/the-difference-between-classic-bluetooth-and-bluetooth-low-energy){:target="_blank"} and [link3](https://www.semiconductorstore.com/blog/2018/Bluetooth-1-0-vs-2-0-vs-3-0-vs-4-0-vs-5-0-How-They-Differ-Symmetry-Blog/3147/){:target="_blank"}.

New features of Bluetooth 5 can be found [here](https://www.bluetooth.com/bluetooth-resources/bluetooth-5-go-faster-go-further/){:target="_blank"}. The full and latest specification, v5.2 (released in 2019) can be downloaded [here](https://www.bluetooth.com/specifications/bluetooth-core-specification/){:target="_blank"}.

Unless otherwise highlighted, the following descriptions apply to BLE, which might not be correct for classic Bluetooth.

# Network Architecture
* Point-to-Point and Point-to-Multipoint Connection Topology (Both Bluetooth classic and BLE)
* Broadcast Connection Topology (BLE only)
* Mesh Connection Topology (BLE only)
<br />
<img align="center" width="1000" src="{{ site.url }}/images/bluetooth/bluetooth_topologies.png" alt="...">
<br />
Figure from [https://uk.mathworks.com/help/comm/ug/bluetooth-mesh-networking.html](https://uk.mathworks.com/help/comm/ug/bluetooth-mesh-networking.html){:target="_blank"}.

# Protocol Overview
Visit [MATLAB Bluetooth Protocol Stack](https://uk.mathworks.com/help/comm/ug/bluetooth-protocol-stack.html){:target="_blank"} for a detailed introduction about the Bluetooth and BLE protocol, and a mapping between them and the OSI model.
<br />
<img align="center" width="1000" src="{{ site.url }}/images/bluetooth/ble-blutooth-protocol.png" alt="...">
<br />
Figure from [https://uk.mathworks.com/help/comm/ug/bluetooth-protocol-stack.html](https://uk.mathworks.com/help/comm/ug/bluetooth-protocol-stack.html){:target="_blank"}.

Some brief introduction of the protocol can be found at the [Microchip Developer Center](https://microchipdeveloper.com/wireless:ble-introduction){:target="_blank"}. The BLE protocol stack consists of
* Controller (Physical Layer and Link Layer)
* Host
* Application

<br />
<img align="center" width="1000" src="{{ site.url }}/images/bluetooth/ble-protocol-stack.png" alt="...">
<br />
Figure from [https://microchipdeveloper.com/wireless:ble-introduction](https://microchipdeveloper.com/wireless:ble-introduction){:target="_blank"}.


# Physical Layer
Some key features of the BLE physical layer
* 2.4GHz ISM band. The band between 2.402 GHz to 2.4835 GHz is divided into 40 channels with 2 MHz channel spacing, $f_k = 2402 + k*2 MHz, k = 0, 1, ..., 39$
* The 40 channels are divided into advertising channels (Ch. 37, 38, and 39) and 37 data channels (Ch. 0-36).
* Gaussian Frequency-Shift Keying (GFSK).
* Adaptive Frequency Hopping for data channels. The channel selection algorithms can be found in Section 4.5.8 of Part B vol. 6. There are two algorithms defined and the algorithm#1 selects the channel as 
$f_{n+1} = (f_n + hop)$ mod 37,
where hop ranges from 5-16.

<br />
<img align="center" width="1000" src="{{ site.url }}/images/bluetooth/ble-phy-channel-assignment.png" alt="..." title="title">
<br />
Figure from [https://microchipdeveloper.com/wireless:ble-introduction](https://microchipdeveloper.com/wireless:ble-introduction){:target="_blank"}.

## Preamble
The preamble defined in BLE v5.2:
* LE IM packets (8 bits): 10101101, or 01010101 
* LE 2M packets (16 bits): 1010110110101101, or 0101010101010101 
Preamble is used for frequency synchronization, symbol timing and automatic gain control. Visit Page 2865 Section 2.1.1 Vol 6, Part B of the [Bluetooth Core Specification v5.2](https://www.bluetooth.com/specifications/bluetooth-core-specification/){:target="_blank"}. 

# Link Layer
* Advertising and Scanning
* Connection
* Network Topology - Piconet
* Security - AES - CCM

## Advertising Channel
Channel 37, 38 and 39
* Device Discovery
* Connection Establishment
* Broadcast Transmissions

## Data Channel
Channel 0-36
* Data transmissions
* Frequency hopping is used to select different channels.

## Packet Type
The same packet format for both 
* Advertising channel packets
* Data channel packets

<br />
<img align="center" width="1000" src="{{ site.url }}/images/bluetooth/ble-packet-format-top-level.png" alt="BLE Packet Type." title="BLE Packet Type.">
<br />
BLE Packet Type. Figure from [https://microchipdeveloper.com/wireless:ble-link-layer-packet-types](https://microchipdeveloper.com/wireless:ble-link-layer-packet-types){:target="_blank"}

## Discovery Process
* Advertising interval: 20 ms
* Scan interval: 50 ms
* Scan window: 25 ms

<br />
<img align="center" width="1000" src="{{ site.url }}/images/bluetooth/ble-advertising-and-scanning.png" alt="Advertising and Scanning." title="Advertising and Scanning.">
<br />
Advertising and Scanning. Figure from [https://microchipdeveloper.com/wireless:ble-link-layer-discovery](https://microchipdeveloper.com/wireless:ble-link-layer-discovery){:target="_blank"}

## Connection Process
<br />
<img align="center" width="1000" src="{{ site.url }}/images/bluetooth/ble-connecting-phase.png" alt="Connection establishment." title="Connection establishment.">
<br />
Connection establishment. Figure from [https://microchipdeveloper.com/wireless:ble-link-layer-connections](https://microchipdeveloper.com/wireless:ble-link-layer-connections){:target="_blank"}

<br />
<img align="center" width="1000" src="{{ site.url }}/images/bluetooth/ble-connected-phase.png" alt="ble-connected-phase." title="ble-connected-phase.">
<br />
Connected phase. Figure from [https://microchipdeveloper.com/wireless:ble-link-layer-connections](https://microchipdeveloper.com/wireless:ble-link-layer-connections){:target="_blank"}


# Bluetooth Stack and Development Kit
## Linux
* C language: [BlueZ](http://www.bluez.org/){:target="_blank"}. Check [An Introduction to Bluetooth Programming](https://people.csail.mit.edu/albert/bluez-intro/index.html){:target="_blank"} about its usage.
* Python: [bluepy](https://github.com/IanHarvey/bluepy){:target="_blank"}.

## Micropython
* [ubluetooth library](https://docs.micropython.org/en/latest/library/ubluetooth.html){:target="_blank"}
* [Pycom devices](https://docs.pycom.io/firmwareapi/pycom/network/bluetooth/){:target="_blank"}

Note: The module is still under development and its classes, functions, methods and constants are subject to change. It only supports the basic BLE functions.

## Texas Instruments 
* [TI BLE SDK](https://www.ti.com/tool/BLE-STACK){:target="_blank"} support Bluetooth 4.2 and Bluetooth 5.
* [TI BLE-Stack for Bluetooth 4.2 API Documentation  3.01.00.07](http://software-dl.ti.com/lprf/simplelink_cc2640r2_latest/docs/blestack/ble_user_guide/doxygen/ble/html/index.html)
* [ SimpleLink™ CC26x2 SDK BLE5-Stack User's Guide](http://software-dl.ti.com/lprf/simplelink_cc26x2_latest/docs/ble5stack/ble_user_guide/html/ble-stack-5.x-guide/index-cc26x2.html){:target="_blank"}.
* [SimpleLink™ CC13x2 / CC26x2 SDK BLE5-Stack User's Guide](http://software-dl.ti.com/simplelink/esd/simplelink_cc13x2_26x2_sdk/4.20.01.04/exports/docs/ble5stack/ble_user_guide/html/ble-stack-5.x-guide/index-cc13x2_26x2.html){:target="_blank"}.
* Supported TI devices can be found [here](https://www.ti.com/wireless-connectivity/simplelink-solutions/bluetooth-low-energy/overview/overview.html){:target="_blank"}.

## Scapy for Bluetooth
* [https://scapy.readthedocs.io/en/latest/layers/bluetooth.html](https://scapy.readthedocs.io/en/latest/layers/bluetooth.html){:target="_blank"}.

## Matlab Bluetooth Support
Matlab has also provided simulation support for Bluetooth and BLE. Visit [Communications Toolbox Library for the Bluetooth Protocol support package](https://uk.mathworks.com/help/comm/bluetooth.html) for more information.