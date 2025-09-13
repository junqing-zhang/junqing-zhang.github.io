---
layout: archive
title: "A New Frontier For Internet of Things Security: Far-Flung Key Generation"
permalink: /funding-and-awards/project-epsrc-nia-keygen/
author_profile: true
---
{% include toc %} 

# Overview
* Funder: EPSRC
* Duration: Jan. 2022 to Dec. 2023
* Amount: £310k

please visit the [link](https://gtr.ukri.org/projects?ref=EP%2FV027697%2F1#/tabOverview){:target="_blank"} for more information.

# Summary
The Internet of Things (IoT) has digitally transformed our everyday life with exciting applications such as smart home, connected healthcare, smart cities, manufacturing automation, relying on billions of devices that have become connected over the past decade. Ofcom estimated that the number of IoT devices in the UK will soar from 13 million in 2016 to 156 million in 2024. Low power wide area networks (LPWANs) are new IoT systems with features of low power and wide coverage (over several kilometres). LPWAN accounts one-fourth of the number of IoT devices and the market. Digital Catapult is building the national LPWAN to improve the qualities of our lives and boost the UK economy using LoRaWAN, NB-IoT, and SigFox technologies. Vodafone and Three UK are piloting NB-IoT for a nationwide cellular-based LPWAN.

However, this digital revolution can only be viable if we can provide secure wireless connections. A pair of keys should be established between legitimate devices for encryption and decryption prior to transmissions. Although conventional key distribution schemes, e.g., elliptic curve Diffie Hellman (ECDH) algorithm, are quite mature, they tend to be less suitable for lightweight IoT applications owing to their high complexity. In practice, the pre-shared key (PSK) is often used, which may never refresh the key after its initial configuration. This obviously presents security risks since the key can be revealed, e.g. by side channel attacks. What is worse, many users lack awareness. The UK's first cyber survey in 2019 by the National Cyber Security Centre revealed numerous weak passwords, e.g., 23.2 million victims worldwide used 123456 as their passwords. The vulnerabilities of IoT have resulted in numerous grave security attacks, which have compromised user privacy, adversely affected the economy and undermined the trust in the society. Gartner reported the information security market exceeded $124 billion in 2019.

Indeed, conceiving secure yet low-complexity key distribution for low-cost IoT devices is challenging. It becomes even more difficult and cumbersome if key refreshing is needed, such as in LPWAN where IoT devices are located in a far-flung environment over several kilometres radius and may not be attended. This open challenge can be tackled with a radical and completely different approach, namely key generation from wireless channels, which automatically generates cryptographic keys from unpredictable characteristics of the wireless channel, and thus avoids the conventional key distribution. While key generation has been demonstrated to work well with short-range communications such as WiFi, its exploration with LPWAN technologies such as LoRa and NB-IoT is rather limited, due to the more complicated radio propagation conditions and the affected channel reciprocity. This project hence will bridge this gap by designing scalable, automatic, and lightweight key generation solutions for LPWAN.

This project will be the first systematic study for LPWAN-based key generation. A synergistic approach will be adopted which involves theoretical modelling, algorithm design and experimental validation. The core aspects of this project will include novel mathematical channel correlation models and channel decomposition algorithms as well as new key generation protocols tuned and optimised for LPWAN. Extensive field-measurements will be carried out to evaluate our algorithms. A unique feature of this project will be the creation of viable security solutions for IoT validated by extensive measurements and proof-of-concept prototypes.

# Outcome

## Journal
1. Yijia Guo, **Junqing Zhang**<sup>*</sup>, and Y.-W. Peter Hong, “Practical Physical Layer Authentication for Mobile Scenarios Using a Synthetic Dataset Enhanced Deep Learning Approach,” _IEEE Transactions on Information Forensics and Security_, vol. 20, pp. 9305 - 9317, 2025. [IEEE](https://ieeexplore.ieee.org/document/11141653){:target="_blank"}, [arXiv link](http://arxiv.org/abs/2508.20861){:target="_blank"}, [Dataset](https://ieee-dataport.org/documents/wi-fi-channel-state-information-dataset-mobile-physical-layer-authentication){:target="_blank"}.
1. Tianyu Lu, Liquan Chen, **Junqing Zhang**, Chen Chen, and Trung Q. Duong, “Reconfigurable Intelligent Surface-Assisted Key Generation for Millimetre-Wave Multi-User Systems,” _IEEE Transactions on Information Forensics and Security_,  vol. 19, pp. 5373 - 5388, 2024. [link](https://ieeexplore.ieee.org/document/10520332){:target="_blank"}
1. Yuepei Li, Kai Xu, **Junqing Zhang**, Chongyan Gu, Yuan Ding, George Goussetis, and Symon K. Podilchak, “PUF-Assisted Radio Frequency Fingerprinting Exploiting Power Amplifier Active Load-pulling”, _IEEE Transactions on Information Forensics and Security_, vol. 19, pp. 5015 - 5029, 2024. [link](https://ieeexplore.ieee.org/document/10500472){:target="_blank"}
1. Chen Chen, **Junqing Zhang**<sup>*</sup>, Tianyu Lu, Magnus Sandell, and Liquan Chen, “Secret Key Generation for IRS-Assisted Multi-Antenna Systems: A Machine Learning-Based Approach”, _IEEE Transactions on Information Forensics and Security_, vol. 19, pp. 1086 - 1098, 2024. [IEEE link](https://ieeexplore.ieee.org/document/10315046){:target="_blank"}, [arXiv link](https://arxiv.org/abs/2305.00043){:target="_blank"}
1. Tianyu Lu, Liquan Chen, **Junqing Zhang**, Chen Chen, and Aiqun Hu, “Joint Precoding and Phase Shift Design in Reconfigurable Intelligent Surfaces-Assisted Secret Key Generation”, _IEEE Transactions on Information Forensics and Security_, vol. 18, pp. 3251-3266, Jun. 2023. [IEEE](https://ieeexplore.ieee.org/document/10106070){:target="_blank"}, [arXiv link](https://arxiv.org/abs/2208.00218){:target="_blank"}
1. Xinwei Zhang, Guyue Li, **Junqing Zhang**<sup>*</sup>, Linning Peng, Aiqun Hu and Xianbin Wang, “Enabling Deep Learning-based Physical-layer Secret Key Generation for FDD-OFDM Systems in Multi-Environments”, _IEEE Transactions on Vehicular Technology_, 2024. [arXiv link](https://arxiv.org/abs/2211.03065){:target="_blank"}


## Conference
1. Yijia Guo, **Junqing Zhang**, and Y.-W. Peter Hong, “Deep Learning-Enhanced Physical Layer Authentication for Mobile Devices,” in _Proc. IEEE GLOBECOM_, 2023. 
1. Chen Chen, **Junqing Zhang**<sup>*</sup>, Tianyu Lu, Magnus Sandell, and Liquan Chen, “Secret Key Generation for IRS-Assisted Multi-Antenna Systems: A Machine Learning-Based Approach”, _IEEE Transactions on Information Forensics and Security_, vol. 19, pp. 1086 - 1098, 2024. [IEEE link](https://ieeexplore.ieee.org/document/10315046){:target="_blank"}, [arXiv link](https://arxiv.org/abs/2305.00043){:target="_blank"}
1. Tianyu Lu, Liquan Chen, **Junqing Zhang**, Chen Chen, Trung Q. Duong, and Michail Matthaiou, “Precoding Design for Key Generation in Near-Field Extremely Large-Scale MIMO Communications,” in _Proc. IEEE GLOBECOM Workshop_, 2023. 
1. Tianyu Lu, Liquan Chen, **Junqing Zhang**, Chen Chen, and Trung Duong, “Reconfigurable Intelligent Surface-Assisted Key Generation for Millimeter Wave Communications”, in _Proc. IEEE WCNC Workshop_, 2023. [link](https://ieeexplore.ieee.org/document/10119128){:target="_blank"}
1. Hongyi Luo, Guyue Li, Yuexiu Xing, **Junqing Zhang**, Aiqun Hu, and Xianbin Wang, “RelativeRFF: Multi-Antenna Device Identification in Multipath Propagation Scenarios”, in _Proc. IEEE ICC_, 2023.
1. Jie Ma, **Junqing Zhang**, Guanxiong Shen, Alan Marshall, and Chip-Hong Chang, “White-Box Adversarial Attacks on Deep Learning-Based Radio Frequency Fingerprint Identification”, in _Proc. IEEE ICC_, 2023.

