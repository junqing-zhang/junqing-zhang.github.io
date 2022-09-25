---
title: "Tutorial: How to Construct an RFFI System"
permalink: /rffi/rffi-tutorial/
date: 2022-09-23
author_profile: true
toc: true
categories:
  - Research
  - RFFI
tags:
  - RFFI
---

This page provides a tutorial on how to construct an Radio Frequency Fingerprinting Identification (RFFI) system.

# Overview
An RFFI system consists of several device under tests (DUTs) and a receiver. The goal of the RFFI system is to correctly identify/classify these DUTs by analyzing the physical layer signals captured by the receiver.

# Hardware
## Transmitter (DUTs)
To facilitate the control of transmitting parameters, we usually use the commercial-of-the-shelf (COTS) development boards as the DUTs to be identified. Depending on your application, there are a lot of COTS development boards available to choose from. Different development boards require different development languages/platforms. You need to program the transmitter to send wireless packets, which you can do by modifying the examples provided in the official documentation.





## Receiver
Most of COTS gateway/access point/receiver do not provide an interface to the physical layer signals. Therefore, software-defined radio (SDR) devices are usually leveraged as receivers. Most SDR platforms use a flexible analog front-end to tune the desired radio signal to baseband or intermediate frequency, which is then sampled by an ADC and converted to the digital domain (IQ samples). All the rest procedures of the communication system, such as packet detection and decoding, are implemented by software. The SDR-based receiver enables users to access the physical layer IQ samples. 

Table below summarizes some SDRs avaiable in our lab. You should select an appropriate SDR based on the target communication technology, e.g., Wi-Fi, Zigbee, LoRa. For example, RTL-SDR cannot be used for Wi-Fi research due to its frequency range and bandwidth limitations.

| SDR Name         |Rx Frequency Range|Bandwidth| Development Platform                                    |
| -----------------|--------------|---| -------------------- |
| USRP N210+UBX 40 Daughter Board   |10 MHz~6GHz |40 MHz| MATLAB, UHD (C/Python APIs), GNU Radio, LabVIEW, etc.   |
| Zynq+AD9361 |70 MHz~6 GHz|56 MHz| MATLAB, libiio (C/Python APIs), GNU Radio, etc.         |
| ADALM-PLUTO      | 325 MHz~3.8 GHz| 20 MHz| MATLAB, libiio (C/Python APIs), GNU Radio, etc.         |
| RTL-SDR          |22 MHz~2.2 GHz| 3.2 MHz|MATLAB, pyrtlsdr (Python APIs), GNU Radio, etc.          |

Useful material to learn SDR: https://pysdr.org/index.html


# Software
## Signal Collection Module

The software is a critical part for SDR applications. Specific to RFFI research, you need to write the signal receiving program to capture the valid wireless packets. Figure below shows the flow chart of a basic signal collection program. 
<div  align="center">    
 <img src="{{ site.url }}/images/rffi/signal_collection_program.png" width = "300" height = "500" alt="signal_collection_program" align=center />
 </div>

The packet detection, synchronization and carrifer frequency offset (CFO) compensation algorithms can be implemented by MATLAB/Python/C, depending on the demand for real-time performance and collection speed. Note that for some applications, MAC address decoding is also required to ensure that the captured packets are sent from the correct DUT and not from another device. The signals can be saved in any format such as .csv, .hdf5, .mat, .txt, etc., as long as they can be correctly loaded by the deep learning module. 

MATLAB provides a number of example codes for signal collection, you can find the documentation for your target communication protocol and try to understand every line of the program:
1. BLE SDR Reception: https://www.mathworks.com/help/bluetooth/ug/bluetooth-low-energy-receiver.html
2. Bluetooth BR/EDR Reception: https://www.mathworks.com/help/bluetooth/ug/bluetooth-br-edr-waveform-reception-by-using-sdr.html
3. Wi-Fi Reception (802.11 a/n/ac/ax): https://www.mathworks.com/help/wlan/ug/recover-and-analyze-packets-in-802-11-waveform.html


## Deep Learning Module

After collecting sufficient signals from the DUTs, you can start to train a deep learning model for classification. The deep learning model can be implemented by numerous libraries/frameworks such as PyTorch, Tensorflow, MATLAB deep learning toolbox, Caffe, etc.. PyTorch and Tensorflow are strongly recommended because of their active community.

The input to the neural network can be the collected IQ samples, and you can also do some signal processing before that. For example, you can perform a fast Fourier transform (FFT) on the received signals and transform them into frequency domain as neural network inputs.

Learning materials: 
1. MATLAB, Detect WLAN Router Impersonation: https://www.mathworks.com/help/comm/ug/design-a-deep-neural-network-with-simulated-data-to-detect-wlan-router-impersonation.html
2. Tensorflow, Towards Scalable and Channel-Robust Radio Frequency 
Fingerprint Identification for LoRa: https://github.com/gxhen/LoRa_RFFI

# General Procedures

With the above preparations, we can build a basic RFFI system. Please do follow the instructions below step by step:
1. Program to make the development board to start transmitting packets. You can confirm this by using Wireshark or using another development board as the receiver. For Wi-Fi and Bluetooth applications, you can even use your mobile phone.
2. Write the signal collection program to capture the packets sent from development boards.
3. Collect packets from all the DUTs, saving the IQ samples as the training/test datasets.
4. Design a neural network and train it with the collected training data.
5. Test the neural network with the collected test data. The classification problem is usually evaluted by overall accuracy and confusion matrix.
