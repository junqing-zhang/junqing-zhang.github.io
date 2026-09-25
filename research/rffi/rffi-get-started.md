---
layout: page
show_last_updated: true
research_section: rffi
title: "How to Construct an RFFI System"
description: "A practical guide to constructing an RFFI system, covering transmitters, SDR receivers, signal collection, preprocessing, and classification."
permalink: /research/rffi/rffi-get-started/
date: 2025-09-27
toc: true
categories:
  - Research
  - RFFI
tags:
  - RFFI
---

{% include research-nav.html section="rffi" %}

This page provides a tutorial on how to construct a radio-frequency fingerprint identification (RFFI) system. The implementation depends on the wireless technology and the selected transmitter and receiver platforms. This tutorial provides general guidelines for designing such a system.

{% include toc title="On this page" %}

## Overview
As shown below, an RFFI system consists of several devices under test (DUTs) and a receiver. Its objective is to identify or classify the DUTs by analysing the physical-layer signals captured by the receiver.

<figure class="content-figure content-figure--text-column">
  <img src="{{ '/research/rffi/images/RFFI_DL.png' | relative_url }}" width="600" height="396" alt="Deep-learning-based RFFI system workflow" loading="lazy">
  <figcaption>Deep-learning-based RFFI system workflow. <a href="https://arxiv.org/pdf/2207.02999.pdf" target="_blank" rel="noopener">Source</a>.</figcaption>
</figure>

The software workflow involves signal collection, when required, followed by signal processing and machine learning. Collecting a new dataset requires signal-acquisition algorithms to capture wireless waveforms; alternatively, a public dataset can be used. Deep learning has been widely adopted in RFFI to improve classification accuracy.


## Transmitter (DUTs)
### Hardware 
Many wireless devices can be used as DUTs. Although a custom device can be built, commercial off-the-shelf (COTS) development boards and kits usually reduce implementation time.

