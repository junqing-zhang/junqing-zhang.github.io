---
layout: page
show_last_updated: true
research_section: wifi-sensing
title: "Wi-Fi Sensing Recommended Reading List"
description: "Recommended papers, surveys, and learning resources on Wi-Fi Sensing."
permalink: /research/wifi-sensing/wifi-sensing-recommended-reading/
show_last_updated: true
toc: true
categories:
  - Reading List
  - Wireless Sensing
  - Wi-Fi Sensing
tags:
  - Wireless Sensing
  - Wi-Fi Sensing
# Keep this curated list in database order, numbered 1 upwards.
scholar:
  sort_by: none
  bibliography_list_attributes: {}
---

{% include research-nav.html section="wifi-sensing" %}

{% comment %}One bibliography keeps numbering continuous. With sort_by: none, entries follow their order in the merged BibTeX database: FewSense first, then the Wi-Fi reading block in other-references.bib.{% endcomment %}
{% bibliography --template recommended --query @*[key=yin2022fewsense || key=zhang2018crosssense || key=palipana2017falldefi || key=ma2018signfi || key=wang2017devicefree || key=li2016wifinger || key=zhang2022widar3 || key=meneghello2023sharp || key=ma2019wifisurvey || key=yousefi2017survey || key=meneghello2023toward || key=yang2022handson] %}
