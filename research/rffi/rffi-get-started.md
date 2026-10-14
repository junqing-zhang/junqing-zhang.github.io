---
layout: page
show_last_updated: true
research_section: rffi
title: "How to Construct an RFFI System"
description: "A practical guide to constructing an RFFI system, covering transmitters, SDR receivers, signal collection, preprocessing, and classification."
permalink: /research/rffi/rffi-get-started/
show_last_updated: true
toc: true
categories:
  - Research
  - RFFI
tags:
  - RFFI
---

{% include research-nav.html section="rffi" %}

This page provides a tutorial on how to construct a radio-frequency fingerprint identification (RFFI) system. The implementation depends on the wireless technology and the selected transmitter and receiver platforms. This tutorial provides general guidelines for designing such a system. Read {% cite zhang2023radio %} for more details.

{% include toc title="On this page" %}

As shown below, an RFFI system consists of several devices under test (DUTs) and a receiver. Its objective is to identify or classify the DUTs by analysing the physical-layer signals captured by the receiver.

## General Procedures
- 1A. Building Your Own Testbed
    * 1A.1 Transmitter selection and packet transmisison
    * 1A.2 Verify the wireless transmissions using Wireshark (Optional)
    * 1A.3 Receiver selection and signal-collection programming to capture packets
- 1B. Using Public Datasets
- 2 Design and train a neural network using the training data.
- 3 Evaluate the trained model using the test data, typically through overall accuracy and a confusion matrix.


<figure class="content-figure content-figure--text-column">
  <img src="{{ '/research/rffi/images/RFFI_DL.png' | relative_url }}" width="600" height="396" alt="Deep-learning-based RFFI system workflow" loading="lazy">
  <figcaption>Deep-learning-based RFFI system workflow. <a href="https://arxiv.org/pdf/2207.02999.pdf" target="_blank" rel="noopener">Source</a>.</figcaption>
</figure>

The software workflow involves signal collection, when required, followed by signal processing and machine learning. Collecting a new dataset requires signal-acquisition algorithms to capture wireless waveforms; alternatively, a public dataset can be used.

Deep learning has been widely adopted in RFFI to improve classification accuracy. Please read {% cite zhang2025physical %} (Section V) for a detailed description of deep learning-based RFFI design.


    
## 1A. Building Your Own Testbed
If you are using public datasets, this section can be skipped.
### 1A.1 Transmitter selection and packet transmisison
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

Different development boards use different programming languages and development platforms. The transmitter must be programmed to send wireless packets, often by adapting examples from the manufacturer's documentation. Vendors usually provide the required development software and software development kit (SDK).

For non-programmable devices, traffic can be generated through normal applications. For example, video streaming creates sustained Wi-Fi traffic on a smartphone, while a laptop can generate controlled traffic using the `ping` command.

