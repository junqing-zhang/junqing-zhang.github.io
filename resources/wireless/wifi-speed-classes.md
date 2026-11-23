---
layout: page
title: "Understanding Wi-Fi Speed Classes: AC600, AX900, and Beyond"
description: "A reference to advertised Wi-Fi speed classes, PHY parameters, and theoretical data-rate calculations."
show_last_updated: true
math: true
permalink: /resources/wireless/wifi-speed-classes/
categories:
  - Resources
  - Wireless  
  - Internet of Things
tags:
  - Wi-Fi
---

Wi-Fi adapters and routers are often advertised as **AC600**, **AC650**, **AC1200**, **AX900**, **AX1800**, or **AX3000**. These labels are *marketing speed classes*, not IEEE 802.11 PHY modes. The number normally approximates the **sum of the maximum theoretical PHY link rates across supported frequency bands**, even though a conventional client connection uses only one band at a time. It is **not** a measured application throughput or a guaranteed single-link speed.

The actual PHY rate depends on the Wi-Fi generation, channel width, number of spatial streams (NSS), modulation and coding scheme (MCS), and guard interval (GI). Product-specific implementations may differ from the typical configurations below.

## 1. Common Wi-Fi speed classes

### Wi-Fi 4 / Wi-Fi 5 (N and AC)

| Advertised class | 2.4 GHz max PHY (Mbps) | 5 GHz max PHY (Mbps) | Typical spatial streams (2.4 / 5 GHz) | Maximum modulation (2.4 / 5 GHz) | Maximum channel width (2.4 / 5 GHz) | Notes |
|---|---:|---:|---|---|---|---|
| N150 | 150 | — | 1 / — | 64-QAM / — | 40 MHz / — | 802.11n, short GI |
| N300 | 300 | — | 2 / — | 64-QAM / — | 40 MHz / — | 802.11n, short GI |
| AC600 | 150 | 433.3 | 1 / 1 | 64-QAM / 256-QAM | 40 / 80 MHz | Often advertised as 150 + 433 Mbps |
| AC650 | 200 | 433.3 | 1 / 1 | 256-QAM* / 256-QAM | 40 / 80 MHz | 2.4 GHz uses proprietary 256-QAM extension to 802.11n (often called TurboQAM) |
| AC750 | 300 | 433.3 | 2 / 1 | 64-QAM / 256-QAM | 40 / 80 MHz | Different NSS on each band |
| AC1200 | 300 | 866.7 | 2 / 2 | 64-QAM / 256-QAM | 40 / 80 MHz | Common dual-band 2×2 configuration |
| AC1300 | 400 | 866.7 | 2 / 2 | 256-QAM* / 256-QAM | 40 / 80 MHz | Proprietary 2.4 GHz 256-QAM extension |
| AC1750 | 450 | 1300 | 3 / 3 | 64-QAM / 256-QAM | 40 / 80 MHz | More common in routers |
| AC1900 | 600 | 1300 | 3 / 3 | 256-QAM* / 256-QAM | 40 / 80 MHz | More common in routers; proprietary 2.4 GHz extension |

*The 2.4 GHz 256-QAM rates in AC650, AC1300 and AC1900 are vendor extensions, **not standard 802.11n rates**, and require compatible equipment. For 802.11ac, the 256-QAM maximum applies to the 5 GHz PHY. A label such as “AC1200” does not imply that the two bands can be combined into a 1,200 Mbps client link.*

### Wi-Fi 6 / Wi-Fi 6E (AX and AXE)

| Advertised class | 2.4 GHz max PHY (Mbps) | 5 GHz max PHY (Mbps) | 6 GHz max PHY (Mbps) | Typical spatial streams | Maximum modulation | Maximum channel width | Notes |
|---|---:|---:|---:|---|---|---|---|
| AX900 | 286.8 | 600.5 | — | 1×1 on both bands | 1024-QAM | 40 MHz at 2.4 GHz; 80 MHz at 5 GHz | About 887 Mbps combined; often marketed as AX900 |
| AX1500 | 300 | 1201 | — | 2×2 on both bands | 64-QAM at 2.4 GHz (802.11n); 1024-QAM at 5 GHz | 40 / 80 MHz | A common mixed 802.11n + 802.11ax implementation; check the exact product |
| AX1800 | 573.5 | 1201 | — | 2×2 on both bands | 1024-QAM | 40 / 80 MHz | About 1774.5 Mbps combined |
| AX3000 | 573.5 | 2402 | — | 2×2 on both bands | 1024-QAM | 40 / 160 MHz | About 2975.5 Mbps combined |
| AXE3000† | — | 1201 | 2402 | 2×2 on both bands | 1024-QAM | 80 / 160 MHz | Example product-specific 5/6 GHz combination, **not** a universal class definition |
| AXE5400 | 573.5 | 2402 | 2402 | 2×2 on all three bands | 1024-QAM | 40 / 160 / 160 MHz | About 5377.5 Mbps combined; typically tri-band routers |

†**AXE labels are especially product-dependent.** Some products marketed AXE3000 use different band combinations; always consult the manufacturer's per-band specifications. Wi-Fi 6E extends 802.11ax operation into 6 GHz. Availability of the 6 GHz band and 160 MHz channels depends on regulatory domain and device support.

