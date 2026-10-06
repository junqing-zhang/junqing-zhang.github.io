---
layout: page
research_section: keygen
title: "Key Generation from Wireless Channels"
show_last_updated: true
description: "An overview of Key Generation from Wireless Channels, including research topics, publications, datasets, resources, and projects."
permalink: /research/keygen/
---

{% include research-nav.html section="keygen" %}

{% include toc title="On this page" %}

## Overview

Key generation from the wireless channel has emerged as a promising technique to establish cryptographic keys for legitimate users, by extracting randomness from their common channels.

<figure class="content-figure content-figure--text-column">
  <img src="{{ '/research/keygen/images/keygen_model.webp' | relative_url }}" alt="Wireless channel-based secret key generation between two legitimate devices" width="1640" height="784" loading="lazy">
  <figcaption>Wireless channel-based secret key generation between two legitimate devices.</figcaption>
</figure>



The wireless channel is intrinsic to the environment. The multipath is determined by the direct line-of-sight, reflections, and scatterings, which is affected by the layout, scatter distribution and materials, movement of users or scatterers, etc. Therefore, the features and characteristics of wireless channels are unique and unpredictable. The common randomness residing in the wireless environment between any two users can be leveraged to generate cryptographic keys for the secure communications.

<figure class="content-figure content-figure--text-column">
  <img src="{{ '/research/keygen/images/keygen_wireless_channel.png' | relative_url }}" alt="Reciprocal wireless channels observed by two legitimate devices and an eavesdropper" width="1000" height="610" loading="lazy">
  <figcaption>Reciprocal wireless channels observed by two legitimate devices and an eavesdropper.</figcaption>
</figure>

## Key Generation Principles

Key generation is mainly based on three principles.
* Channel reciprocity means the channel responses of the forward and backward links are the same, which is the basis for key generation. When two users measure the same channel parameters at the same frequency, the measurements will be highly correlated, which guarantees that they will generate the same key.
* Spatial decorrelation indicates that there is randomness residing in the dynamic channel, which ensures the extracted keys are random. A random key will make the cryptographic applications robust against attacks such as brute force.
* Temporal variation implies that when located a half-wavelength away from the legitimate users, the eavesdropper experiences an uncorrelated channel compared to that between Alice or Bob, guaranteeing the security of the key generation. When the system works at 2.4 GHz, a half-wavelength is about 6 cm, which is quite short.
<figure class="content-figure content-figure--text-column">
  <img src="{{ '/research/keygen/images/keygen_principles.png' | relative_url }}" alt="Principles of channel reciprocity, temporal variation, and spatial decorrelation for key generation" width="1000" height="554" loading="lazy">
  <figcaption>Channel reciprocity, temporal variation, and spatial decorrelation underpin wireless key generation.</figcaption>
</figure>

## Key Generation Protocol

A full key generation protocol has been implemented and a demo is developed at Advanced Networks Research Group (ANRG), University of Liverpool. Please refer to the link for detailed information.
<figure class="content-figure content-figure--text-column">
  <img src="{{ '/research/keygen/images/keygen_protocol.png' | relative_url }}" alt="Processing stages in a wireless channel-based secret key generation protocol" width="1000" height="763" loading="lazy">
  <figcaption>Processing stages in a wireless channel-based secret key generation protocol.</figcaption>
</figure>

## Reference
The following references provide detailed introductions and surveys.

{% bibliography --query @article[keywords~=keygen && keywords~=survey] %}


See our [key-generation demonstration using WARP](/research-demo/demo-keygen-warp/).
