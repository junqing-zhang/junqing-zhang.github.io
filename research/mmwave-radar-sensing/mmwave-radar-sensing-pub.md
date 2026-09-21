---
layout: page
research_section: mmwave-radar
title: "Publication - mmWave Radar Sensing @ University of Liverpool"
description: "Publications from the University of Liverpool on mmWave Radar Sensing."
permalink: /research/mmwave-radar/mmwave-radar-pub/
date: 2025-05-02
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
<h2>Preprints</h2>

{% bibliography --query @unpublished %}

<h2>Refereed Journal Articles</h2>

{% bibliography --query @article[keywords~=mmWave-radar] %}

<h2>Refereed Conference Proceedings</h2>

{% bibliography --query @inproceedings[keywords~=mmWave-radar] %}
</div>