### 1A.2 Verify the wireless transmissions using Wireshark (Optional)
Before developing the signal-collection software, confirm that the required wireless traffic is present. Wireshark is useful for monitoring and verification, although it may require a separate receiver.
* Wi-Fi Sniffer
* [nRF Sniffer for Bluetooth LE](https://infocenter.nordicsemi.com/topic/ug_sniffer_ble/UG/sniffer_ble/intro.html){:target="_blank"}
* [nRF Sniffer for 802.15.4](https://infocenter.nordicsemi.com/topic/ug_sniffer_802154/UG/sniffer_802154/intro_802154.html){:target="_blank"}

### 1A.3 Receiver selection and signal-collection programming to capture packets
Most COTS gateways, access points, and receivers do not provide access to physical-layer signals. Software-defined radios (SDRs) are therefore commonly used as receivers. An SDR uses a flexible analogue front end to convert the desired radio signal to baseband or an intermediate frequency. An analogue-to-digital converter then samples the signal to produce digital in-phase and quadrature (IQ) samples. Subsequent communication functions, such as packet detection and decoding, are implemented in software, giving researchers access to the physical-layer samples.

The table below summarises several SDRs available in our laboratory. The receiver should be selected according to the target communication technology, such as Wi-Fi, Zigbee, or LoRa. For example, RTL-SDR is unsuitable for Wi-Fi research because of its frequency-range and bandwidth limitations.

| SDR Name         |Rx Frequency Range|Bandwidth| Development Platform                                    |
| -----------------|--------------|---| -------------------- |
| USRP N210+UBX 40 Daughter Board   |10 MHz~6GHz |40 MHz| MATLAB, UHD (C/Python APIs), GNU Radio, LabVIEW, etc.   |
| Zynq+AD9361 |70 MHz~6 GHz|56 MHz| MATLAB, libiio (C/Python APIs), GNU Radio, etc.         |
| ADALM-PLUTO      | 325 MHz~3.8 GHz| 20 MHz| MATLAB, libiio (C/Python APIs), GNU Radio, etc.         |
| RTL-SDR          |22 MHz~2.2 GHz| 3.2 MHz|MATLAB, pyrtlsdr (Python APIs), GNU Radio, etc.          |

Useful material to learn SDR: [https://pysdr.org/index.html](https://pysdr.org/index.html){:target="_blank"}


Software is a critical part of SDR applications. For RFFI research, a signal-reception program is required to capture valid wireless packets. The figure below shows the flow chart of a basic signal-collection program.
<figure class="content-figure content-figure--narrow content-figure--text-column">
  <img src="{{ '/research/rffi/images/signal_collection_program.png' | relative_url }}" width="300" height="500" alt="Flow chart of an SDR signal-collection program" loading="lazy">
  <figcaption>Basic processing flow for an SDR signal-collection program.</figcaption>
</figure>

Packet detection, synchronisation, and carrier-frequency-offset (CFO) compensation can be implemented in MATLAB, Python, or C, depending on the real-time and data-rate requirements. Some applications also require MAC-address decoding to verify that each captured packet originated from the intended DUT. Signals can be stored in formats such as CSV, HDF5, MAT, or text, provided that they can be loaded correctly by the machine-learning module.

MATLAB provides several signal-collection examples. Select the documentation for the target communication protocol and study how each processing stage is implemented:
* [BLE SDR Reception](https://www.mathworks.com/help/bluetooth/ug/bluetooth-low-energy-receiver.html){:target="_blank"}
* [Bluetooth BR/EDR Reception](https://www.mathworks.com/help/bluetooth/ug/bluetooth-br-edr-waveform-reception-by-using-sdr.html){:target="_blank"}
* [Wi-Fi Reception (802.11 a/n/ac/ax)](https://www.mathworks.com/help/wlan/ug/recover-and-analyze-packets-in-802-11-waveform.html){:target="_blank"}
* [ZigBee reception](https://uk.mathworks.com/help/comm/ug/end-to-end-ieee-802-15-4-phy-simulation.html){:target="_blank"}


## 1B. Public Datasets
Several public datasets are available for RFFI research; see the [RFFI datasets page](/research/rffi/rffi-dataset/) for details. Using a public dataset removes the need for signal-acquisition hardware, although a suitable computer is still required for processing and model training.

## Data Augmentation (Training Stage Only)
enhance time-domain signals with different levels of channel and noise effects

## Signal Representation
conver the time-domain signals to frequency-domain representation or time-frequency-domain representation (spectrogram).

## Deep Learning Module

After collecting sufficient signals from the DUTs, a deep-learning classifier can be trained using an architecture such as a CNN, LSTM, GRU, or transformer. Suitable frameworks include PyTorch, TensorFlow, and MATLAB Deep Learning Toolbox. PyTorch and TensorFlow are particularly well supported by their developer communities.

The neural network can operate directly on the collected IQ samples or on features produced through signal processing. For example, a fast Fourier transform (FFT) can convert the received signals into frequency-domain inputs.

If you are new to deep learning, the following introductory resources may be useful.
* [Deep Learning Tutorial for Beginners, Get Started](/resources/deep-learning/dl-get-started/){:target="_blank"}
* [Deep Learning for Beginners](/resources/deep-learning/){:target="_blank"}


Signal collection and machine learning do not need to use the same programming language. For example, MATLAB can collect and save the dataset, which can then be processed in Python for model development.


## Working Examples
The following examples provide implementations for RFFI.
### LoRa RFFI
Please visit our [datasets and code page](/research/dataset-code/) for the RFFI datasets and source code shared by our group.

A good starting example would be [Towards Scalable and Channel-Robust Radio Frequency 
Fingerprint Identification for LoRa](https://github.com/gxhen/LoRa_RFFI){:target="_blank"}. Both dataset and codes are available. Start with the Closed_set_RFFI example. The technical description of the algorithm can be found in {% cite shen2023deep %} and {% cite shen2022scalable %}
.

### Matlab Example
[MATLAB, Detect WLAN Router Impersonation](https://www.mathworks.com/help/comm/ug/design-a-deep-neural-network-with-simulated-data-to-detect-wlan-router-impersonation.html){:target="_blank"}


## References

{% capture readings %}{% bibliography --cited_in_order %}{% endcapture %}
{{ readings | replace: ' reversed="reversed"', '' }}
