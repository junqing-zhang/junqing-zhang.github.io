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
| 802.11ax (HE / Wi-Fi 6) | 2020 | 2.4 & 5 GHz* | OFDMA, MU-MIMO, Beamforming | 8 | 20, 40, 80, 160 | 9.6 Gbps |

OFDM Basics
* [802.11 OFDM Overview](http://rfmw.em.keysight.com/wireless/helpfiles/89600B/WebHelp/Subsystems/wlan-ofdm/content/ofdm_80211-overview.htm){:target="_blank"}
* [Concepts of Orthogonal Frequency Division Multiplexing (OFDM) and 802.11 WLAN](http://rfmw.em.keysight.com/wireless/helpfiles/89600B/WebHelp/Subsystems/wlan-ofdm/content/ofdm_basicprinciplesoverview.htm){:target="_blank"}

IEEE 802.11 OFDM Receiver Design
* Check this paper [Performance Assessment of IEEE 802.11p with an Open Source SDR-Based Prototype ](https://ieeexplore.ieee.org/document/8031977){:target="_blank"} for the receiver design, including time synchronization, frequency offest estimation, channel estimation, etc.
* Check [OpenOFDM](https://openofdm.readthedocs.io/en/latest/overview.html){:target="_blank"} about the receiver algorithms (FPGA Verilog Design).

## MAC Layer
Wi-Fi use CSMA/CA as the MAC layer protocol.

Frame Types
* Control frames
* Management frames
* Data frames

[How 802.11 Wireless Works](https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2003/cc757419(v=ws.10)){:target="_blank"}
[802.11 Association Process Explained](https://documentation.meraki.com/MR/WiFi_Basics_and_Best_Practices/802.11_Association_Process_Explained){:target="_blank"}

[802.11 Wi-Fi Connection/Disconnection process](https://community.nxp.com/t5/Wireless-Connectivity-Knowledge/802-11-Wi-Fi-Connection-Disconnection-process/ta-p/1121148){:target="_blank"}

[802.11 Wi-Fi Security Concepts](https://community.nxp.com/t5/Wireless-Connectivity-Knowledge/802-11-Wi-Fi-Security-Concepts/ta-p/1163551){:target="_blank"}

# Testbed and Implementations

## [USRP Software Defined Radio (USRP)](https://www.ettus.com/products/)
* [https://www.wime-project.net/](https://www.wime-project.net/){:target="_blank"}
* [IEEE 802.11 a/g/p transceiver for GNU Radio](https://github.com/bastibl/gr-ieee802-11){:target="_blank"}

## [PicoScenes](https://ps.zpj.io/){:target="_blank"}
* Supported Hardawre: USRP, HackRF One, AX210/AX200, QCA9300, and IWL5300

## Openwifi
* [openwifi](https://github.com/open-sdr/openwifi){:target="_blank"} is an SDR (Software Defined Radio) implementation for IEEE802.11/Wi-Fi design with Linux mac80211 compatible full-stack.
* zynq FPGA +  FMCOMMS2/3/4 RF board
* For Chinese user, there is a [presentation video ](https://www.zhihu.com/zvideo/1437850059212226561) introducing openwifi by Dr. Jiao.

# Network Interface Cards CSI Extraction

The commercial network interface cards (NICs) only provide received signal strength indicator (RSSI) but not channel state information (CSI). RSSI represents the received power which is averaged over a packet, thus it is a coarse grained parameter. On the other hand, CSI is a fine grained parameter, and offers detailed channel response over different frequencies/subcarriers, when OFDM-based technique is used. 

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
## Matlab WLAN Toolbox
The [Matlab WLAN Toolbox](https://www.mathworks.com/products/wlan.html){:target="_blank"} is very powerful. There are many useful functions and examples. Both PHY and MAC layers are supported. I strongly suggest to test your idea and algorithms using this Toolbox before you do it with real hardware.

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

# Network Monitoring
* [Building your own Network Monitor with PyShark](https://linuxhint.com/building-your-own-network-monitor-with-pyshark/){:target="_blank"}

## Wireshark
* [Download Link](https://www.wireshark.org/){:target="_blank"}
* [Wireshark User Guide](https://www.wireshark.org/docs/wsug_html_chunked/index.html){:target="_blank"}
>Wireshark is a network packet analyzer. A network packet analyzer presents captured packet data in as much detail as possible.
>You could think of a network packet analyzer as a measuring device for examining what’s happening inside a network cable, just like an electrician uses a voltmeter for examining what’s happening inside an electric cable (but at a higher level, of course).


# Misc Resources

## Wi-Fi Modes
[iwconfig - Linux man page](https://linux.die.net/man/8/iwconfig){:target="_blank"}
>Set the operating mode of the device, which depends on the network topology. The mode can be Ad-Hoc (network composed of only one cell and without Access Point), Managed (node connects to a network composed of many Access Points, with roaming), Master (the node is the synchronisation master or acts as an Access Point), Repeater (the node forwards packets between other wireless nodes), Secondary (the node acts as a backup master/repeater), Monitor (the node is not associated with any cell and passively monitor all packets on the frequency) or Auto.


Return to the Main Page of [Wireless Communication Technologies](/resources/wireless/).