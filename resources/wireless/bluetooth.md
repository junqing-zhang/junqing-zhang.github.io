---
layout: page
title: 'Resources for Bluetooth Low Energy'
show_last_updated: true
permalink: /resources/wireless/bluetooth/
categories:
  - Resources
  - Wireless  
  - Internet of Things
tags:  
  - Bluetooth
---

This page summarises resources for Classic Bluetooth and Bluetooth Low Energy. 

{% include toc title="On this page" %}

## Overview
There is some confusion about the Bluetooth. Generally speaking, Bluetooth 1.0 - 3.0 includes classic Bluetooth. Bluetooth 4.0 starts to use Bluetooth Low Energy (BLE). A brief introduction about their difference can be found at [link1](https://www.bluetooth.com/learn-about-bluetooth/bluetooth-technology/radio-versions/){:target="_blank"}, [link2](https://blog.nordicsemi.com/getconnected/the-difference-between-classic-bluetooth-and-bluetooth-low-energy){:target="_blank"} and [link3](https://www.semiconductorstore.com/blog/2018/Bluetooth-1-0-vs-2-0-vs-3-0-vs-4-0-vs-5-0-How-They-Differ-Symmetry-Blog/3147/){:target="_blank"}.

New features of Bluetooth 5 can be found [External resource](https://www.bluetooth.com/bluetooth-resources/bluetooth-5-go-faster-go-further/){:target="_blank"}. The full and latest specification, v5.2 (released in 2019) can be downloaded [External resource](https://www.bluetooth.com/specifications/bluetooth-core-specification/){:target="_blank"}.

Unless otherwise highlighted, the following descriptions apply to BLE, which might not be correct for classic Bluetooth.

## Tutorial
* Analog Devices - [Understanding the Architecture of the Bluetooth Low Energy Stack](https://www.analog.com/en/resources/technical-articles/understanding-architecture-bluetooth-low-energy-stack.html){:target="_blank"}
* [Arduino Bluetooth](https://docs.arduino.cc/learn/communication/bluetooth/){:target="_blank"}

## Network Architecture
* Point-to-Point and Point-to-Multipoint Connection Topology (Both Bluetooth classic and BLE)
* Broadcast Connection Topology (BLE only)
* Mesh Connection Topology (BLE only)
<br />
<img align="center" width="1000" src="/resources/wireless/images/bluetooth_topologies.png" alt="Bluetooth point-to-point, broadcast, and mesh network topologies" height="322">
<br />
Figure from [https://uk.mathworks.com/help/comm/ug/bluetooth-mesh-networking.html](https://uk.mathworks.com/help/comm/ug/bluetooth-mesh-networking.html){:target="_blank"}.

## Protocol Overview
Visit [MATLAB Bluetooth Protocol Stack](https://uk.mathworks.com/help/comm/ug/bluetooth-protocol-stack.html){:target="_blank"} for a detailed introduction about the Bluetooth and BLE protocol, and a mapping between them and the OSI model.
<br />
<img align="center" width="1000" src="/resources/wireless/images/ble-blutooth-protocol.png" alt="Overview of the Bluetooth Low Energy protocol" height="646">
<br />
Figure from [https://uk.mathworks.com/help/comm/ug/bluetooth-protocol-stack.html](https://uk.mathworks.com/help/comm/ug/bluetooth-protocol-stack.html){:target="_blank"}.

Some brief introduction of the protocol can be found at the [Microchip Developer Center](https://microchipdeveloper.com/wireless:ble-introduction){:target="_blank"}. The BLE protocol stack consists of
* Controller (Physical Layer and Link Layer)
* Host
* Application

<br />
<img align="center" width="1000" src="/resources/wireless/images/ble-protocol-stack.png" alt="Bluetooth Low Energy protocol stack" height="512">
<br />
Figure from [Microchip Develop Help - Bluetooth® Low Energy Link Layer](https://developerhelp.microchip.com/xwiki/bin/view/applications/ble/introduction/bluetooth-architecture/bluetooth-controller-layer/bluetooth-link-layer/){:target="_blank"}.


## Physical Layer
Some key features of the BLE physical layer
* 2.4GHz ISM band. The band between 2.402 GHz to 2.4835 GHz is divided into 40 channels with 2 MHz channel spacing, $f_k = 2402 + k*2 MHz, k = 0, 1, ..., 39$
* The 40 channels are divided into advertising channels (Ch. 37, 38, and 39) and 37 data channels (Ch. 0-36).
* Gaussian Frequency-Shift Keying (GFSK).
* Adaptive Frequency Hopping for data channels. The channel selection algorithms can be found in Section 4.5.8 of Part B vol. 6. There are two algorithms defined and the algorithm#1 selects the channel as 
$f_{n+1} = (f_n + hop)$ mod 37,
where hop ranges from 5-16.

<br />
<img align="center" width="1000" src="/resources/wireless/images/ble-phy-channel-assignment.png" alt="Bluetooth Low Energy physical-layer channel assignment" height="266">
<br />
Figure from [Microchip Develop Help - Bluetooth® Low Energy Channels](https://developerhelp.microchip.com/xwiki/bin/view/applications/ble/introduction/bluetooth-architecture/bluetooth-controller-layer/bluetooth-link-layer/Channels/){:target="_blank"}.

### Preamble
The preamble defined in BLE v5.2:
* LE IM packets (8 bits): 10101101, or 01010101 
* LE 2M packets (16 bits): 1010110110101101, or 0101010101010101 
Preamble is used for frequency synchronization, symbol timing and automatic gain control. Visit Page 2865 Section 2.1.1 Vol 6, Part B of the [Bluetooth Core Specification v5.2](https://www.bluetooth.com/specifications/bluetooth-core-specification/){:target="_blank"}. 

## Link Layer
* Advertising and Scanning
* Connection
* Network Topology - Piconet
* Security - AES - CCM

### Advertising Channel
Channel 37, 38 and 39
* Device Discovery
* Connection Establishment
* Broadcast Transmissions

### Data Channel
Channel 0-36
* Data transmissions
* Frequency hopping is used to select different channels.

### Packet Type
The same packet format for both 
* Advertising channel packets
* Data channel packets

<br />
<img align="center" width="1000" src="/resources/wireless/images/ble-packet-format-top-level.png" alt="BLE Packet Type." title="BLE Packet Type." height="350">
<br />
Figure from [Microchip Develop Help - Bluetooth® Low Energy (BLE) Link Layer Packet Types](https://developerhelp.microchip.com/xwiki/bin/view/applications/ble/introduction/bluetooth-architecture/bluetooth-controller-layer/bluetooth-link-layer/Packet-Types/){:target="_blank"}.

### Discovery Process
* Advertising interval: 20 ms
* Scan interval: 50 ms
* Scan window: 25 ms

<br />
<img align="center" width="1000" src="/resources/wireless/images/ble-advertising-and-scanning.png" alt="Advertising and Scanning." title="Advertising and Scanning." height="410">
<br />
Figure from [Microchip Develop Help - Bluetooth® Low Energy Discovery Process](https://developerhelp.microchip.com/xwiki/bin/view/applications/ble/introduction/bluetooth-architecture/bluetooth-controller-layer/bluetooth-link-layer/discovery-process/){:target="_blank"}.

### Connection Process
<br />
<img align="center" width="1000" src="/resources/wireless/images/ble-connecting-phase.png" alt="Connection establishment." title="Connection establishment." height="596">
<br />
Connection establishment. Figure from [Microchip Develop Help - Bluetooth® Low Energy Connections](https://developerhelp.microchip.com/xwiki/bin/view/applications/ble/introduction/bluetooth-architecture/bluetooth-controller-layer/bluetooth-link-layer/Connections/){:target="_blank"}.

<br />
<img align="center" width="1000" src="/resources/wireless/images/ble-connected-phase.png" alt="ble-connected-phase." title="ble-connected-phase." height="342">
<br />
Connected phase. Figure from [Microchip Develop Help - Bluetooth® Low Energy Connections](https://developerhelp.microchip.com/xwiki/bin/view/applications/ble/introduction/bluetooth-architecture/bluetooth-controller-layer/bluetooth-link-layer/Connections/){:target="_blank"}.



## Development Kit


### Texas Instruments 
* [TI BLE SDK](https://www.ti.com/tool/BLE-STACK){:target="_blank"} support Bluetooth 4.2 and Bluetooth 5.
* [TI BLE-Stack for Bluetooth 4.2 API Documentation  3.01.00.07](http://software-dl.ti.com/lprf/simplelink_cc2640r2_latest/docs/blestack/ble_user_guide/doxygen/ble/html/index.html)
* [ SimpleLink™ CC26x2 SDK BLE5-Stack User's Guide](http://software-dl.ti.com/lprf/simplelink_cc26x2_latest/docs/ble5stack/ble_user_guide/html/ble-stack-5.x-guide/index-cc26x2.html){:target="_blank"}.
* [SimpleLink™ CC13x2 / CC26x2 SDK BLE5-Stack User's Guide](http://software-dl.ti.com/simplelink/esd/simplelink_cc13x2_26x2_sdk/4.20.01.04/exports/docs/ble5stack/ble_user_guide/html/ble-stack-5.x-guide/index-cc13x2_26x2.html){:target="_blank"}.
* Supported TI devices can be found [External resource](https://www.ti.com/wireless-connectivity/simplelink-solutions/bluetooth-low-energy/overview/overview.html){:target="_blank"}.

### Nordic Dongles
(https://www.nordicsemi.com/Products/Wireless/Bluetooth-Low-Energy)[https://www.nordicsemi.com/Products/Wireless/Bluetooth-Low-Energy]{:target="_blank"}.

## SDR Implementations
### MATLAB Bluetooth Support
MATLAB's [Bluetooth Toolbox](https://www.mathworks.com/products/bluetooth.html){:target="_blank"} provides tools for modelling, simulating, and testing Bluetooth Classic (BR/EDR) and Bluetooth Low Energy (BLE) systems. It supports physical-layer (PHY) studies, communication-link analysis, and software-defined radio (SDR) experiments.

**Simulation and analysis resources:**

* [PHY modelling](https://www.mathworks.com/help/bluetooth/phy-modeling.html){:target="_blank"}: explore waveform generation and transmitter/receiver processing for Bluetooth BR/EDR and LE.
* [Link-level simulation](https://www.mathworks.com/help/bluetooth/link-level-simulation.html){:target="_blank"}: investigate bit error rate (BER) and packet error rate (PER), and assess the effects of noise, fading, RF impairments, and interference.
* [Getting started with Bluetooth Toolbox](https://www.mathworks.com/help/bluetooth/getting-started-with-bluetooth-toolbox.html){:target="_blank"}: find tutorials on waveform visualisation, direction finding, and network simulation, including mesh and LE Audio scenarios.

**SDR experiments:** The [Bluetooth BR/EDR waveform generation and transmission using SDR](https://www.mathworks.com/help/bluetooth/ug/bluetooth-br-edr-waveform-generation-and-transmission-using-sdr.html){:target="_blank"} example demonstrates baseband waveform generation, spectrum visualisation, and transmission using an ADALM-PLUTO radio. It also supports saving waveforms to a baseband file and links to a companion SDR reception example for capture and decoding.

**Suggested starting exercise:** Begin with waveform generation and visualisation, then work through a BLE link-level simulation. Compare BER or PER across signal-to-noise ratios, and investigate how frequency offset or fading changes the results. Move to SDR experiments after understanding the simulated transmitter and receiver.

**Requirements:** Simulation does not require radio hardware. Check each example's required products against your installed MATLAB release; SDR experiments also require the specified radio and its support package.

**Connecting to BLE peripherals:** MATLAB provides a separate [Bluetooth Low Energy communication interface](https://www.mathworks.com/help/matlab/bluetooth-low-energy-communication.html){:target="_blank"}. Use `blelist` to discover advertising peripherals, `ble` to connect, and characteristic objects to read or write device data. This interface uses the computer's Bluetooth adapter for device communication; Bluetooth Toolbox and SDR examples support waveform and system-level experiments. Check the interface documentation for supported operating systems and adapter requirements.

## Bluetooth Stack
### Linux
* C language: [BlueZ](http://www.bluez.org/){:target="_blank"}. Check [An Introduction to Bluetooth Programming](https://people.csail.mit.edu/albert/bluez-intro/index.html){:target="_blank"} about its usage.
* Python: [bluepy](https://github.com/IanHarvey/bluepy){:target="_blank"}.

### Micropython
* [ubluetooth library](https://docs.micropython.org/en/latest/library/ubluetooth.html){:target="_blank"}
* [Pycom devices](https://docs.pycom.io/firmwareapi/pycom/network/bluetooth/){:target="_blank"}

Note: The module is still under development and its classes, functions, methods and constants are subject to change. It only supports the basic BLE functions.

### Scapy for Bluetooth
* [https://scapy.readthedocs.io/en/latest/layers/bluetooth.html](https://scapy.readthedocs.io/en/latest/layers/bluetooth.html){:target="_blank"}.


Return to the Main Page of [Wireless Communication Technologies](/resources/wireless/).
