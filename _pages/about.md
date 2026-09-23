---
layout: homelay
permalink: /
title: "About Me"
excerpt: "About me"
description: "Dr Junqing Zhang is a Reader at the University of Liverpool researching wireless security, physical-layer security, RF fingerprinting, and wireless sensing."
toc: true
---

Junqing Zhang is a Reader (Associate Professor) in the School of Computer Science and Informatics at the University of Liverpool, UK. He received his PhD degree from Queen’s University Belfast in 2016. His research interests include wireless security and sensing, with particular emphasis on physical-layer security, radio-frequency fingerprint identification, secret key generation, and Wi-Fi sensing.

His research combines wireless communications, signal processing, and machine learning to develop secure and intelligent wireless systems, with a strong emphasis on experimental validation using practical wireless devices and testbeds. He has published more than 100 research papers and serves as a Senior Area Editor for IEEE Transactions on Information Forensics and Security and an Associate Editor for IEEE Transactions on Mobile Computing.


[//]: ## Call for Paper
[//]: * [IEEE WCNC 2026: Third Workshop on Physical Layer Security for Wireless Communications](https://sites.google.com/view/pls-workshop){:target="_blank"}. Deadline: December 1, 2025
[//]: * [IEEE INFOCOM 2026: The Fourth DeepWireless Workshop on Deep Learning for Wireless Communications, Sensing, and Security](https://sites.google.com/view/deepwireless-workshop){:target="_blank"}. December 29, 2025
[//]: * [IEEE GLOBECOM 2026: The Sixth Workshop on Machine Learning and Deep Learning for Wireless Security](https://sites.google.com/view/ml-dl-wireless-sec/){:target="_blank"}. Deadline: 12 August, 2026


[//]: [Newton International Fellowships](https://royalsociety.org/grants-schemes-awards/grants/newton-international/){:target="_blank"} application will open soon on the 31 January 2023. If you are interested in wireless security and wireless sensing, please drop me an email with your CV.

 
[//]: ## Call for CSC Application
[//]: If you want to do a PhD with us in the area of wireless security and wireless sensing,  please drop me an email with your CV. Pleaes visit [our university website](https://www.liverpool.ac.uk/study/postgraduate-research/fees-and-funding/scholarships-and-awards/the-university-of-liverpool-and-china-scholarship-council-awards/){:target="_blank"} for more information. Deadline: TBC


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
* [mmWave Radar Sensing](/research/mmwave-radar/)

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
