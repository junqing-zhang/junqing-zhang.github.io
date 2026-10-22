---
layout: page
show_last_updated: true
research_section: rffi
title: "RFFI Recommended Reading List"
description: "Recommended papers, surveys, and learning resources on Radio-Frequency Fingerprint Identification."
permalink: /research/rffi/rffi-recommended-reading/
show_last_updated: true
toc: true
categories:
  - Research
  - RFFI
tags:
  - RFFI
---

{% include research-nav.html section="rffi" %}

{% include toc title="On this page" %}

## Survey and Tutorial Papers from Our Group

{% bibliography --query @article[keywords~=rffi && keywords~=survey] %}


## Technical Papers from Our Group
### LoRa RFFI
{% bibliography --query @*[key=shen2022scalable || key=shen2023length || key=shen2023towards || key=shen2024federated || key=shen2021radioj] %}

### Modelling
{% bibliography --query @*[key=zhang2021radio] %}

## Tutorial Papers from Other Groups
{% bibliography --query @*[key=shamnaz2018deep] %}


