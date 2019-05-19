---
title: 'Resources for WiFi'
date: 2019-05-19
permalink: /posts/2019/05/blog-post-wifi/
categories:
  - WiFi
tags:
  - resources
  - WiFi
---

IEEE 802.11 (WiFi) has been used in most of the laptops, smartphones, tablets. The widespread use of WiFi has led to extensive research interests in the area of localization, security, sensing and produced massive successful research outcomes. This paper summarizes some hardware and software resources for WiFi for the research purpose.

Strictly speaking, IEEE 802.11 is the standard by IEEE and WiFi is a trademark of the [WiFi alliance](https://www.wi-fi.org/). However, we use them interchangably in this post.

# Testbed
The commercial network interfance cards (NICs) only provide received signal strength indicator (RSSI) but not channel state information (CSI). RSSI represents the received power which is averaged over a packet, thus it is a coarse grained parameter. On the other hand, CSI is a fine grained parameter, and offers detailed channel response over different frequencies, when OFDM-based techique is used. Since CSI is much more useful for innovative research, a (incomplete) list of testbed is given below.

## [USRP Software Defined Radio (USRP)](https://www.ettus.com/products/)
* https://www.wime-project.net/
* [IEEE 802.11 a/g/p transceiver for GNU Radio](https://github.com/bastibl/gr-ieee802-11){:target="_blank"}

## [WARP 802.11 reference design](http://warpproject.org/trac/wiki/802.11){:target="_blank"}

## [Linux 802.11n CSI Tool](https://dhalperi.github.io/linux-80211n-csitool/){:target="_blank"}

## [Atheros CSI Tool](https://wands.sg/research/wifi/AtherosCSI/){:target="_blank"}

# Software Tool
## [Radiotap](https://www.radiotap.org/)
* What is radiotap? [link](http://wifinigel.blogspot.com/2013/11/what-are-radiotap-headers.html)

## [Scapy](https://scapy.net/)
_Scapy is a Python program that enables the user to send, sniff and dissect and forge network packets. This capability allows construction of tools that can probe, scan or attack networks._ (quoated from [link](https://scapy.readthedocs.io/en/latest/introduction.html#about-scapy))

There is a [library](https://github.com/secdev/scapy/blob/master/scapy/layers/dot11.py) supporting IEEE 802.11 

