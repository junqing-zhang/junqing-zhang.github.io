---
layout: page
research_section: rffi
title: "Publication - RFFI @ University of Liverpool"
description: "Publications from the University of Liverpool on Radio-Frequency Fingerprint Identification."
permalink: /research/rffi/rffi-pub/
date: 2026-09-21
toc: true
categories:
  - Research
  - RFFI
tags:
  - RFFI
---

{% include research-nav.html section="rffi" %}

{% include toc %}



Please visit [RFFI publications by topic](/research/rffi/rffi-pub-topics/) for our work categorized by topics.


<input type="text" class="pub-search" id="pubSearch" placeholder="Filter by title, author, or year...">

## Demonstration
<div class="section-card pub-list">
* [Wi-Fi RFFI Demonstration](/research-demo/demo-wifi-rffi/)
* [Deep Learning-Powered Radio Frequency Fingerprint Identification for LoRa](/research-demo/demo-fyp-2020-rffi-lora/)
</div>


## Refereed Journal Articles
<div class="section-card pub-list">

{% bibliography --query @article[keywords~=rffi] %}
</div>

## Refereed Conference Proceedings

<div class="section-card pub-list">
{% bibliography --query @inproceedings[keywords~=rffi] %}
</div>


