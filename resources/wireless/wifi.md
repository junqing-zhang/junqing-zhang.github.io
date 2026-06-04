---
title: 'Resources for Wi-Fi'
date: 2026-06-03
permalink: /resources/wireless/wifi/
categories:
  - Resources
  - Wireless  
  - Internet of Things
tags:
  - Wi-Fi
---

IEEE 802.11, commonly known as Wi-Fi, is one of the most widely deployed wireless technologies in the world and is integrated into virtually all modern laptops, smartphones, and tablets. Its ubiquity, low cost, and accessibility have made Wi-Fi not only a cornerstone of everyday connectivity but also an attractive platform for academic and industrial research.

Over the past decade, the widespread availability of Wi-Fi hardware has driven significant advances in areas such as indoor localization, wireless security, human sensing, channel measurement, and device identification. These research efforts have produced numerous innovative techniques and practical applications, further expanding the capabilities of Wi-Fi beyond traditional data communications.

For researchers and students entering this field, selecting suitable hardware and software platforms can be challenging due to the diverse range of available devices, chipsets, development tools, and open-source frameworks. This article provides an overview of useful Wi-Fi research resources, highlighting key hardware platforms and software tools that can support experimentation, prototyping, and development in wireless networking and sensing research.


Strictly speaking, IEEE 802.11 is the standard by IEEE and Wi-Fi is a trademark of the [Wi-Fi alliance](https://www.wi-fi.org/){:target="_blank"}. However, they are used interchangably in this post.

{% include toc %}

# Standard
The IEEE 802.11 standard defines the Physical (PHY) layer and Medium Access Control (MAC) layer protocols that underpin Wi-Fi communications. Since its initial release in 1997, the standard has evolved through numerous amendments, introducing enhancements in data rates, spectrum utilization, reliability, security, and application support. A comprehensive list of IEEE 802.11 amendments and their key features can be found on [wikipedia](https://en.wikipedia.org/wiki/IEEE_802.11){:target="_blank"}.

## PHY Layer
The evolution of Wi-Fi has been driven largely by a series of PHY-layer amendments aimed at increasing data rates, improving spectral efficiency, and supporting a growing number of users and applications. Key milestones include IEEE 802.11b (1999), which employed Direct Sequence Spread Spectrum (DSSS) in the 2.4 GHz band; IEEE 802.11a (1999), which introduced Orthogonal Frequency Division Multiplexing (OFDM) in the 5 GHz band; and IEEE 802.11g (2003), which brought OFDM to the 2.4 GHz band while maintaining backward compatibility with 802.11b devices.

Subsequent generations focused on improving throughput through advanced antenna technologies. IEEE 802.11n (2009) introduced Multiple-Input Multiple-Output (MIMO) techniques and was marketed as High Throughput (HT) Wi-Fi. IEEE 802.11ac (2013) further enhanced performance with wider channel bandwidths, higher-order modulation schemes, and multi-user MIMO, earning the designation Very High Throughput (VHT). More recently, IEEE 802.11ax (Wi-Fi 6), standardized in 2020, introduced technologies such as Orthogonal Frequency Division Multiple Access (OFDMA), uplink and downlink multi-user MIMO, and improved scheduling mechanisms to deliver High Efficiency (HE) operation, particularly in dense deployment scenarios.

| Protocol Version | Release Year | Radio Band | PHY Technology | Max Spatial Streams | Channel Bandwidth (MHz) | Maximum Data Rate |
|-----------------|-------------|------------|----------------|---------------------|------------------------|------------------|
| 802.11b | 1999 | 2.4 GHz | DSSS / CCK | 1 | 20 | 11 Mbps |
| 802.11a | 1999 | 5 GHz | OFDM | 1 | 20 | 54 Mbps |
| 802.11g | 2003 | 2.4 GHz | OFDM | 1 | 20 | 54 Mbps |
| 802.11n (HT) | 2009 | 2.4 & 5 GHz | MIMO-OFDM | 4 | 20, 40 | 600 Mbps |
| 802.11ac (VHT) | 2013 | 5 GHz | MU-MIMO OFDM, Beamforming | 8 | 20, 40, 80, 160 | 6.93 Gbps |
| 802.11ax (HE / Wi-Fi 6) | 2020 | 2.4 & 5 GHz | OFDMA, MU-MIMO, Beamforming | 8 | 20, 40, 80, 160 | 9.6 Gbps |

802.11ax was later extended to 6 GHz operation through Wi-Fi 6E.

Orthogonal Frequency-Division Multiplexing (OFDM) is one of the most important physical-layer technologies in modern Wi-Fi systems.
* [802.11 OFDM Overview](http://rfmw.em.keysight.com/wireless/helpfiles/89600B/WebHelp/Subsystems/wlan-ofdm/content/ofdm_80211-overview.htm){:target="_blank"}
* [Concepts of Orthogonal Frequency Division Multiplexing (OFDM) and 802.11 WLAN](http://rfmw.em.keysight.com/wireless/helpfiles/89600B/WebHelp/Subsystems/wlan-ofdm/content/ofdm_basicprinciplesoverview.htm){:target="_blank"}

IEEE 802.11 OFDM Receiver Design
* Check this paper [Performance Assessment of IEEE 802.11p with an Open Source SDR-Based Prototype ](https://ieeexplore.ieee.org/document/8031977){:target="_blank"} for the receiver design, including time synchronization, frequency offest estimation, channel estimation, etc.
* Check [OpenOFDM](https://openofdm.readthedocs.io/en/latest/overview.html){:target="_blank"} about the receiver algorithms (FPGA Verilog Design).

## MAC Layer
Visit [this link](/resources/wireless/wifi-modes/){:target="_blank"} for different Wi-Fi modes, including AP, station, and monitor.

Wi-Fi use CSMA/CA as the MAC layer protocol.

Frame Types
* Control frames
* Management frames
* Data frames

[How 802.11 Wireless Works](https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2003/cc757419(v=ws.10)){:target="_blank"}
[802.11 Association Process Explained](https://documentation.meraki.com/MR/WiFi_Basics_and_Best_Practices/802.11_Association_Process_Explained){:target="_blank"}

[802.11 Wi-Fi Connection/Disconnection process](https://community.nxp.com/t5/Wireless-Connectivity-Knowledge/802-11-Wi-Fi-Connection-Disconnection-process/ta-p/1121148){:target="_blank"}

[802.11 Wi-Fi Security Concepts](https://community.nxp.com/t5/Wireless-Connectivity-Knowledge/802-11-Wi-Fi-Security-Concepts/ta-p/1163551){:target="_blank"}


# Matlab WLAN Toolbox
The [Matlab WLAN Toolbox](https://www.mathworks.com/products/wlan.html){:target="_blank"} is one of the most comprehensive and powerful software platforms available for Wi-Fi research and development. It provides a rich collection of functions, reference implementations, and example projects covering both the Physical (PHY) and Medium Access Control (MAC) layers of IEEE 802.11 standards. Researchers can readily generate and decode Wi-Fi waveforms, model wireless channels, evaluate protocol performance, and prototype new algorithms without the complexity of developing a complete Wi-Fi stack from scratch.

A major advantage of the WLAN Toolbox is its seamless integration with other MATLAB toolboxes, including Signal Processing Toolbox, Communications Toolbox, Deep Learning Toolbox, and Phased Array System Toolbox. This enables rapid development and evaluation of advanced techniques such as channel estimation, localization, wireless sensing, machine learning, and radio frequency fingerprint identification (RFFI).

Furthermore, MATLAB provides extensive Software-Defined Radio (SDR) support through the [Communications Toolbox Support Packages](https://www.mathworks.com/help/comm/supported-hardware-software-defined-radio.html){:target="_blank"}. Researchers can interface MATLAB directly with a variety of SDR platforms, including devices from Analog Devices, Ettus Research (USRP), and PlutoSDR. This allows algorithms developed and validated in simulation to be rapidly transitioned to over-the-air experiments with minimal code modifications. Users can generate Wi-Fi waveforms in MATLAB, transmit and receive them using SDR hardware, and analyze real-world channel effects within the same development environment.

For these reasons, the MATLAB WLAN Toolbox is an excellent starting point for Wi-Fi research. It enables rapid prototyping, reproducible experimentation, and comprehensive performance evaluation before investing significant effort in implementing and debugging algorithms on commercial Wi-Fi hardware or embedded platforms.

Matlab Examples:
* [802.11n Packet Error Rate Simulation for 2x2 TGn Channel](https://uk.mathworks.com/help/wlan/ug/802-11n-packet-error-rate-simulation-for-2x2-tgn-channel.html){:target="_blank"}: Simulation
* [Recover and Analyze Packets in 802.11 Waveform](https://uk.mathworks.com/help/wlan/ug/recover-and-analyze-packets-in-802-11-waveform.html){:target="_blank"}: SDR required

# SDR Implementations
While the MATLAB WLAN Toolbox is an excellent platform for developing and evaluating new Wi-Fi algorithms, it is primarily designed for simulation and prototyping rather than high-performance real-time operation. The interpreted nature of MATLAB and the computational complexity of PHY-layer processing can result in relatively slow execution, particularly for large-scale simulations, long packet captures, or data-intensive applications such as machine learning and wireless sensing. Consequently, the WLAN Toolbox is best suited for validating concepts, testing algorithms, and gaining insights into system behavior before moving to practical implementations.

For researchers seeking real-time experimentation and over-the-air operation, several Software-Defined Radio (SDR)-based Wi-Fi implementations are available. These platforms implement the Wi-Fi PHY, and in some cases parts of the MAC layer, on SDR hardware using frameworks such as GNU Radio, FPGA-based processing, or custom software stacks. Examples include PicoScenes, OpenWiFi, gr-ieee802-11, and other SDR-based IEEE 802.11 projects. Compared with MATLAB simulations, SDR implementations enable real-world testing under realistic channel conditions and provide greater flexibility for modifying protocol behavior, collecting raw baseband samples, and evaluating hardware impairments.

A practical research workflow is therefore to first develop and validate algorithms using the MATLAB WLAN Toolbox, where the extensive libraries and debugging tools accelerate innovation, and then migrate promising solutions to an SDR-based platform for real-time experimentation and performance evaluation in operational wireless environments.


## GNU Radio Implementation
* [https://www.wime-project.net/](https://www.wime-project.net/){:target="_blank"}
* [IEEE 802.11 a/g/p transceiver for GNU Radio](https://github.com/bastibl/gr-ieee802-11){:target="_blank"}
* [gr-ieee80211
](https://github.com/cloud9477/gr-ieee80211){:target="_blank"}


## [PicoScenes](https://ps.zpj.io/){:target="_blank"}
* Supported Hardawre: USRP, HackRF One, AX210/AX200, QCA9300, and IWL5300

## Openwifi
* [openwifi](https://github.com/open-sdr/openwifi){:target="_blank"} is an SDR (Software Defined Radio) implementation for IEEE802.11/Wi-Fi design with Linux mac80211 compatible full-stack.
* Supported Hardawre: zynq FPGA +  FMCOMMS2/3/4 RF board
* For Chinese user, there is a [presentation video ](https://www.zhihu.com/zvideo/1437850059212226561) introducing openwifi by Dr. Jiao.

# Network Interface Cards CSI Extraction
While SDR platforms provide unparalleled flexibility for Wi-Fi research, they are specialized research tools and are not representative of the Commercial Off-The-Shelf (COTS) Wi-Fi devices used in everyday applications. In practice, most laptops, smartphones, tablets, and IoT devices rely on dedicated Wi-Fi Network Interface Cards (NICs), where the PHY and MAC functions are implemented in proprietary hardware, firmware, and drivers. As a result, many research techniques developed on SDR platforms cannot be directly deployed on commodity Wi-Fi devices. Therefore, understanding the capabilities and limitations of Wi-Fi NICs is essential for researchers who aim to develop solutions that can be implemented and evaluated on real-world COTS hardware.

Most commercial Wi-Fi NICs expose only the Received Signal Strength Indicator (RSSI) to users and applications, while Channel State Information (CSI) is typically not accessible through standard device drivers and firmware. RSSI represents the average received signal power over an entire packet and therefore provides only a coarse-grained characterization of the wireless channel.

In contrast, CSI offers a much richer and finer-grained description of the channel. In OFDM-based Wi-Fi systems, CSI captures the complex channel response—including both amplitude and phase information—for individual subcarriers. As a result, CSI reveals how the wireless channel varies across frequency and provides detailed information about multipath propagation, fading, and environmental changes. This fine-grained channel information has enabled a wide range of research applications, including indoor localization, human activity sensing, wireless imaging, and radio frequency fingerprint identification (RFFI), which would be difficult or impossible to achieve using RSSI measurements alone.

There are some CSI extraction tools for the commercial NICs.

## Intel 5300 NIC

There is the [Linux 802.11n CSI Tool](https://dhalperi.github.io/linux-80211n-csitool/){:target="_blank"} for Intel 5300 NIC. This Intel NIC together with the CSI tool have been used extensively by researchers and led to many excellent research papers. A list of the relevant publications can be found at [link](https://dhalperi.github.io/linux-80211n-csitool/#publicationss).

Please note PCI-e interface is required for these NICs.

## Atheros Chipsets

There is [Atheros CSI Tool](https://wands.sg/AtherosCSI/){:target="_blank"}. A list of the relevant publications can be found at [here](https://wands.sg/research/wifi/AtherosCSI/#Users){:target="_blank"}.

## Braodcom Wi-Fi Chipsets
* [nexmon](https://github.com/seemoo-lab/nexmon){:target="_blank"}
* [nexmon csi](https://github.com/seemoo-lab/nexmon_csi){:target="_blank"}
* [WiFiEye - an Interactive Real-Time Workflow for Wi-Fi-Based Sensing
](https://github.com/pkindt/WiFiEye){:target="_blank"}
* [Reverse-engineering Broadcom wireless chipsets](https://blog.quarkslab.com/reverse-engineering-broadcom-wireless-chipsets.html){:target="_blank"} 

## ESP32 CSI Toolkit
* [ESP32 CSI Toolkit](https://stevenmhernandez.github.io/ESP32-CSI-Tool/){:target="_blank"}


# Software Tool


## [Scapy](https://scapy.net/)
[Scapy official website defines](https://scapy.readthedocs.io/en/latest/introduction.html#about-scapy){:target="_blank"}
>Scapy is a Python program that enables the user to send, sniff and dissect and forge network packets. This capability allows construction of tools that can probe, scan or attack networks. 

There is a [library](https://github.com/secdev/scapy/blob/master/scapy/layers/dot11.py){:target="_blank"} supporting IEEE 802.11.

Code Examples:
* [PythonScapyDot11_TheBook](https://github.com/yadox666/PythonScapyDot11_TheBook){:target="_blank"}
* [Fake a WLAN connection via Scapy](https://wlan1nde.wordpress.com/2016/08/24/fake-a-wlan-connection-via-scapy/){:target="_blank"}
* [Generating Wi-Fi communication in Scapy tool](https://research.securitum.com/generating-wifi-communication-in-scapy-tool/){:target="_blank"}
[CWAP 802.11- Probe Request/Response](https://mrncciew.com/2014/10/27/cwap-802-11-probe-requestresponse/){:target="_blank"}
* [Wi-Fi Karma: A Brief Guide On Probe Response Frames](https://www.shellvoide.com/wifi/wifi-karma-a-brief-guid-on-probe-response-frames/){:target="_blank"}

## [Radiotap](https://www.radiotap.org/)
* What is radiotap? [link](http://wifinigel.blogspot.com/2013/11/what-are-radiotap-headers.html){:target="_blank"}

## Wireshark - Network Monitoring
* [Download Link](https://www.wireshark.org/){:target="_blank"}
* [Wireshark User Guide](https://www.wireshark.org/docs/wsug_html_chunked/index.html){:target="_blank"}
>Wireshark is a network packet analyzer. A network packet analyzer presents captured packet data in as much detail as possible.
>You could think of a network packet analyzer as a measuring device for examining what’s happening inside a network cable, just like an electrician uses a voltmeter for examining what’s happening inside an electric cable (but at a higher level, of course).




# Reading Materials
* Book - [Next Generation Wireless LANs: 802.11n and 802.11ac](https://www.amazon.co.uk/Next-Generation-Wireless-LANs-802-11ac/dp/1107016762){:target="_blank"}
* [[802.11] Wi-Fi Basic concepts](https://community.nxp.com/t5/Wi-Fi-Bluetooth-802-15-4/802-11-Wi-Fi-Basic-concepts/ta-p/1124409){:target="_blank"}


Return to the Main Page of [Wireless Communication Technologies](/resources/wireless/).