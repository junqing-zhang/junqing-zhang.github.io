---
title: 'TI mmWave Radar Sensors - IWR6843AOPEVM'
date: 2022-11-26
permalink: /posts/2022/11/blog-post-ti-mmwave-sensors-iwr6843/
categories:
  - Resources
  - mmWave Radar
tags:
  - TI
  - mmWave Radar
  - IWR6843
---

This page explains how to use IWR6843AOPEVM. 

Features of IWR6843AOPEVM
> * 60-GHz to 64-GHz mmWave sensor
> * 4 receive (RX) 3 transmit (TX) antenna with 120° azimuth field of view (FoV) and 120° elevation FoV
> * Direct interface with MMWAVEICBOOST and DCA1000
> * Supports 60-pin high-speed interface for host-controlling interface
> * Onboard capability for power-consumption monitoring

# Hardware 

| Device                                                                  | Description |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| [IWR6843AOPEVM](http://www.ti.com/tool/IWR6843AOPEVM){:target="_blank"}                   |                                                                                                                                                 |
| [MMWAVEICBOOST](http://www.ti.com/tool/MMWAVEICBOOST){:target="_blank"}, mmWave sensors carrier card platform | Optional, for CCS based debugging|
|[DCA1000](https://www.ti.com/tool/DCA1000EVM){:target="_blank"}| Optional|
| Computer                                                                | Windows 7 or 10 PC with Google Chrome Browser and TI Cloud Agent Extension installed.                                                           |
| Micro USB Cable                                                         |                                                                                                                                                 |
| Power Supply                                                            | 5V, 3A with 2.1-mm barrel jack (center positive). The power supply can be wall adapter style or a battery pack with a USB to barrel jack cable. |


# Software
* Industrial Toolbox from [Out Of Box Demo](https://dev.ti.com/tirex/explore/node?node=A__AP7mJp0Kf9nxqL6UHFfY1g__com.ti.mmwave_industrial_toolbox__VLyFKFf__LATEST){:target="_blank"}
* [Uniflash ](http://www.ti.com/tool/UNIFLASH){:target="_blank"} tool is used for flashing TI mmWave Radar devices with the binary file.
* [Silicon Labs CP210x USB to UART Bridge VCP Drivers](https://www.silabs.com/developers/usb-to-uart-bridge-vcp-drivers?tab=downloads){:target="_blank"}, Please download “CP210x VCP Windows”.

# Physical Setup
This procedure can be done by following the [online tutorial](https://training.ti.com/hardware-setup-iwr6843aop?context=1128486-1139154-1147566){:target="_blank"}. If you are working on different functions, please flash the board with corresponding binary file (.bin).

Notice: 
* Different binary file provides different functions. Sometimes there are not compatible with each other. 
* [Gesture with Machine Learning Demo](https://dev.ti.com/tirex/explore/node?node=A__AB3P8Iq.cVgCtrFYFhvt7Q__com.ti.mmwave_industrial_toolbox__VLyFKFf__LATEST){:target="_blank"} requires `gesture_ML_6443_AOP.bin` file in the address: `MMWAVE_TOOLBOX_INSTALL_DIR>\labs\gesture_recognition\Gesture_with_Machine_Learning\prebuilt_binaries\`

# Cooperation with the pymmWave library
[pymmWave](https://pymmwave.readthedocs.io/en/latest/){:target="_blank"} is an asynchronous TI mmWave library to expedite mmWave development. 

Please flash the sensor with binary file `out_of_box_6843_aop.bin` with the address: 
`<INDUSTRIAL_TOOLBOX_INSTALL_DIR>\mmwave_industrial_toolbox_<VER>\ labs\Out_Of_Box_Demo\prebuilt_binaries\`

Note: The address above is wrong in the user guide in [MMWAVE SDK Demo - Lab User's Guide](https://dev.ti.com/tirex/explore/node?node=A__AP7mJp0Kf9nxqL6UHFfY1g__com.ti.mmwave_industrial_toolbox__VLyFKFf__LATEST){:target="_blank"}. Please follow the address here. 
