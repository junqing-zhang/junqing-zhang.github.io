---
layout: page
research_section: wifi-sensing
title: "Publication - Wi-Fi Sensing @ University of Liverpool"
description: "Publications from the University of Liverpool on Wi-Fi Sensing."
permalink: /research/wifi-sensing/wifi-sensing-pub/
date: 2025-05-02
toc: true
categories:
  - Research
  - Wireless Sensing
  - Wi-Fi Sensing
tags:
  - Wireless Sensing
  - Wi-Fi Sensing
---

{% include research-nav.html section="wifi-sensing" %}




<input type="text" class="pub-search" id="pubSearch" placeholder="Filter by title, author, or year...">

<div class="section-card pub-list">
<h2>Preprints</h2>

{% bibliography --query @unpublished %}

<h2>Refereed Journal Articles</h2>

{% bibliography --query @article[keywords~=wifi-sensing] %}

<h2>Refereed Conference Proceedings</h2>

{% bibliography --query @inproceedings[keywords~=wifi-sensing] %}
</div>



