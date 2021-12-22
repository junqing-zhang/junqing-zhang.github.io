---
title: 'Resources for WiFi'
date: 2020-10-15
permalink: /posts/2020/10/blog-post-wifi/
categories:
  - Resources
  - Wireless  
tags:
  - WiFi
---

IEEE 802.11 (WiFi) has been used in most of the laptops, smartphones, tablets. The widespread use of WiFi has led to extensive research interests in the area of localization, security, sensing and produced massive successful research outcomes. This paper summarizes some hardware and software resources for WiFi for the research purpose.

Strictly speaking, IEEE 802.11 is the standard by IEEE and WiFi is a trademark of the [WiFi alliance](https://www.wi-fi.org/){:target="_blank"}. However, they are used interchangably in this post.

{% include toc %}

# Standard
IEEE 802.11 standard defines the physcai layer and media access control (MAC) layer protocols. It has undergone a number of amendments in the last twenty years, since its first release in 1997. A complete list of the IEEE 802.11 amendments is summarized at [wikipedia](https://en.wikipedia.org/wiki/IEEE_802.11){:target="_blank"}.

## PHY Layer
The main physical layer amendments include 802.11b (1999, DSSS), 802.11a (1999, OFDM, 5 GHz), 802.11g (2003, OFDM, 2.4 GHz), 802.11n (2009, MIMO OFDM, high throughput), 802.11ac (2013, MIMO OFDM, very high throughput), 802.11 ax(est late 2019, high efficiency).

OFDM Basics
* [802.11 OFDM Overview](http://rfmw.em.keysight.com/wireless/helpfiles/89600B/WebHelp/Subsystems/wlan-ofdm/content/ofdm_80211-overview.htm){:target="_blank"}
* [Concepts of Orthogonal Frequency Division Multiplexing (OFDM) and 802.11 WLAN](http://rfmw.em.keysight.com/wireless/helpfiles/89600B/WebHelp/Subsystems/wlan-ofdm/content/ofdm_basicprinciplesoverview.htm){:target="_blank"}

IEEE 802.11 OFDM Receiver Design
* Check this paper [Performance Assessment of IEEE 802.11p with an Open Source SDR-Based Prototype ](https://ieeexplore.ieee.org/document/8031977){:target="_blank"} for the receiver design, including time synchronization, frequency offest estimation, channel estimation, etc.

## MAC Layer
WiFi use CSMA/CA as the MAC layer protocol.

Frame Types
* Control frames
* Management frames
* Data frames

[How 802.11 Wireless Works](https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2003/cc757419(v=ws.10)){:target="_blank"}
[802.11 Association Process Explained](https://documentation.meraki.com/MR/WiFi_Basics_and_Best_Practices/802.11_Association_Process_Explained){:target="_blank"}

[802.11 Wi-Fi Connection/Disconnection process](https://community.nxp.com/t5/Wireless-Connectivity-Knowledge/802-11-Wi-Fi-Connection-Disconnection-process/ta-p/1121148){:target="_blank"}

[802.11 Wi-Fi Security Concepts](https://community.nxp.com/t5/Wireless-Connectivity-Knowledge/802-11-Wi-Fi-Security-Concepts/ta-p/1163551){:target="_blank"}

# Testbed and Implementations
The commercial network interface cards (NICs) only provide received signal strength indicator (RSSI) but not channel state information (CSI). RSSI represents the received power which is averaged over a packet, thus it is a coarse grained parameter. On the other hand, CSI is a fine grained parameter, and offers detailed channel response over different frequencies/subcarriers, when OFDM-based technique is used. Since CSI is much more useful for innovative research, a (incomplete) list of testbed is given below.

## [USRP Software Defined Radio (USRP)](https://www.ettus.com/products/)
* https://www.wime-project.net/
* [IEEE 802.11 a/g/p transceiver for GNU Radio](https://github.com/bastibl/gr-ieee802-11){:target="_blank"}

## Openwifi
* [openwifi](https://github.com/open-sdr/openwifi){:target="_blank"} is an SDR (Software Defined Radio) implementation for IEEE802.11/Wi-Fi design with Linux mac80211 compatible full-stack.
* zynq FPGA +  FMCOMMS2/3/4 RF board
* For Chinese user, there is a [presentation video ](https://www.zhihu.com/zvideo/1437850059212226561) introducing openwifi by Dr. Jiao.

## [WARP 802.11 Reference Design](http://warpproject.org/trac/wiki/802.11){:target="_blank"}
There is an 802.11 reference design implemented for WARP boards, which is compatible with the commercial WiFi. An [experimental framework](http://warpproject.org/trac/wiki/802.11/wlan_exp) is implemented by Python for the research development. The available variables/parameters can be found [here](http://warpproject.org/trac/wiki/802.11/wlan_exp/log/entry_types), among which the CSI is made public.

>WARP is being actively used for research in many areas like power management, architectures for wireless receivers, physical layer algorithms, access protocols, routing and cognitive radios.

A list of papers using WARP can be found at [here](http://warpproject.org/trac/wiki/PapersandPresentations).

## Network Interface Cards

**Intel 5300 NIC**

There is the [Linux 802.11n CSI Tool](https://dhalperi.github.io/linux-80211n-csitool/){:target="_blank"} for Intel 5300 NIC. This Intel NIC together with the CSI tool have been used extensively by researchers and led to many excellent research papers. A list of the relevant publications can be found at [link](https://dhalperi.github.io/linux-80211n-csitool/#publicationss).

Please note PCI-e interface is required for these NICs.

**Atheros Chipsets**

There is [Atheros CSI Tool](https://wands.sg/AtherosCSI/){:target="_blank"}. A list of the relevant publications can be found at [here](https://wands.sg/research/wifi/AtherosCSI/#Users){:target="_blank"}.

**Braodcom WiFi Chipsets**
* [nexmon](https://github.com/seemoo-lab/nexmon){:target="_blank"}
* [nexmon csi](https://github.com/seemoo-lab/nexmon_csi){:target="_blank"}
* [Reverse-engineering Broadcom wireless chipsets](https://blog.quarkslab.com/reverse-engineering-broadcom-wireless-chipsets.html){:target="_blank"} 

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
* [Generating WiFi communication in Scapy tool](https://research.securitum.com/generating-wifi-communication-in-scapy-tool/){:target="_blank"}
[CWAP 802.11- Probe Request/Response](https://mrncciew.com/2014/10/27/cwap-802-11-probe-requestresponse/){:target="_blank"}
* [WiFi Karma: A Brief Guide On Probe Response Frames](https://www.shellvoide.com/wifi/wifi-karma-a-brief-guid-on-probe-response-frames/){:target="_blank"}

## [Radiotap](https://www.radiotap.org/)
* What is radiotap? [link](http://wifinigel.blogspot.com/2013/11/what-are-radiotap-headers.html){:target="_blank"}

# Network Monitoring
* [Building your own Network Monitor with PyShark](https://linuxhint.com/building-your-own-network-monitor-with-pyshark/){:target="_blank"}

# Misc Resources
## Wireshark
* [Download Link](https://www.wireshark.org/){:target="_blank"}
* [Wireshark User Guide](https://www.wireshark.org/docs/wsug_html_chunked/index.html){:target="_blank"}
>Wireshark is a network packet analyzer. A network packet analyzer presents captured packet data in as much detail as possible.
>You could think of a network packet analyzer as a measuring device for examining what’s happening inside a network cable, just like an electrician uses a voltmeter for examining what’s happening inside an electric cable (but at a higher level, of course).

## WiFi Modes
[iwconfig - Linux man page](https://linux.die.net/man/8/iwconfig){:target="_blank"}
>Set the operating mode of the device, which depends on the network topology. The mode can be Ad-Hoc (network composed of only one cell and without Access Point), Managed (node connects to a network composed of many Access Points, with roaming), Master (the node is the synchronisation master or acts as an Access Point), Repeater (the node forwards packets between other wireless nodes), Secondary (the node acts as a backup master/repeater), Monitor (the node is not associated with any cell and passively monitor all packets on the frequency) or Auto.
