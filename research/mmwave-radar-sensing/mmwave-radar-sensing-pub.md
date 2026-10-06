---
layout: page
research_section: mmwave-radar
title: "Publication - mmWave Radar Sensing @ University of Liverpool"
description: "Publications from the University of Liverpool on mmWave Radar Sensing."
permalink: /research/mmwave-radar/mmwave-radar-pub/
show_last_updated: true
toc: true
categories:
  - Research
  - Wireless Sensing
  - mmWave Radar Sensing
tags:
  - Wireless Sensing
  - mmWave Radar Sensing
---

{% include research-nav.html section="mmwave-radar" %}




<input type="text" class="pub-search" id="pubSearch" placeholder="Filter by title, author, or year...">

<div class="section-card pub-list">


<h2>Refereed Journal Articles</h2>

{% bibliography --query @article[keywords~=mmwave-radar] %}

<h2>Refereed Conference Proceedings</h2>

{% bibliography --query @inproceedings[keywords~=mmwave-radar] %}
</div>