In general, they can be categorized into programmable and non-programmable. Vendors with programmable devices are listed as follows.
* [Texas Instruments](https://www.ti.com/wireless-connectivity/overview.html){:target="_blank"}: Wi-Fi, Bluetooth, ZigBee
* [Nordic Semiconductor](https://www.nordicsemi.com/Products){:target="_blank"}: LTE-M, NB-IoT, GPS, Bluetooth, ZigBee
* [Pycom boards](https://pycom.io/product-category/shop/development-boards/){:target="_blank"}: Wi-Fi, Bluetooth, LoRa, Sigfox and dual LTE-M (CAT-M1 and NB-IoT). (Discontinued)
* [ESP32](https://www.espressif.com/en/products/socs/esp32){:target="_blank"}: Wi-Fi and Bluetooth

The table below summarises several LoRa development boards suitable for RFFI research.

| Board Name      | Platform and Programming Language|Link |
| -----------------| -------------------- |-------------------- |
| Pycom LoPy4     | Micropython (Python)   | [https://docs.pycom.io/firmwareapi/pycom/network/lora/](https://docs.pycom.io/firmwareapi/pycom/network/lora/){:target="_blank"}
| Pycom FiPy | Micropython (Python)|[https://docs.pycom.io/firmwareapi/pycom/network/lora/](https://docs.pycom.io/firmwareapi/pycom/network/lora/){:target="_blank"}|
| Dragino LoRa Shields| Arduino (C) |[Code Examples](https://wiki1.dragino.com/index.php?title=Lora_Shield#Example1_--_Use_with_LMIC_library_for_LoRaWAN_compatible){:target="_blank"}|
| Semtech LoRa Transceivers | Mbed (C)|Libraries vary with the boards (chips), e.g., [SX1276MB1xAS](https://os.mbed.com/components/SX1276MB1xAS/){:target="_blank"}|

Non-programmable devices can also be used. For example, our smartphones support Wi-Fi and Bluetooth. 

### Software
Different development boards use different programming languages and development platforms. The transmitter must be programmed to send wireless packets, often by adapting examples from the manufacturer's documentation. Vendors usually provide the required development software and software development kit (SDK).

For non-programmable devices, traffic can be generated through normal applications. For example, video streaming creates sustained Wi-Fi traffic on a smartphone, while a laptop can generate controlled traffic using the `ping` command.


## Receiver
### Hardware
Most COTS gateways, access points, and receivers do not provide access to physical-layer signals. Software-defined radios (SDRs) are therefore commonly used as receivers. An SDR uses a flexible analogue front end to convert the desired radio signal to baseband or an intermediate frequency. An analogue-to-digital converter then samples the signal to produce digital in-phase and quadrature (IQ) samples. Subsequent communication functions, such as packet detection and decoding, are implemented in software, giving researchers access to the physical-layer samples.

The table below summarises several SDRs available in our laboratory. The receiver should be selected according to the target communication technology, such as Wi-Fi, Zigbee, or LoRa. For example, RTL-SDR is unsuitable for Wi-Fi research because of its frequency-range and bandwidth limitations.

| SDR Name         |Rx Frequency Range|Bandwidth| Development Platform                                    |
| -----------------|--------------|---| -------------------- |
| USRP N210+UBX 40 Daughter Board   |10 MHz~6GHz |40 MHz| MATLAB, UHD (C/Python APIs), GNU Radio, LabVIEW, etc.   |
| Zynq+AD9361 |70 MHz~6 GHz|56 MHz| MATLAB, libiio (C/Python APIs), GNU Radio, etc.         |
| ADALM-PLUTO      | 325 MHz~3.8 GHz| 20 MHz| MATLAB, libiio (C/Python APIs), GNU Radio, etc.         |
| RTL-SDR          |22 MHz~2.2 GHz| 3.2 MHz|MATLAB, pyrtlsdr (Python APIs), GNU Radio, etc.          |

Useful material to learn SDR: [https://pysdr.org/index.html](https://pysdr.org/index.html){:target="_blank"}


### Software

#### Signal Collection Module
Software is a critical part of SDR applications. For RFFI research, a signal-reception program is required to capture valid wireless packets. The figure below shows the flow chart of a basic signal-collection program.
<figure class="content-figure content-figure--narrow">
  <img src="{{ '/research/rffi/images/signal_collection_program.png' | relative_url }}" width="300" height="500" alt="Flow chart of an SDR signal-collection program" loading="lazy">
  <figcaption>Basic processing flow for an SDR signal-collection program.</figcaption>
</figure>

Packet detection, synchronisation, and carrier-frequency-offset (CFO) compensation can be implemented in MATLAB, Python, or C, depending on the real-time and data-rate requirements. Some applications also require MAC-address decoding to verify that each captured packet originated from the intended DUT. Signals can be stored in formats such as CSV, HDF5, MAT, or text, provided that they can be loaded correctly by the machine-learning module.

MATLAB provides several signal-collection examples. Select the documentation for the target communication protocol and study how each processing stage is implemented:
* [BLE SDR Reception](https://www.mathworks.com/help/bluetooth/ug/bluetooth-low-energy-receiver.html){:target="_blank"}
* [Bluetooth BR/EDR Reception](https://www.mathworks.com/help/bluetooth/ug/bluetooth-br-edr-waveform-reception-by-using-sdr.html){:target="_blank"}
* [Wi-Fi Reception (802.11 a/n/ac/ax)](https://www.mathworks.com/help/wlan/ug/recover-and-analyze-packets-in-802-11-waveform.html){:target="_blank"}
* [ZigBee reception](https://uk.mathworks.com/help/comm/ug/end-to-end-ieee-802-15-4-phy-simulation.html){:target="_blank"}

#### Deep Learning Module

After collecting sufficient signals from the DUTs, a deep-learning classifier can be trained using an architecture such as a CNN, LSTM, GRU, or transformer. Suitable frameworks include PyTorch, TensorFlow, and MATLAB Deep Learning Toolbox. PyTorch and TensorFlow are particularly well supported by their developer communities.

The neural network can operate directly on the collected IQ samples or on features produced through signal processing. For example, a fast Fourier transform (FFT) can convert the received signals into frequency-domain inputs.

If you are new to deep learning, the following introductory resources may be useful.
* [Deep Learning Tutorial for Beginners, Get Started](/resources/deep-learning/dl-get-started/){:target="_blank"}
* [Deep Learning for Beginners](/resources/deep-learning/){:target="_blank"}

The following two examples provide implementations for RFFI:
1. [MATLAB, Detect WLAN Router Impersonation](https://www.mathworks.com/help/comm/ug/design-a-deep-neural-network-with-simulated-data-to-detect-wlan-router-impersonation.html){:target="_blank"}
2. [Tensorflow, Towards Scalable and Channel-Robust Radio Frequency 
Fingerprint Identification for LoRa](https://github.com/gxhen/LoRa_RFFI){:target="_blank"}

### Note
Signal collection and machine learning do not need to use the same programming language. For example, MATLAB can collect and save the dataset, which can then be processed in Python for model development.

## Wireless Monitoring (Optional)
Before developing the signal-collection software, confirm that the required wireless traffic is present. Wireshark is useful for monitoring and verification, although it may require a separate receiver.
* Wi-Fi Sniffer
* [nRF Sniffer for Bluetooth LE](https://infocenter.nordicsemi.com/topic/ug_sniffer_ble/UG/sniffer_ble/intro.html){:target="_blank"}
* [nRF Sniffer for 802.15.4](https://infocenter.nordicsemi.com/topic/ug_sniffer_802154/UG/sniffer_802154/intro_802154.html){:target="_blank"}


## Public Datasets
Several public datasets are available for RFFI research; see the [RFFI datasets page](/research/rffi/rffi-dataset/) for details. Using a public dataset removes the need for signal-acquisition hardware, although a suitable computer is still required for processing and model training.

## General Procedures
1. Program the development boards to transmit packets.
1. Optionally verify the wireless transmissions using Wireshark.
1. Develop the signal-collection program to capture packets from the development boards.
1. Collect packets from all DUTs and save the IQ samples as training and test datasets.
1. Design and train a neural network using the training data.
1. Evaluate the trained model using the test data, typically through overall accuracy and a confusion matrix.

Steps 1-4 are not required if you are using public datasets.


## Recommended Readings
1. Guanxiong Shen, **Junqing Zhang**<sup>*</sup>, and Alan Marshall, “Deep Learning-Powered Radio Frequency Fingerprint Identification: Methodology and Case Study,” _IEEE Communications Magazine_, [IEEE](https://ieeexplore.ieee.org/document/10144511){:target="_blank"}

1. J. Zhang, R. Woods, M. Sandell, M. Valkama, A. Marshall, and J. Cavallaro, “Radio frequency fingerprint identification for narrowband systems, modelling and classification,” IEEE Trans. Inf. Forensics Security, vol. 16, pp. 3974–3987, 2021
> This paper systematically models the hardware impairments of narrowband transmitters and receivers, providing a deeper understanding of the principles underlying RFFI.

1. G. Shen, J. Zhang, A. Marshall, L. Peng, and X. Wang, “Radio frequency fingerprint identification for LoRa using deep learning,” IEEE J. Sel. Areas Commun., vol. 39, no. 8, pp. 2604–2616, Aug. 2021.
> This LoRa-RFFI study explains how to select a signal representation according to the modulation characteristics and compares several basic neural-network architectures.

1. G. Shen, J. Zhang, A. Marshall, and J. Cavallaro.   “Towards Scalable and Channel-Robust Radio Frequency Fingerprint Identification for LoRa,” IEEE Trans. Inf. Forensics Security, 2022.
> This LoRa-RFFI study focuses on mitigating channel effects and also examines open-set recognition.

## Datasets and Code
Please visit our [datasets and code page](/research/dataset-code/) for the RFFI datasets and source code shared by our group.