**Reading the tables:** “2×2” generally means two transmit and two receive RF chains capable of supporting up to two spatial streams, but the number of visible antennas is not a reliable indicator of NSS. The rates are rounded, and the advertised class is generally rounded further. Maximum rates assume suitable peer capabilities, ideal channel conditions and the specified GI.

## 2. How Wi-Fi PHY rates are calculated

For OFDM-based Wi-Fi, the nominal PHY data rate is

$$
R_{\mathrm{PHY}}=\frac{N_{\mathrm{SD}}\,N_{\mathrm{BPSC}}\,R_c\,N_{\mathrm{SS}}}{T_{\mathrm{SYM}}},
$$

where:

| Symbol | Meaning |
|---|---|
| $N_{\mathrm{SD}}$ | Number of **data** subcarriers in an OFDM symbol (not the total FFT size) |
| $N_{\mathrm{BPSC}}$ | Coded bits per subcarrier, e.g. 1 for BPSK, 2 for QPSK, 4 for 16-QAM, 6 for 64-QAM, 8 for 256-QAM, 10 for 1024-QAM |
| $R_c$ | Forward error-correction coding rate, e.g. 1/2, 3/4 or 5/6 |
| $N_{\mathrm{SS}}$ | Number of spatial streams |
| $T_{\mathrm{SYM}}$ | OFDM symbol duration, including guard interval |

The appropriate $N_{\mathrm{SD}}$ and $T_{\mathrm{SYM}}$ depend on the PHY standard and bandwidth. For example, an 80 MHz 802.11ac transmission has 234 data subcarriers, whereas an 80 MHz 802.11ax full-bandwidth transmission has 980 data subcarriers. The 802.11ac symbol duration with short GI is 3.6 µs; 802.11ax uses 12.8 µs useful symbol time plus a GI of 0.8, 1.6 or 3.2 µs.

### Example A: AC1200 (5 GHz link)

For an 802.11ac 80 MHz channel with **MCS 9**, 256-QAM, coding rate 5/6, two spatial streams and short GI:

$$
R_{\mathrm{PHY}}=\frac{234\times8\times(5/6)\times2}{3.6\times10^{-6}}
=866.7\ \mathrm{Mbps}.
$$

The typical AC1200 class adds the 2.4 GHz 802.11n 2×2 maximum of 300 Mbps:

$$300+866.7=1166.7\ \mathrm{Mbps}\quad\longrightarrow\quad\text{AC1200}. $$

Thus, **866.7 Mbps** is the maximum theoretical *single-band* PHY rate on 5 GHz in this configuration, not 1200 Mbps.

### Example B: AX900 (dual-band 1×1)

For 802.11ax **MCS 11** (1024-QAM, coding rate 5/6), one spatial stream and 0.8 µs GI:

- **2.4 GHz, 40 MHz:** 468 data subcarriers, so $R=(468\times10\times5/6)/(13.6\ \mu s)=286.8$ Mbps.
- **5 GHz, 80 MHz:** 980 data subcarriers, so $R=(980\times10\times5/6)/(13.6\ \mu s)=600.5$ Mbps.

Adding the per-band PHY maxima:

$$286.8+600.5=887.3\ \mathrm{Mbps}\quad\longrightarrow\quad\text{AX900}. $$

The **600.5 Mbps** 5 GHz figure is the maximum single-link PHY rate for this example.

### Example C: AX3000 (dual-band 2×2)

Using 802.11ax MCS 11, 0.8 µs GI and two spatial streams:

- **2.4 GHz, 40 MHz:** $2\times286.8\approx573.5$ Mbps.
- **5 GHz, 160 MHz:** $2\times1201\approx2402$ Mbps.

Therefore,

$$573.5+2402\approx2975.5\ \mathrm{Mbps}\quad\longrightarrow\quad\text{AX3000}. $$

Again, **2402 Mbps**, not 3000 Mbps, is the maximum theoretical 5 GHz single-link PHY rate for this configuration.

## 3. PHY rate versus real throughput

The advertised class and calculated PHY rates do **not** represent TCP/UDP application throughput. Real throughput is lower because of preambles, MAC headers, contention, interframe spacing, acknowledgements, retransmissions, protocol overhead and possibly USB/host limitations. The result also depends on signal quality, interference, access-point capability and the negotiated MCS/NSS/bandwidth.

## References and further reading

- [Cisco: 802.11ac Wireless Throughput Testing and Validation](https://www.cisco.com/c/en/us/support/docs/wireless-mobility/wireless-lan-wlan/212892-802-11ac-wireless-throughput-testing-and.pdf) — background on 802.11ac throughput and PHY rates.
- [Electronics Notes: IEEE 802.11ax Modulation and Coding](https://www.electronics-notes.com/articles/connectivity/wifi-ieee-802-11/802-11ax-modulation-coding.php) — Wi-Fi 6 MCS, coding and data-rate information.

*Note: Marketing class names and their rounding conventions are not defined by IEEE 802.11. Always check the exact product's data sheet before assuming that its PHY capabilities match a row above.*

## Acknowledgement
Some content on this page was prepared or edited with assistance from ChatGPT.