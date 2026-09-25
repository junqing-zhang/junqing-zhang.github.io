---
layout: page
title: 'How to Prepare Figure/Diagram for Publications'
date: 2026-06-30
permalink: /resources/misc/prepare-diagram/
categories:
  - Resources
  - Tool
tags:
  - LaTeX
---

{% include toc title="On this page" %}

Create a high quality diagram/figure is not an easy task.

## Graphics for IEEE Publications
Check [IEEE guideline](https://journals.ieeeauthorcenter.ieee.org/create-your-ieee-journal-article/create-graphics-for-your-article/){:target="_blank"}

IEEE recommends the following fonts in the graphics-for-your-article/
* Helvetica
* Times New Roman
* Arial
* Cambria
* Symbol

## Choose vector figure over bitmap 
It is strongly recommended to use vector figures for academic publication because of their good resolution. [External resource](https://etc.usf.edu/techease/win/images/what-is-the-difference-between-bitmap-and-vector-images/){:target="_blank"} is a brief but good explanation about the difference between the bitmap and vector figures. 

Generate **pdf** or **eps** because they are vector figures.

It is fine to use **png** or **jpg** for photos, e.g., photos for experimental environments and devices.

## Use PPT to Prepare Block Diagram
PowerPoint can produce clear, professional diagrams and provides many reusable icons under `Insert` → `Icons`. Export the completed slide as a PDF.

Create a dedicated PowerPoint file for each block diagram. Under `Design` → `Slide Size` → `Custom Slide Size`, adjust the slide dimensions to fit the diagram. This avoids having to crop the exported PDF.


## Use PPT to Annotate MATLAB Figure
It is usually quite difficult if you want to add annotation into the MATLAB figure. This can be achieved via PowerPoint (with a few steps). 
1. Generate the MATLAB figure
2. Click `Edit` → `Copy Figure`
3. Paste the figure in the PowerPoint. 
4. Add texts as you wish. 
5. Export the slide as a PDF.

## Use MATLAB to Prepare Figure
In IEEE papers, text in figures should be similar in size to the main text or caption. When preparing figures in MATLAB, use consistent formatting for legends and labels, and maintain consistent line widths. Export figures as PDF files and, for a single-column IEEE figure, set the width in LaTeX to approximately `3.4in`. Confirm the final text size in the compiled manuscript.

Sometime we may need to put two figures side by side in one column. In that case, resize the original MATLAB plotted figure to half of the original width. When these two resized figures are loaded to LaTex, their text size will meet the requirement.

## MATLAB Function - Save Plot as Image or Vector Graphics File (Recommended)
Check  [https://uk.mathworks.com/help/matlab/creating_plots/saving-your-work.html](https://uk.mathworks.com/help/matlab/creating_plots/saving-your-work.html){:target="_blank"} to save figures to pdf/eps.

## MATLAB Export Figure
When using MATLAB to save figures to to pdf or eps, there will usually be margins. Use the [export_fig](https://uk.mathworks.com/matlabcentral/fileexchange/23629-export_fig){:target="_blank"} to save MATLAB figures without margin.

MATLAB figures may include a grey margin. The following code sets the background to white and saves figures in FIG, PDF, and EPS formats.
```
function print2pdf( filename )

savefig(filename)
filename1 = [filename '.pdf'];
filename2 = [filename '.eps'];

expression1 = ['export_fig ' filename1];
expression2 = ['export_fig ' filename2];

set(gcf, 'Color', 'w');
eval( expression1)
eval( expression2)

end
```
