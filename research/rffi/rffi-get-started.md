---
title: "How to Construct an RFFI System"
permalink: /research/rffi/rffi-get-started/
date: 2022-10-15
author_profile: true
toc: true
categories:
  - Research
  - RFFI
tags:
  - RFFI
---

This page provides a tutorial on how to construct an Radio Frequency Fingerprinting Identification (RFFI) system. The implementations vary a lot depending on the wireless technologies, selected transmitter and receiver platforms. This tutorial aims to provide some general guideline.

{% include toc %}

# Overview
As shown in the figure below, an RFFI system consists of several device under tests (DUTs) and a receiver. The goal of the RFFI system is to correctly identify/classify these DUTs by analyzing the physical layer signals captured by the receiver.

<div  align="center">    
 <img src="{{ site.url }}/images/rffi/RFFI_DL.png" width = "600"  alt="Deep learning-based RFFI" align=center />
 </div>
Figure from [https://arxiv.org/pdf/2207.02999.pdf](https://arxiv.org/pdf/2207.02999.pdf){:target="_blank"}

Regarding the software, RFFI involves signal collection (optional) and deep learning. If you are aiming to collect your own datasets, signal collection algorithms will be required to capture wireless waveforms. Alternatively, you can use public datasets. Deep learning has widely used in RFFI to enhance the classification accuracy. 


# Transmitter (DUTs)
## Hardware 
Any wireless devices can be used as DUTs. You can of course build your own device, but using commercial-of-the-shelf (COTS) development boards/kits will save lots of time.

In general, they can be categorized into programmable and non-programmable. Vendors with programmable devices are listed as follows.
* [Texas Instruments](https://www.ti.com/wireless-connectivity/overview.html){:target="_blank"}: WiFi, Bluetooth, ZigBee
* [Nordic Semiconductor](https://www.nordicsemi.com/Products){:target="_blank"}: LTE-M, NB-IoT, GPS, Bluetooth, ZigBee
* [Pycom boards](https://pycom.io/product-category/shop/development-boards/){:target="_blank"}: WiFi, Bluetooth, LoRa, Sigfox and dual LTE-M (CAT-M1 and NB-IoT).
* [ESP32](https://www.espressif.com/en/products/socs/esp32){:target="_blank"}: WiFi and Bluetooth

The table below summarizes some LoRa development boards that have been shown to be applicable for RFFI research.

| Board Name      | Platform and Programming Language|Link |
| -----------------| -------------------- |-------------------- |
| Pycom LoPy4     | Micropython (Python)   | [https://docs.pycom.io/firmwareapi/pycom/network/lora/](https://docs.pycom.io/firmwareapi/pycom/network/lora/){:target="_blank"}
| Pycom FiPy | Micropython (Python)|[https://docs.pycom.io/firmwareapi/pycom/network/lora/](https://docs.pycom.io/firmwareapi/pycom/network/lora/){:target="_blank"}|
| Dragino LoRa Shields| Arduino (C) |[Code Examples](https://wiki1.dragino.com/index.php?title=Lora_Shield#Example1_--_Use_with_LMIC_library_for_LoRaWAN_compatible){:target="_blank"}|
| Semtech LoRa Transceivers | Mbed (C)|Libraries vary with the boards (chips), e.g., [SX1276MB1xAS](https://os.mbed.com/components/SX1276MB1xAS/){:target="_blank"}|

Non-programmable devices can also be used. For example, our smartphones support WiFi and Bluetooth. 

## Software
Different development boards require different development languages/platforms. You need to program the transmitter to send wireless packets, which you can do by modifying the examples provided in the official documentation. The vendors usually will provide the development software and SDK.

Regarding non-programmable devices, we can use other methods to create wireless traffic. For example, we can use a WiFi-connected smartphone to watch videos, which will create lots of WiFi traffic. Regarding WiFi-connected laptops, we can use ping command.


# Receiver
## Hardware
Most of COTS gateway/access point/receiver do not provide an interface to the physical layer signals. Therefore, software-defined radio (SDR) devices are usually leveraged as receivers. Most SDR platforms use a flexible analog front-end to tune the desired radio signal to baseband or intermediate frequency, which is then sampled by an ADC and converted to the digital domain (IQ samples). All the rest procedures of the communication system, such as packet detection and decoding, are implemented by software. The SDR-based receiver enables users to access the physical layer IQ samples. 

Table below summarizes some SDRs available in our lab. You should select an appropriate SDR based on the target communication technology, e.g., Wi-Fi, Zigbee, LoRa. For example, RTL-SDR cannot be used for Wi-Fi research due to its frequency range and bandwidth limitations.

| SDR Name         |Rx Frequency Range|Bandwidth| Development Platform                                    |
| -----------------|--------------|---| -------------------- |
| USRP N210+UBX 40 Daughter Board   |10 MHz~6GHz |40 MHz| MATLAB, UHD (C/Python APIs), GNU Radio, LabVIEW, etc.   |
| Zynq+AD9361 |70 MHz~6 GHz|56 MHz| MATLAB, libiio (C/Python APIs), GNU Radio, etc.         |
| ADALM-PLUTO      | 325 MHz~3.8 GHz| 20 MHz| MATLAB, libiio (C/Python APIs), GNU Radio, etc.         |
| RTL-SDR          |22 MHz~2.2 GHz| 3.2 MHz|MATLAB, pyrtlsdr (Python APIs), GNU Radio, etc.          |

Useful material to learn SDR: [https://pysdr.org/index.html](https://pysdr.org/index.html){:target="_blank"}


## Software

### Signal Collection Module
The software is a critical part for SDR applications. Specific to RFFI research, you need to write the signal receiving program to capture the valid wireless packets. Figure below shows the flow chart of a basic signal collection program. 
<div  align="center">    
 <img src="{{ site.url }}/images/rffi/signal_collection_program.png" width = "300" height = "500" alt="signal_collection_program" align=center />
 </div>

The packet detection, synchronization and carrifer frequency offset (CFO) compensation algorithms can be implemented by MATLAB/Python/C, depending on the demand for real-time performance and collection speed. Note that for some applications, MAC address decoding is also required to ensure that the captured packets are sent from the correct DUT and not from another device. The signals can be saved in any format such as .csv, .hdf5, .mat, .txt, etc., as long as they can be correctly loaded by the deep learning module. 

MATLAB provides a number of example codes for signal collection, you can find the documentation for your target communication protocol and try to understand every line of the program:
* [BLE SDR Reception](https://www.mathworks.com/help/bluetooth/ug/bluetooth-low-energy-receiver.html){:target="_blank"}
* [Bluetooth BR/EDR Reception](https://www.mathworks.com/help/bluetooth/ug/bluetooth-br-edr-waveform-reception-by-using-sdr.html){:target="_blank"}
* [Wi-Fi Reception (802.11 a/n/ac/ax)](https://www.mathworks.com/help/wlan/ug/recover-and-analyze-packets-in-802-11-waveform.html){:target="_blank"}
* [ZigBee reception](https://uk.mathworks.com/help/comm/ug/end-to-end-ieee-802-15-4-phy-simulation.html){:target="_blank"}

### Deep Learning Module

After collecting sufficient signals from the DUTs, you can start to train a deep learning model for classification, such as CNN, LSTM, GRU, transformer, etc. The deep learning model can be implemented by numerous libraries/frameworks such as PyTorch, Tensorflow, MATLAB deep learning toolbox, Caffe, etc.. PyTorch and Tensorflow are strongly recommended because of their active community.

The input to the neural network can be the collected IQ samples, and you can also do some signal processing before that. For example, you can perform a fast Fourier transform (FFT) on the received signals and transform them into frequency domain as neural network inputs.

If you are new to deep learning, there are lots of useful resources online. Some of the materials are summarized below.
* [Deep Learning Tutorial for Beginners, Get Started](https://junqing-zhang.github.io/posts/blog-post-deep-learning-for-beginners/){:target="_blank"}
* [Deep Learning for Beginners](https://junqing-zhang.github.io/posts/blog-post-dl/){:target="_blank"}

The following two examples are codes available for RFFI.
1. [MATLAB, Detect WLAN Router Impersonation](https://www.mathworks.com/help/comm/ug/design-a-deep-neural-network-with-simulated-data-to-detect-wlan-router-impersonation.html){:target="_blank"}
2. [Tensorflow, Towards Scalable and Channel-Robust Radio Frequency 
Fingerprint Identification for LoRa](https://github.com/gxhen/LoRa_RFFI){:target="_blank"}

### Note
It is not necessary to use the same programming language for the signal collection and deep learning. You can use the Matlab toolbox for signal collection and save the dataset to the PC. Then you can use Python for deep learning.

# Wireless Monitoring (Optional)
Before starting the signal collection programming, you need to make sure there is the required wireless traffic. Wireshark will be an excellent platform for monitoring and detection. You will need another dedicated receiver though.
* WiFi Sniffer
* [nRF Sniffer for Bluetooth LE](https://infocenter.nordicsemi.com/topic/ug_sniffer_ble/UG/sniffer_ble/intro.html){:target="_blank"}
* [nRF Sniffer for 802.15.4](https://infocenter.nordicsemi.com/topic/ug_sniffer_802154/UG/sniffer_802154/intro_802154.html){:target="_blank"}


# Public Datasets
There are also several public datasets made available for RFFI research. Check [this link](https://junqing-zhang.github.io/rffi/rffi-dataset/){:target="_blank"} for more information. If you decide use public dataset, then you won't need any hardware platforms (You will still need a PC, though). 

# General Procedures
1. Program to make the development board to start transmitting packets. 
1. (optional) Check the wireless transmission using Wireshark 
1. Write the signal collection program to capture the packets sent from development boards.
1. Collect packets from all the DUTs, saving the IQ samples as the training/test datasets.
1. Design a neural network and train it with the collected training data.
1. Test the neural network with the collected test data. The classification problem is usually evaluated by overall accuracy and confusion matrix.

Steps 1-4 are not required if you are using public datasets.


# Recommended Readings
1. Deep Learning-Powered Radio Frequency Fingerprint Identification: Methodology and Case Study
> Guanxiong Shen, **Junqing Zhang**<sup>*</sup>, and Alan Marshall, “Deep Learning-Powered Radio Frequency Fingerprint Identification: Methodology and Case Study,” _IEEE Communications Magazine_, [IEEE](https://ieeexplore.ieee.org/document/10144511){:target="_blank"}

1. Narrowband tranceivers. This paper focuses on the systematic modelling on the hardware impairments of a narrowband transmitter and receiver. You can gain a deeper understanding on the concept of RFFI and figure out how it works.
> J. Zhang, R. Woods, M. Sandell, M. Valkama, A. Marshall, and J. Cavallaro, “Radio frequency fingerprint identification for narrowband systems, modelling and classification,” IEEE Trans. Inf. Forensics Security, vol. 16, pp. 3974–3987, 2021

1. LoRa-RFFI. This paper introduces how to choose the appropriate signal representation according to the modulation characteristics. The performance of some basic types of neural networks is further studied. 
> G. Shen, J. Zhang, A. Marshall, L. Peng, and X. Wang, “Radio frequency fingerprint identification for LoRa using deep learning,” IEEE J. Sel. Areas Commun., vol. 39, no. 8, pp. 2604–2616, Aug. 2021.

1. LoRa-RFFI. This paper focuses on mitigating the channel effects on LoRa-RFFI. The openset RFFI problem is also discussed.
> G. Shen, J. Zhang, A. Marshall, and J. Cavallaro.   “Towards Scalable and Channel-Robust Radio Frequency Fingerprint Identification for LoRa,” IEEE Trans. Inf. Forensics Security, 2022.



Return to the Main Page of [Radio Frequency Fingerprint Identification](/research/rffi/rffi_main_page/){:target="_blank"}.