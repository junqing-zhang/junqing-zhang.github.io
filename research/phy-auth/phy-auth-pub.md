---
layout: page
research_section: phy-auth
title: "Publication - Physical-Layer Authentication @ University of Liverpool"
description: "Publications from the University of Liverpool on Physical-Layer Authentication."
permalink: /research/phy-auth/phy-auth-pub/
date: 2025-08-27
toc: true
categories:
  - Research
  - Physical Layer Authentication
tags:
  - Physical Layer Authentication
---

{% include research-nav.html section="phy-auth" %}




<input type="text" class="pub-search" id="pubSearch" placeholder="Filter by title, author, or year...">

<div class="section-card pub-list">
<h2>Preprints</h2>

{% bibliography --query @unpublished %}

<h2>Refereed Journal Articles</h2>

{% bibliography --query @article[keywords~=phy-auth] %}

<h2>Refereed Conference Proceedings</h2>

{% bibliography --query @inproceedings[keywords~=phy-auth] %}
</div>


