---
layout: homelay
permalink: /
title: "About Me"
excerpt: "About me"
description: "Dr Junqing Zhang is a Reader at the University of Liverpool researching wireless security, physical-layer security, RF fingerprinting, and wireless sensing."
redirect_from:
  - /about/
  - /about.html
toc: true
---

Junqing Zhang is a Reader (Associate Professor) in the School of Computer Science and Informatics at the University of Liverpool, UK. He received the PhD degree in Electronics and Electrical Engineering from Queen’s University Belfast, UK in Jan. 2016. His research interests span wireless security, physical-layer security, key generation, radio-frequency fingerprint identification, and wireless sensing. He has authored or co-authored more than 100 peer-reviewed publications, including over 70 journal articles.

His work focuses on developing innovative and practical physical layer security solutions for next-generation wireless systems, aiming for ultra-low energy consumption alongside strong security guarantees. He also explores novel wireless sensing applications using Wi-Fi and mmWave radars. His research leverages a wide range of Internet of Things technologies, including IEEE 802.11a/g/n/ac/ax, LoRa/LoRaWAN, Bluetooth, and IEEE 802.15.4/ZigBee, with particular emphasis on the physical and MAC layers.

Dr. Zhang was a co-recipient of the Best Workshop Paper Award at IEEE WCNC 2025. He serves as a Senior Area Editor for IEEE Transactions on Information Forensics and Security and an Associate Editor for IEEE Transactions on Mobile Computing. He has also taken on key leadership roles, including TPC Symposium Co-Chair of ICNC 2025, ICNC 2026, ICC 2023, and  ICC 2027. In addition, he has served as TPC Co-Chair for several specialized workshops, such as the IEEE INFOCOM 2023–2025 DeepWireless Workshops, the IEEE GLOBECOM/ICC 2024–2025 Wireless Security Workshops, and the IEEE WCNC/PIMRC 2025 Physical Layer Security Workshop.


[//]: ## Call for Paper
[//]: * [IEEE WCNC 2026: Third Workshop on Physical Layer Security for Wireless Communications](https://sites.google.com/view/pls-workshop){:target="_blank"}. Deadline: December 1, 2025
[//]: * [IEEE INFOCOM 2026: The Fourth DeepWireless Workshop on Deep Learning for Wireless Communications, Sensing, and Security](https://sites.google.com/view/deepwireless-workshop){:target="_blank"}. December 29, 2025
[//]: * [IEEE GLOBECOM 2026: The Sixth Workshop on Machine Learning and Deep Learning for Wireless Security](https://sites.google.com/view/ml-dl-wireless-sec/){:target="_blank"}. Deadline: 12 August, 2026


[//]: [Newton International Fellowships](https://royalsociety.org/grants-schemes-awards/grants/newton-international/){:target="_blank"} application will open soon on the 31 January 2023. If you are interested in wireless security and wireless sensing, please drop me an email with your CV.

 
[//]: ## Call for CSC Application
[//]: If you want to do a PhD with us in the area of wireless security and wireless sensing,  please drop me an email with your CV. Pleaes visit [our university website](https://www.liverpool.ac.uk/study/postgraduate-research/fees-and-funding/scholarships-and-awards/the-university-of-liverpool-and-china-scholarship-council-awards/){:target="_blank"} for more information. Deadline: Friday 9 January 2026


## Research Area

<div class="section-card selected-pubs" markdown="1">
Internet of Things

Wireless Security
* Physical Layer Security
* [Key Generation From Wireless Channels](/research/keygen/)
* [Radio-Frequency Fingerprint Identification](/research/rffi/)
* [Physical-Layer Authentication](/research/phy-auth/)

Wireless sensing
* [Wi-Fi Sensing](/research/wifi-sensing/)
* mmWave Radar Sensing

<p style="margin: var(--space-4) 0 0;"><a href="{{ '/research' | relative_url }}">Explore Our Research &rarr;</a></p>
</div>


{% capture selected %}{% bibliography --query @*[selected=true] %}{% endcapture %}
{% if selected contains "pub-entry" %}
## Selected Publications

<div class="section-card selected-pubs" markdown="0">
{{ selected }}
<p style="margin: var(--space-4) 0 0;"><a href="{{ '/publications' | relative_url }}">All publications &rarr;</a></p>
</div>
{% endif %}

## Datasets & Code
<div class="section-card selected-pubs" markdown="0">
We make selected research datasets, source code and experimental resources publicly available to support reproducible research.
<p style="margin: var(--space-4) 0 0;"><a href="{{ '/research/dataset-code/' | relative_url }}">Explore Datasets & Code &rarr;</a></p>
</div>

## Research Demonstration
<div class="section-card selected-pubs" markdown="0">
We are always keen to translate our research into practical applications. We have developed a range of research demonstrations to showcase our technologies and their real-world potential.
<p style="margin: var(--space-4) 0 0;"><a href="{{ '/research-demo/research-demo-main-page/' | relative_url }}">View Research Demonstrations &rarr;</a></p>
</div>


## Contact
Email: junqing.zhang at liverpool.ac.uk  
Web: [https://www.liverpool.ac.uk/people/junqing-zhang](https://www.liverpool.ac.uk/people/junqing-zhang){:target="_blank"} <br>
Tel: 0151 79 57790  
[School of Computer Science and Informatics](https://www.liverpool.ac.uk/computer-science-and-informatics/){:target="_blank"} <br>
University of Liverpool  
Liverpool, L69 3DR  
United Kingdom
