---
layout: page
show_last_updated: true
research_section: rffi
title: "RFFI Recommended Reading List"
description: "Recommended papers, surveys, and learning resources on Radio-Frequency Fingerprint Identification."
permalink: /research/rffi/rffi-recommended-reading/
date: 2023-11-06
toc: true
categories:
  - Research
  - RFFI
tags:
  - RFFI
---

{% include research-nav.html section="rffi" %}

{% include toc %}

## Survey and Tutorial Papers from Our Group
<div class="section-card pub-list">

{% bibliography --query @article[keywords~=rffi && keywords~=survey] %}

</div>

## Technical Papers from Our Group
### LoRa RFFI
{% bibliography --query @*[key=shen2022scalable || key=shen2023length || key=shen2023towards || key=shen2024federated || key=shen2021radioj] %}

### Modelling
{% bibliography --query @*[key=zhang2021radio] %}

## Tutorial Papers from Other Groups
1. Shamnaz Riyaz, Kunal Sankhe, Stratis Ioannidis, and Kaushik Chowdhury, “Deep Learning Convolutional Neural Networks for Radio Identification,” _IEEE Communications Magazine_, 2018


