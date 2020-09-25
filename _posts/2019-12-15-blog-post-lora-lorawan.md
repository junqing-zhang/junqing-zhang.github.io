---
title: 'Resources for LoRa and LoRaWAN'
date: 2019-12-15
permalink: /posts/2019/12/blog-post-lora-lorawan/
categories:
  - Resources
  - Wireless  
tags:  
  - LoRaWAN
---

LoRa/LoRaWAN is a new IoT technique which is very suitable for energy efficient and long range communications. This paper summarizes resources for LoRa and LoRaWAN.

{% include toc %}

# Overview
A complete LoRaWAN application requires end devices, gateway, network server, and an application.
<figure>
  <img src="{{site.url}}/images/lorawan/lorawan_architecture.png" alt="LoRaWAN Architecture"/>
  <figcaption>LoRaWAN Architecture. Source: Page 8 of the white paper  <a href="https://lora-alliance.org/sites/default/files/2018-04/what-is-lorawan.pdf" title="A technical overview of LoRa® and LoRaWAN™">A technical overview of LoRa® and LoRaWAN™"</a> </figcaption>
</figure>


**Tutorial**
* [LoRaWAN Overview by TTN](https://www.thethingsnetwork.org/docs/lorawan/){:target="_blank"}
* mbed tutorial: Building a private LoRa network [link](https://os.mbed.com/docs/mbed-os/v5.12/tutorials/LoRa-tutorial.html){:target="_blank"}
* LoRaWAN network architecture [link](https://os.mbed.com/docs/mbed-os/v5.12/reference/lora-tech.html){:target="_blank"}

# LoRa vs LoRaWAN
Sometimes people use LoRa as the physical layer modulation technique while LoRaWAN as the MAC protocol and also the network structure. In other cases, you may also see that LoRa is used as a general term to represent LoRa/LoRaWAN. 
A good tutorial and summary of the LoRa and LoRaWAN can be found at [link](https://medium.com/coinmonks/lpwan-lora-lorawan-and-the-internet-of-things-aed7d5975d5d){:target="_blank"}.


## LoRa
LoRa (Long Range) is an IoT wireless technology patented by [Smetech](https://www.semtech.com/lora){:target="_blank"}. It defines the physical layer modulation. 

**Some key features of LoRa**

* Chirp spread spectrum
* [Different frequency plan](https://www.thethingsnetwork.org/docs/lorawan/frequency-plans.html){:target="_blank"}, e.g., EU863-870, CN470-510 and US902-928

**Understand LoRa modulation**

* LoRa modem with LimeSDR [Link](https://myriadrf.org/news/lora-modem-limesdr/){:target="_blank"}
* Understanding LoRa RF modulation [link](https://revspace.nl/DecodingLora){:target="_blank"}

## LoRaWAN
LoRaWAN is a media access control (MAC) protocol for wide area networks. It is defined by [LoRa Alliance](https://lora-alliance.org/){:target="_blank"}.
The first LoRaWAN specification was published on January 2015 ([download link](https://lora-alliance.org/sites/default/files/2018-05/2015_-_lorawan_specification_1r0_611_1.pdf)) and the latest LoRaWAN specifications is LoRaWAN® Specification v1.0.3 (July 2018) [download link](https://lora-alliance.org/lorawan-for-developers){:target="_blank"}.

Many LoRaWAN protocol implementations may not support the latest version. For example, [pycom devices only support LoRaWAN 1.0.2](https://docs.pycom.io/firmwareapi/pycom/network/lora.html). The previous versions of LoRaWAN specifications  can be accessed from [https://lora-alliance.org/resource-hub](https://lora-alliance.org/resource-hub)

**Some key features of LoRaWAN**

* [Class A, B, and C](https://www.thethingsnetwork.org/docs/lorawan/classes.html){:target="_blank"}
* [Authentication](https://www.thethingsnetwork.org/docs/lorawan/addressing.html){:target="_blank"}: Over-the-Air Activation (OTAA) and Activation by Personalization (ABP)
* LoRaWAN in most countries uses ALOHA to access the spectrum, which will then be subject to the [duty cycle limitation](https://www.thethingsnetwork.org/docs/lorawan/duty-cycle.html){:target="_blank"}, e.g., in EU868 plan. LoRaWAN in some countries does support listen before talk (LBT), e.g., [LBT is enabled in AS923 plan](https://www.multitech.net/developer/software/lora/listen-before-talk/){:target="_blank"}.
* AES for security

LoRaWAN is not the only MAC protocol for LoRa. Symphony Link is also available. A difference between Symphony Link and LoRaWAN can be found [here](https://www.link-labs.com/whitepaper-symphony-link-vs-lorawan?hsCtaTracking=e10ced9e-aeca-4846-938a-7332bcf2e515%7C016f5d73-fc31-4196-835a-1f573372d5bb){:target="_blank"}

# End Device
There are different options for selecting the end devices, based on your preference. Here is a (non-comprehensive) summary of the LoRa/LoRaWAN devices and their drivers.

| Hardware Type       | Driver (LoRa)                                                                                                                                                                               | Driver (LoRaWAN)                                                                     | Language    | Supported Devices                                                                                                                                                                            |
|---------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------|-------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Pycom devices       | [LoRaMAC](https://docs.pycom.io/tutorials/lora/lora-mac/){:target="_blank"}                                                                                                                 | [LoRaWAN-OTAA](https://docs.pycom.io/tutorials/lora/lorawan-otaa/){:target="_blank"}, [LoRaWAN-ABP](https://docs.pycom.io/tutorials/lora/lorawan-abp/){:target="_blank"} | Micropython | [FiPy](https://pycom.io/product/fipy/){:target="_blank"}, [LoPy](https://pycom.io/product/lopy4/){:target="_blank"}                                                                          |
| Arduino Shield      | [Arduino RadioHead](https://www.airspayce.com/mikem/arduino/RadioHead/classRH__RF95.html){:target="_blank"}                                                                                 | [Arduino LMIC](https://github.com/matthijskooijman/arduino-lmic){:target="_blank"}   | Arduino C   | [Arduino LoRa GPS Sheild](https://wiki.dragino.com/index.php?title=Lora/GPS_Shield){:target="_blank"}, [Seeeduino LoRaWAN](http://wiki.seeedstudio.com/Seeeduino_LoRAWAN/){:target="_blank"} |
| Raspberry Pi Shield |                                                                                                                                                                                             |                                                                                      | C           | [LoRa GPS HAT for Raspberry Pi](https://www.dragino.com/products/lora/item/106-lora-gps-hat.html){:target="_blank"}                                                                          |
| mBed-Based          | [SX1272Lib](https://os.mbed.com/teams/Semtech/code/SX1272Lib/file/b988b60083a1/sx1272/){:target="_blank"}, [SX1276Lib](https://os.mbed.com/teams/Semtech/code/SX1276Lib/){:target="_blank"} | [LoRaWAN-lib](https://os.mbed.com/teams/Semtech/code/LoRaWAN-lib/){:target="_blank"} | C           | [SX1272MB2xAS ](https://os.mbed.com/components/SX1272MB2xAS/){:target="_blank"}, [SX1276MB1xAS](https://os.mbed.com/components/SX1276MB1xAS/){:target="_blank"}                              |
| RN2483              |                                                                                                                                                                                             |                                                                                      |             | [Microchip RN2483](https://www.microchip.com/wwwproducts/en/RN2483){:target="_blank"}                                                                                                        |

A full list of the [mbed LoRa device](https://os.mbed.com/cookbook/LoRa){:target="_blank"} and the [mbed LoRaWAN APIs](https://os.mbed.com/docs/mbed-os/v5.12/apis/lorawan.html){:target="_blank"}

For example, if you are using Pycom devices, you can connect the end device by using [Authentication By Personalisation (ABP)](https://docs.pycom.io/tutorials/lora/lorawan-abp/){:target="_blank"} or [Over The Air Authentication (OTAA)](https://docs.pycom.io/tutorials/lora/lorawan-otaa/){:target="_blank"}. 

# Gateway
You may have experience setting up a WiFi router (access point) at home or office. Users will need password to access the router for internet, which can be referred as a private router. In LoRaWAN, it is a different story. You do not need a password to connect to a gateway. As long as there is a gateway nearby, your end devices will connect to the gateway and eventually to the network server. In this case, the gateway is public. A detailed introduction on the gateway can be found at [here](https://www.thethingsnetwork.org/docs/gateways/){:target="_blank"}, where you can find a list of recommended hardware.

If you intend to setup a gateway, you can configure it as public or private. An instruction of using RAK831 gateway can be found here [here](https://www.thethingsnetwork.org/labs/story/rak831-lora-gateway-from-package-to-online){:target="_blank"}

# Network Server
## Public Network Server	
[The Things Network](https://www.thethingsnetwork.org/){:target="_blank"}  is a free and probably the most popular LoRaWAN server. Please refer to [here](https://www.thethingsnetwork.org/docs/applications/){:target="_blank"} for an instruction about creating applications in TTN.

Another tutorial from [pycom](https://docs.pycom.io/gettingstarted/registration/lora/ttn/){:target="_blank"} can be found here.

## Private Network Server	
* Tutorial: TTN: Setting up a Private Routing Environment [link](https://www.thethingsnetwork.org/article/setting-up-a-private-routing-environment){:target="_blank"}
* [loraserver](https://www.loraserver.io/){:target="_blank"}
	
# Application
Please refer to [this link](https://www.thethingsnetwork.org/docs/applications/){:target="_blank"} for building applications using TTN.

There is a number of data API and SDK for interaction between the applications and TTN server. 


# LoRaWAN Demo at University of Liverpool
A LoRaWAN demo has been created at the Advanced Networks Research Group (ANRG), University of Liverpool. The demo built a complete LoRaWAN-based IoT system, including FiPy end devices, gateway, and applications.
A detailed introduction can be found at [link](https://junqing-zhang.github.io/posts/2019/04/blog-post-lorawan-fipy-demo/){:target="_blank"}. 

A public LoRaWAN gateway hosted at The Things Network by ANRG [Link](https://www.thethingsnetwork.org/u/anrg){:target="_blank"}. The gateway was built following the instruction [here](https://www.thethingsnetwork.org/labs/story/rak831-lora-gateway-from-package-to-online){:target="_blank"}

# Other Resources
## SDR Implementation
* [gr-lora:](https://github.com/rpp0/gr-lora){:target="_blank"} A detailed explanation of the model and algorithm can be found in [link](https://robyns.me/docs/robyns2018lora.pdf){:target="_blank"}.
* [gr-lora:](https://github.com/BastilleResearch/gr-lora){:target="_blank"}. A detailed explanation of the model and algorithm can be found in [link](https://pubs.gnuradio.org/index.php/grcon/article/view/8){:target="_blank"}. (Yes, both their names are gr-lora)
* [LoRa in Pothos](https://myriadrf.org/news/lora-modem-limesdr/){:target="_blank"}

## FAQ
* 14 LoRa FAQs Answered from LinkLabs [https://www.link-labs.com/blog/lora-faqs](https://www.link-labs.com/blog/lora-faqs){:target="_blank"}


