---
layout: page
show_last_updated: true
research_section: rffi
title: "How to Construct an RFFI System"
description: "A practical guide to constructing an RFFI system, covering transmitters, SDR receivers, signal collection, preprocessing, and classification."
permalink: /research/rffi/rffi-get-started/
math: true
toc: true
categories:
  - Research
  - RFFI
tags:
  - RFFI
---

{% include research-nav.html section="rffi" %}

This tutorial explains how to construct a radio-frequency fingerprint identification (RFFI) system, from obtaining signals to evaluating a trained classifier. The implementation depends on the wireless technology and the selected transmitter and receiver platforms. For further background, see {% cite zhang2023radio %}.

For an end-to-end starting point, follow the [LoRa RFFI example](#lora-rffi) below. It provides a dataset and source code, so you can try the classification workflow before building a signal-collection testbed.

{% include toc title="On this page" %}

As shown below, an RFFI testbed consists of several devices under test (DUTs) and a receiver. The system identifies the transmitting device by analysing hardware-related characteristics in the physical-layer signals captured by the receiver.

<figure class="content-figure content-figure--text-column">
  <img src="{{ '/research/rffi/images/RFFI_DL.png' | relative_url }}" width="600" height="396" alt="Deep-learning-based RFFI system workflow" loading="lazy">
  <figcaption>Deep-learning-based RFFI system workflow.</figcaption>
</figure>


## General Procedures
Developing a deep learning-based RFFI system involves obtaining a dataset, preparing the signals, training a classifier, and evaluating its performance. You can collect your own signals or use a public dataset. For a detailed discussion of deep learning-based RFFI design, see Section V of {% cite zhang2025physical %}.

The data used to develop a deep learning-based RFFI system are divided into three sets with distinct roles:

- **Training set:** used to fit the classifier.
- **Validation set:** used to select preprocessing choices and model settings, and to decide when to stop training.
- **Test set:** held out until the final evaluation to assess the selected model's performance.

This tutorial focuses on closed-set identification: every device to be identified during testing is represented during training. Plan the dataset split when collecting or selecting data, and include each device class in all three sets. For example, if the aim is to identify devices in future recording sessions, reserve separate sessions for validation and testing rather than randomly mixing packets from every session. Keep overlapping signal windows and augmented versions of the same packet in the same set.

Whether you collect your own data or use a public dataset, the workflow is as follows:

- 1A. Build your own testbed to collect signals, or 1B. use a public dataset.
- 2 Preprocess the signals, optionally augment the time-domain training signals, and choose a signal representation.
- 3 Train a classifier using the prepared training data.
- 4 Evaluate the classifier on held-out test data using accuracy and a confusion matrix.


    
## 1A. Building Your Own Testbed
If you are using public datasets, this section can be skipped.

### 1A.1 Transmitter Selection and Packet Transmission
Many wireless devices can be used as DUTs. Although a custom device can be built, commercial off-the-shelf (COTS) development boards and kits usually reduce implementation time.

Some DUTs allow direct control over packet transmission through firmware, while others require traffic to be generated through ordinary applications. Examples of vendors and platforms that support programmable transmission are listed below. Available wireless technologies depend on the selected board or chip.

* [Texas Instruments](https://www.ti.com/wireless-connectivity/overview.html){:target="_blank"}: Wi-Fi, Bluetooth, ZigBee
* [Nordic Semiconductor](https://www.nordicsemi.com/Products){:target="_blank"}: cellular IoT, Bluetooth, and IEEE 802.15.4 platforms
* [Pycom boards](https://pycom.io/product-category/shop/development-boards/){:target="_blank"}: Wi-Fi, Bluetooth, LoRa, Sigfox and dual LTE-M (CAT-M1 and NB-IoT). (Discontinued)
* [ESP32](https://www.espressif.com/en/products/socs/esp32){:target="_blank"}: Wi-Fi and Bluetooth

The table below summarises LoRa boards and development platforms used in RFFI research. The Pycom boards are legacy options; check hardware availability and toolchain support before choosing a platform for a new testbed.

| Board or Platform | Development Environment | Documentation |
| ----------------- | ----------------------- | ------------- |
| Pycom LoPy4 (legacy) | MicroPython (Python) | [LoRa API](https://docs.pycom.io/firmwareapi/pycom/network/lora/){:target="_blank"} |
| Pycom FiPy (legacy) | MicroPython (Python) | [LoRa API](https://docs.pycom.io/firmwareapi/pycom/network/lora/){:target="_blank"} |
| Dragino LoRa Shield | Arduino (C/C++) | [Code examples](https://wiki1.dragino.com/index.php?title=Lora_Shield#Example1_--_Use_with_LMIC_library_for_LoRaWAN_compatible){:target="_blank"} |
| Semtech SX1276MB1xAS evaluation board | Mbed (C/C++; legacy example) | [Board and library documentation](https://os.mbed.com/components/SX1276MB1xAS/){:target="_blank"} |

Consumer devices such as smartphones can also serve as DUTs using their Wi-Fi or Bluetooth radios.

Different development boards use different programming languages and development platforms. For programmable DUTs, configure the firmware to send wireless packets, often by adapting examples from the manufacturer's documentation. Vendors usually provide the required development software and software development kit (SDK).

When firmware control is unavailable, traffic can be generated through ordinary applications. For example, video streaming creates sustained Wi-Fi traffic on a smartphone, while a laptop connected over Wi-Fi can generate traffic using the `ping` command.

### 1A.2 Verify Wireless Transmissions Using Wireshark (Optional)
Before developing the signal-collection software, confirm that the required wireless traffic is present. Wireshark is useful for monitoring and verification, although it may require a separate receiver.

* A Wi-Fi adapter that supports monitor mode, with compatible capture software and drivers
* [nRF Sniffer for Bluetooth LE](https://infocenter.nordicsemi.com/topic/ug_sniffer_ble/UG/sniffer_ble/intro.html){:target="_blank"}
* [nRF Sniffer for 802.15.4](https://infocenter.nordicsemi.com/topic/ug_sniffer_802154/UG/sniffer_802154/intro_802154.html){:target="_blank"}

### 1A.3 Receiver Selection and Signal Collection
Most COTS gateways, access points, and receivers do not provide access to physical-layer signals. Software-defined radios (SDRs) are therefore commonly used as receivers. An SDR uses a flexible analogue front end to convert the desired radio signal to baseband or an intermediate frequency. An analogue-to-digital converter then samples the signal to produce digital in-phase and quadrature (IQ) samples. Subsequent communication functions, such as packet detection and decoding, are implemented in software, giving researchers access to the physical-layer samples.

The table below summarises several SDRs available in our laboratory. The receiver should be selected according to the target communication technology, such as Wi-Fi, Zigbee, or LoRa. For example, RTL-SDR is unsuitable for Wi-Fi research because of its frequency-range and bandwidth limitations.

| SDR Platform | Nominal Receive Frequency Range | Nominal RF Bandwidth | Development Tools |
| ------------ | ------------------------------- | -------------------- | ----------------- |
| USRP N210 with UBX-40 daughterboard | 10 MHz–6 GHz | 40 MHz | MATLAB, UHD (C/C++ and Python APIs), GNU Radio, LabVIEW |
| Zynq-based platform with AD9361 | 70 MHz–6 GHz (transceiver specification) | Up to 56 MHz | MATLAB, libiio (C and Python APIs), GNU Radio |
| ADALM-PLUTO | 325 MHz–3.8 GHz | Up to 20 MHz | MATLAB, libiio (C and Python APIs), GNU Radio |
| RTL-SDR | 22 MHz~2.2 GHz | 3.2 MHz | MATLAB, pyrtlsdr (Python API), GNU Radio |

These RF bandwidths do not necessarily equal the bandwidth that can be continuously captured on a host PC. The interface, sample format, sample rate, and storage speed also constrain capture. For example, the N210 supports streaming up to 25 MS/s with 16-bit complex samples or 50 MS/s with 8-bit complex samples; its UBX-40 daughterboard has a nominal RF bandwidth of 40 MHz. See the [Ettus device-selection guide](https://kb.ettus.com/Selecting_a_USRP_Device){:target="_blank"} and [UBX-40 specifications](https://www.ettus.com/all-products/ubx40/){:target="_blank"}. For the Analog Devices platforms, see the [AD9361 specifications](https://www.analog.com/en/products/ad9361.html){:target="_blank"} and [ADALM-PLUTO hardware documentation](https://wiki.analog.com/university/tools/pluto/hacking/hardware){:target="_blank"}; the carrier board and host interface determine the sustained capture rate.

For an introduction to SDR and digital signal processing, see [PySDR](https://pysdr.org/index.html){:target="_blank"}.

The laboratory setups described here typically use a host PC to configure the SDR, receive samples, and store recordings. Some SDR platforms include embedded processors and can support standalone applications, depending on their software and hardware configuration. For RFFI research, a signal-reception program is required to capture valid wireless packets. The figure below shows the flow chart of a basic signal-collection program.
<figure class="content-figure content-figure--narrow content-figure--text-column">
  <img src="{{ '/research/rffi/images/signal_collection_program.png' | relative_url }}" width="300" height="500" alt="Flow chart of an SDR signal-collection program" loading="lazy">
  <figcaption>Basic processing flow for an SDR signal-collection program.</figcaption>
</figure>

Packet detection, synchronisation, and carrier-frequency-offset (CFO) compensation can be implemented in MATLAB, Python, or C, depending on the real-time and data-rate requirements. These operations may run during collection or offline as part of signal preparation. To establish device labels, capture one DUT at a time or decode packet identifiers, such as MAC addresses where applicable. Use these identifiers to label the data, and exclude them from classifier inputs intended to measure RF fingerprints. Signals can be stored in formats such as CSV, HDF5, MAT, or text, provided that the complex IQ values and associated metadata can be recovered correctly.

MATLAB provides examples of SDR reception and waveform processing. Select the documentation for the target communication protocol and study how each processing stage is implemented:

* [BLE SDR Reception](https://www.mathworks.com/help/bluetooth/ug/bluetooth-low-energy-receiver.html){:target="_blank"}
* [Bluetooth BR/EDR Reception](https://www.mathworks.com/help/bluetooth/ug/bluetooth-br-edr-waveform-reception-by-using-sdr.html){:target="_blank"}
* [Wi-Fi Reception (802.11 a/n/ac/ax)](https://www.mathworks.com/help/wlan/ug/recover-and-analyze-packets-in-802-11-waveform.html){:target="_blank"}
* [IEEE 802.15.4 PHY simulation](https://www.mathworks.com/help/comm/ug/link-level-ieee-802-15-4-phy-simulation.html){:target="_blank"} (waveform generation and decoding, rather than live SDR capture)


## 1B. Public Datasets
Several public datasets are available for RFFI research; see the [RFFI datasets page](/research/rffi/rffi-dataset/) for details. Using a public dataset removes the need for signal-acquisition hardware, although a suitable computer is still required for processing and model training.

Before processing a dataset, check its IQ format, sample rate, device labels, recording conditions, and any preprocessing already applied. Use the published training, validation, and test splits when reproducing a benchmark; otherwise, define and document a split suited to the intended evaluation.

## 2. Signal Preparation

### 2.1 Preprocessing

If the recordings have not already been segmented, detect packets and extract a consistent region, such as the preamble. Use the same segmentation rule and input length for every DUT so that inputs can be compared consistently. Preserve device labels and recording metadata, including the session, receiver, channel, sample rate, and gain settings where available.

Depending on the waveform and model, preprocessing may include timing synchronisation, amplitude normalisation, and carrier-frequency-offset (CFO) compensation. These steps are optional design choices: normalisation can reduce sensitivity to received power, while CFO compensation can also remove information that a classifier might otherwise use as a fingerprint. Document the selected steps and apply them consistently during training and evaluation.

Fit any data-dependent preprocessing parameters, such as normalisation statistics, using the training set alone, then apply those parameters to the validation and test sets.

### 2.2 Data Augmentation (Training Only)

Apply data augmentation to the time-domain IQ samples in the training set before converting them to another signal representation. This can increase signal diversity by simulating different channel conditions and noise levels. For example, a channel model can use a time-varying impulse response $h(\tau, t)$, where $\tau$ denotes propagation delay and $t$ denotes time, to simulate multipath effects.

Augmentation is optional and may be less useful when the training dataset already covers the expected operating conditions. Choose transformations that preserve the device label and relevant hardware characteristics, and assess their benefit on the validation set. Apply augmentation only to the training data after splitting the dataset; retain validation and test data for evaluation under clearly specified conditions.

Read Section V.A of {% cite shen2022scalable %} and Section V.C of {% cite zhang2025physical %} for more information.

### 2.3 Signal Representation

The neural network can take time-domain IQ samples directly or use representations derived through signal processing. For example, a fast Fourier transform (FFT) produces a frequency-domain representation, while a short-time Fourier transform (STFT) produces a time–frequency representation such as a spectrogram. Choose the representation according to the waveform and model, and record its parameters so the same transformation can be reproduced at inference time.

Read Section V.D of {% cite zhang2025physical %} for more information.

## 3. Classifier Training

A deep learning classifier can be trained using an architecture such as a convolutional neural network (CNN), long short-term memory (LSTM) network, gated recurrent unit (GRU) network, or transformer. Suitable frameworks include PyTorch, TensorFlow, and MATLAB Deep Learning Toolbox.

Train the model using the training set and monitor its performance on the validation set to select model settings and decide when to stop training. Record the architecture, optimiser, learning rate, batch size, random seed, and preprocessing settings so the experiment can be reproduced.

If you are new to deep learning, the following introductory resources may be useful:

* [Deep Learning Tutorial for Beginners, Get Started](/resources/deep-learning/dl-get-started/){:target="_blank"}
* [Deep Learning for Beginners](/resources/deep-learning/){:target="_blank"}


## 4. Evaluation

Evaluate the selected model on the held-out test set. Report the number of devices and packets per device, the dataset split, and the recording conditions so readers can interpret the result.

- **Overall accuracy:** the fraction of test packets assigned to the correct device. If the class sizes differ substantially, also report per-device recall or balanced accuracy so that larger classes do not dominate the result.
- **Confusion matrix:** show which devices are confused with one another. Label both axes clearly; if rows represent true devices, row-normalised values show the prediction distribution for each device.
- **Generalisation:** state whether test recordings use different sessions, channels, locations, or receivers from training. Results from randomly split packets within a recording do not establish performance under these changes. Where relevant, evaluate each change separately.

Keep the test set separate from model selection. For repeated runs, report the mean and variability across random seeds or predefined splits. If extending the system to recognise previously unseen devices, use a separate evaluation protocol that measures unknown-device rejection as well as identification of known devices.

## Working Examples
The following examples provide implementations for RFFI.
### LoRa RFFI
Please visit our [datasets and code page](/research/dataset-code/) for the RFFI datasets and source code shared by our group.

A good starting point is [Towards Scalable and Channel-Robust Radio Frequency Fingerprint Identification for LoRa](https://github.com/gxhen/LoRa_RFFI){:target="_blank"}. Both the dataset and source code are available. Start with the `Closed_set_RFFI` example. Technical descriptions of the algorithms can be found in {% cite shen2023deep %} and {% cite shen2022scalable %}.

### MATLAB Example
[MATLAB, Detect WLAN Router Impersonation](https://www.mathworks.com/help/comm/ug/design-a-deep-neural-network-with-simulated-data-to-detect-wlan-router-impersonation.html){:target="_blank"}


## References

{% capture readings %}{% bibliography --cited_in_order %}{% endcapture %}
{{ readings | replace: ' reversed="reversed"', '' }}
