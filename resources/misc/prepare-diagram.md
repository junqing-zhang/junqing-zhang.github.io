---
layout: page
title: 'How to Prepare Figures and Diagrams for Publication'
show_last_updated: true
permalink: /resources/misc/prepare-diagram/
categories:
  - Resources
  - Tool
tags:
  - LaTeX
---

{% include toc title="On this page" %}

This guide explains how to create, size, and export clear figures for academic publications.

## Graphics for IEEE Publications
Check the [IEEE graphics guidelines](https://journals.ieeeauthorcenter.ieee.org/create-your-ieee-journal-article/create-graphics-for-your-article/){:target="_blank"} and the requirements of your target journal before preparing figures. Follow its guidance on dimensions, fonts, file formats, and raster image resolution.

Use consistent fonts throughout your figures and check that they meet the journal's requirements. Common choices include:

* Helvetica
* Times New Roman
* Arial
* Cambria
* Symbol

## Choose Formats and Final Dimensions
Prefer vector graphics for plots and block diagrams because lines and text remain sharp when scaled. This [explanation of bitmap and vector images](https://etc.usf.edu/techease/win/images/what-is-the-difference-between-bitmap-and-vector-images/){:target="_blank"} provides background on the differences.

Export to **PDF** or **EPS** using vector settings where supported. These formats can also contain raster images: a PDF or EPS extension alone does not guarantee vector content, and converting a bitmap to PDF does not make it vector.

Use raster formats such as **PNG** or **JPEG** for photographs of experimental setups and devices, subject to the journal's accepted formats. Check their resolution at the intended printed size.

Design each figure at approximately its final publication dimensions. Use the actual column width from the manuscript template rather than assuming a fixed width. In LaTeX, `\includegraphics[width=\columnwidth]{figure.pdf}` fits a figure to the current column; use `\linewidth` when sizing it within a narrower environment.

For two panels side by side in one column, allow space between them and design each panel for its share of the available width. Halving a figure's width does not automatically make its text readable or compliant. Check font sizes, line widths, and marker sizes in the compiled manuscript.

## Use PowerPoint to Prepare Block Diagrams
PowerPoint can produce clear, professional diagrams and provides many reusable icons under `Insert` → `Icons`. Export the completed slide as a PDF.

Create a dedicated PowerPoint file for each block diagram. Under `Design` → `Slide Size` → `Custom Slide Size`, adjust the slide dimensions to fit the diagram. This avoids having to crop the exported PDF.


## Use MATLAB to Prepare Figures
Use consistent fonts for axis labels, tick labels, and legends, and maintain consistent line widths across figures. Label axes with quantities and units, and check that all text remains readable at the final publication size.

Add labels and callouts directly in MATLAB using functions such as `text` and `annotation` to keep them reproducible with the plotting code. Save the script and, when useful, an editable FIG file alongside the exported figure.

### Export with exportgraphics (Recommended)

Use the built-in [`exportgraphics` function](https://www.mathworks.com/help/matlab/ref/exportgraphics.html){:target="_blank"} (introduced in R2020a) to export graphics with a tight margin around the content. For a single axes, export a vector PDF with a white background:

```matlab
exportgraphics(gca, 'figure.pdf', ...
    'ContentType', 'vector', 'BackgroundColor', 'white');
```

Here, `gca` selects the current axes. For multiple panels, pass the tiled chart layout handle; for figure-level annotations, use the figure handle where supported by your MATLAB release. Check the documentation for supported objects and options in your version, and inspect the exported file for missing content or rendering artifacts.

### Optional: Annotate MATLAB Figures in PowerPoint

PowerPoint is another option for adding labels and callouts manually:

1. Generate the MATLAB figure.
2. Use the figure's copy or export controls to copy it as a vector graphic where available. Menu names vary by MATLAB release.
3. Paste it into PowerPoint and add text or callouts.
4. Adjust the slide dimensions to fit the figure and export the slide as a PDF.
5. Inspect the exported PDF to check that labels are aligned, nothing is clipped, and lines and text remain sharp.

Keep the PowerPoint source file so that annotations can be updated when the underlying plot changes.

### Optional: Export with export_fig

The third-party [`export_fig` utility](https://uk.mathworks.com/matlabcentral/fileexchange/23629-export_fig){:target="_blank"} provides another export workflow. Install it and add it to the MATLAB path before using this helper.

Save the following function as `print2pdf.m`. Pass a base filename without an extension, for example `print2pdf('experiment results')`. It sets the current figure's background to white before saving FIG, PDF, and EPS files. Direct function calls support filenames containing spaces without constructing commands with `eval`.

```matlab
function print2pdf(filename)
    filename = char(filename);
    fig = gcf;
    set(fig, 'Color', 'w');

    savefig(fig, [filename '.fig']);
    export_fig(fig, [filename '.pdf']);
    export_fig(fig, [filename '.eps']);
end
```

## Final Checklist

- Check the target journal's dimensions, formats, fonts, and image resolution requirements.
- Inspect figures at their final size in the compiled manuscript: labels, legends, lines, and markers should be clear.
- Include axis units and use consistent terminology and formatting across figures.
- Check that labels, annotations, and legends are not clipped and that margins are appropriate.
- Check a grayscale preview. Distinguish data series with line styles or markers as well as color, as recommended by the IEEE graphics guidelines.
- Inspect exported files for rendering artifacts and retain editable source files and plotting scripts.

## Acknowledgement
Some content on this page was prepared or edited with assistance from ChatGPT.
