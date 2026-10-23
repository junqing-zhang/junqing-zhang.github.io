---
layout: page
research_section: phy-auth
title: "Publication - Physical-Layer Authentication @ University of Liverpool"
description: "Publications from the University of Liverpool on Physical-Layer Authentication."
permalink: /research/phy-auth/phy-auth-pub/
show_last_updated: true
toc: true
categories:
  - Research
  - Physical Layer Authentication
tags:
  - Physical Layer Authentication
---

{% include research-nav.html section="phy-auth" %}



{% include research-nav.html section="phy-auth" %}

{% include toc title="On this page" %}


<input type="text" class="pub-search" id="pubSearch" placeholder="Filter by title, author, or year...">


## Refereed Journal Articles
<div class="section-card pub-list">

{% bibliography --file my-publications --query @article[keywords~=phy-auth] %}
</div>

## Refereed Conference Proceedings

<div class="section-card pub-list">
{% bibliography --file my-publications --query @inproceedings[keywords~=phy-auth] %}
</div>



