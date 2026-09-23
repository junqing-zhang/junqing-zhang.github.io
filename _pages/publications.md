---
title: "Publications"
layout: page
permalink: /publications/
description: "Journal articles, conference papers, and selected publications by Dr Junqing Zhang on wireless security, RF fingerprinting, and wireless sensing."
---

<div class="publications-intro" markdown="1">

## Publications by Research Area

- [Radio-Frequency Fingerprint Identification](/research/rffi/rffi-pub/)
- [Physical-Layer Authentication](/research/phy-auth/phy-auth-pub/)
- [Secret Key Generation](/research/keygen/keygen-pub/)
- [Wi-Fi Sensing](/research/wifi-sensing/wifi-sensing-pub/)
- [mmWave Radar Sensing](/research/mmwave-radar/mmwave-radar-pub/)

## Publication Profiles

* [Google Scholar](https://scholar.google.com/citations?user=MIPbyQ0AAAAJ&hl=en){:target="_blank"}
* [DBLP](https://dblp.uni-trier.de/pers/hd/z/Zhang:Junqing){:target="_blank"}
* [IEEE Xplore](https://ieeexplore.ieee.org/author/37085438201){:target="_blank"}
* [Web of Science](https://www.webofscience.com/wos/author/record/T-8966-2019){:target="_blank"}

Please [email me](mailto:junqing.zhang@liverpool.ac.uk) if you would like a copy of any paper.

<nav aria-labelledby="browse-publications" markdown="1">

## Browse Publications

<ul class="publication-nav">
  <li><a href="#selected-publications">Selected Publications</a></li>
  <li><a href="#refereed-journal-articles">Journal Articles</a></li>
  <li><a href="#refereed-conference-proceedings">Conference Papers</a></li>
</ul>

</nav>
</div>

<input type="text" class="pub-search" id="pubSearch" placeholder="Filter by title, author, or year...">

## Selected Publications
<div class="section-card pub-list">

{% bibliography --query @*[selected=true] %}
</div>


## Refereed Journal Articles

<div class="section-card pub-list">

{% bibliography --query @article %}

</div>


## Refereed Conference Proceedings
<div class="section-card pub-list">
{% bibliography --query @inproceedings %}
</div>
