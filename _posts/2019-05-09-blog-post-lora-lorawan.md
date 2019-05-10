---
title: 'Resources for LoRa and LoRaWAN'
date: 2019-05-09
permalink: /posts/2019/05/blog-post-lora-lorawan/
categories:
  - LoRaWAN
tags:
  - resources
  - lorawan
---

This paper summarizes resources for LoRa and LoRaWAN.
<figure>
  <img src="{{site.url}}/images/lorawan/lorawan_architecture.png" alt="LoRaWAN Architecture"/>
  <figcaption>LoRaWAN Architecture. Source: Page 8 of the white paper [A technical overview of LoRa® and LoRaWAN™](https://lora-alliance.org/sites/default/files/2018-04/what-is-lorawan.pdf){:target="_blank"}</figcaption>
</figure>



# LoRa
LoRa (Long Range) is an IoT wireless technology patented by [Smetech](https://www.semtech.com/lora){:target="_blank"}. It defines the physical layer modulation.

## Understand LoRa modulation
* LoRa modem with LimeSDR [Link](https://myriadrf.org/news/lora-modem-limesdr/){:target="_blank"}
* Understanding LoRa RF modulation [link](https://revspace.nl/DecodingLora){:target="_blank"}

# LoRaWAN
LoRaWAN is a media access control (MAC) protocol for wide area networks. It is defined by [LoRa Alliance](https://lora-alliance.org/){:target="_blank"}

LoRaWAN is not the only MAC protocol for LoRa. Symphony Link is also available. A difference between Symphony Link and LoRaWAN can be found [here](https://www.link-labs.com/whitepaper-symphony-link-vs-lorawan?hsCtaTracking=e10ced9e-aeca-4846-938a-7332bcf2e515%7C016f5d73-fc31-4196-835a-1f573372d5bb){:target="_blank"}

## Standard
* LoRaWAN specifications [link](https://lora-alliance.org/lorawan-for-developers){:target="_blank"}

## Tutorial
* [LoRaWAN Overview by TTN](https://www.thethingsnetwork.org/docs/lorawan/){:target="_blank"}
* mbed tutorial: Building a private LoRa network [link](https://os.mbed.com/docs/mbed-os/v5.12/tutorials/LoRa-tutorial.html){:target="_blank"}
* LoRaWAN network architecture [link](https://os.mbed.com/docs/mbed-os/v5.12/reference/lora-tech.html){:target="_blank"}

## LoRaWAN Network Server
* Public Network Server	
	* The Things Network](https://www.thethingsnetwork.org/){:target="_blank"} 
* Private Network Server	
	* Tutorial: Setting up a Private Routing Environment
 [link](https://www.thethingsnetwork.org/article/setting-up-a-private-routing-environment){:target="_blank"}
	* [loraserver](https://www.loraserver.io/){:target="_blank"}
	

## LoRaWAN Demo
* A LoRaWAN demo has been created at University of Liverpool. [(link)](https://junqing-zhang.github.io/posts/2019/04/blog-post-lorawan-fipy-demo/){:target="_blank"}. A LoRaWAN gateway hosted at The Things Network by ANRG [Link）](https://www.thethingsnetwork.org/u/anrg){:target="_blank"}. The gateway was built following the instruction [here](https://www.thethingsnetwork.org/labs/story/rak831-lora-gateway-from-package-to-online){:target="_blank"}

# Resources
## Hardware
* mbed LoRa device [(link)](https://os.mbed.com/cookbook/LoRa){:target="_blank"}
* Micropython-based devices: [FiPy](https://pycom.io/product/fipy/){:target="_blank"}, [LoPy](https://pycom.io/product/lopy4/){:target="_blank"},

## Development tool
* mbed LoRaWAN APIs [link](https://os.mbed.com/docs/mbed-os/v5.12/apis/lorawan.html){:target="_blank"}
* Arduino LMIC [link](https://github.com/matthijskooijman/arduino-lmic){:target="_blank"}
* Arduino RadioHead (not supporting LoRaWAN) [link](https://www.airspayce.com/mikem/arduino/RadioHead/classRH__RF95.html){:target="_blank"}
* Pycom micropython LoRa/LoRaWAN modules [link](https://docs.pycom.io/firmwareapi/pycom/network/lora.html){:target="_blank"}


