---
layout: page
title: 'Tools for Research and Everyday Work'
show_last_updated: true
permalink: /resources/misc/tools/
categories:
  - Resources
  - Tool
tags:
  - Tool
---

This page collects tools I use for research and everyday work, including figure preparation, screen recording, writing, file search, and remote access. Each entry explains its purpose and links to further information. Some tools are free; others require a licence or offer a limited free edition.

{% include toc title="On this page" %}

## Figures and Diagrams

Prefer vector graphics for plots and diagrams, and use raster images for photographs and image-based scientific results. PDF and EPS files can contain either type of content. See the [guide to preparing figures and diagrams](/resources/misc/prepare-diagram/) for export settings, sizing, and publication checks.

### MATLAB: exportgraphics (Recommended)

The built-in `exportgraphics` function saves plots with a tight margin and supports explicit vector output for PDF files. It is included in MATLAB from R2020a; access to MATLAB requires an appropriate licence. See the [exportgraphics documentation](https://www.mathworks.com/help/matlab/ref/exportgraphics.html){:target="_blank"} for examples and supported options.

### MATLAB: export_fig

An optional third-party utility for exporting MATLAB figures to formats including PDF and EPS, with cropping and other export controls. Download it from the [export_fig File Exchange page](https://uk.mathworks.com/matlabcentral/fileexchange/23629-export_fig){:target="_blank"} and add it to the MATLAB path. The utility is available separately from MATLAB; its licence is listed on the download page.

### MATLAB: On-Figure Magnifier

Add a magnified view of part of a 2D plot or image to highlight details in the same figure. Download this third-party utility from the [On-Figure Magnifier File Exchange page](https://uk.mathworks.com/matlabcentral/fileexchange/26007-on-figure-magnifier){:target="_blank"}, which includes its licence and compatibility information.

### PowerPoint

Use PowerPoint to create block diagrams with shapes, connectors, and icons under `Insert` → `Icons`. Export the finished slide as a PDF and check the result at publication size. Obtain it through [Microsoft PowerPoint](https://www.microsoft.com/microsoft-365/powerpoint){:target="_blank"} or your institution's software service; desktop access depends on your licence.

### Visio

Use Visio to create flowcharts and structured diagrams. Check your institution's software provision or the [Microsoft Visio website](https://www.microsoft.com/microsoft-365/visio/flowchart-software){:target="_blank"} for access and licensing options.

## Screen Recording and Video

### ActivePresenter

Record demonstrations and edit screen recordings with text, callouts, and audio. Download it from the [ActivePresenter website](https://atomisystems.com/activepresenter/){:target="_blank"}. Its Free Edition is intended for trial and non-commercial use; output using non-free features includes a watermark. Check the current edition comparison before choosing a workflow.

## LaTeX

See the [LaTeX tools and tips guide](/resources/misc/latex/) for writing and preparing LaTeX documents.

## Text Editing and File Search

### Notepad++

A free text editor for Windows, useful for editing scripts, configuration files, and plain text. Its Find in Files feature searches across a folder, and plugins extend its functionality. Download it from the [Notepad++ website](https://notepad-plus-plus.org/downloads/){:target="_blank"}; consult the [official user manual](https://npp-user-manual.org/){:target="_blank"} for searching and plugin management.

### Everything

Quickly locate files and folders by name on Windows. It is useful when you remember part of a filename but not where you saved it. Download it free from the [Everything website](https://www.voidtools.com/){:target="_blank"}.

## Websites and Version Control

### GitHub Pages

Host a personal website or project documentation from a GitHub repository. See the [GitHub Pages website](https://pages.github.com/){:target="_blank"} for setup and availability under your account plan, and my [guide to building a website](/resources/misc/building-a-website/) for a practical starting point.

### GitHub Desktop

Manage Git repositories through a graphical interface: review changes, create commits, work with branches, and synchronise with GitHub. It is useful for maintaining research code or a GitHub Pages website. Download the free application for Windows or macOS from the [GitHub Desktop website](https://desktop.github.com/){:target="_blank"}.

## Remote Access

### PuTTY

A free SSH client for connecting to remote computers and running commands, useful for accessing research servers from Windows. Download it from the [official PuTTY website](https://www.chiark.greenend.org.uk/~sgtatham/putty/){:target="_blank"}, which also provides documentation.

### MobaXterm

A Windows application combining tabbed SSH sessions, an SFTP file browser, and an X server for displaying remote graphical applications. It is useful for working with Linux research servers and transferring files. Get it from the [MobaXterm download page](https://mobaxterm.mobatek.net/download.html){:target="_blank"}; a free Home Edition has usage limits, while a paid Professional Edition provides additional capabilities.

## PDF Utilities

### Google Chrome: Save a PDF Copy for Annotation

For a PDF that your annotation tool cannot edit, printing a new copy through Chrome may help where the document's licence and security policy permit it and printing is enabled. Open the PDF, select `Print`, and choose `Save as PDF`. Check that the new copy supports annotation and preserves the content you need before relying on it; this workaround is not guaranteed to work for every document. Keep the original file. Chrome is available free from the [Google Chrome website](https://www.google.com/chrome/){:target="_blank"}.

## Acknowledgement
Some content on this page was prepared or edited with assistance from ChatGPT.