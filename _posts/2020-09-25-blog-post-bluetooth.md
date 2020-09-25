---
title: 'Resources for Bluetooth'
date: 2020-09-25
permalink: /posts/2020/09/blog-post-bluetooth/
categories:
  - Resources
  - Wireless  
tags:  
  - Bluetooth
---

This page summarizes resources for Bluetooth. It is still under active update.

{% include toc %}

# Overview
Bluetooth, Bluetooth low energy



# Protocol
Some brief introduction of the protocol can be found at the [Microchip Developer Center](https://microchipdeveloper.com/wireless:ble-introduction){:target="_blank"}.

<br />
<img align="center" width="1000" src="{{ site.url }}/images/blog_posts/ble-protocol-stack.png" alt="...">
<br />
Figure from https://microchipdeveloper.com/wireless:ble-introduction

## Physical Layer
Frequency Hopping

## MAC Layer

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
