---
title: 'How to Prepare Figure/Diagram for Publications'
date: 2026-06-30
permalink: /resources/misc/prepare-diagram/
categories:
  - Resources
  - Tool
tags:
  - Latex
---

{% include toc %}

Create a high quality diagram/figure is not an easy task.

# Graphics for IEEE Publications
Check [IEEE guideline](https://journals.ieeeauthorcenter.ieee.org/create-your-ieee-journal-article/create-graphics-for-your-article/){:target="_blank"}

IEEE recommends the following fonts in the graphics-for-your-article/
* Helvetica
* Times New Roman
* Arial
* Cambria
* Symbol

# Choose vector figure over bitmap 
It is strongly recommended to use vector figures for academic publication because of their good resolution. [Here](https://etc.usf.edu/techease/win/images/what-is-the-difference-between-bitmap-and-vector-images/){:target="_blank"} is a brief but good explanation about the difference between the bitmap and vector figures. 

Generate **pdf** or **eps** because they are vector figures.

It is fine to use **png** or **jpg** for photos, e.g., photos for experimental environments and devices.

# Use PPT to Prepare Block Diagram
PowerPoint can produce quite good look diagrams. There are lots of icons (*Insert->Icons*). Save the slides to pdf file. 

It is recommended to create a dedicated ppt file for each block diagram. In the PowerPoint, go to *Design -> Slide Size -> Customize Slide Size*, you can adjust the size of the slides to fit the diagram. In this way, you don't have to crop the pdf file saved from the ppt slide.


# Use PPT to Annotate Matlab Figure
It is usually quite difficult if you want to add annotation into the Matlab figure. This can be achieved via PowerPoint (with a few steps). 
1. Generate the Matlab figure
2. Click *Edit-> Copy Figure*
3. Paste the figure in the PowerPoint. 
4. Add texts as you wish. 
5. Save the slide to a pdf file.

# Use Matlab to Prepare Figure
In IEEE papers, the text size in the figures should be similar to the size of texts in the main body or caption. When using Matlab to prepare the results figures, DO NOT manually change any of the format of the text, including the legend, labels, etc. In addition, DO NOT change the thickness of the lines. Then save the figures into pdf files. In LaTex, set the figure width as 3.4in. In this way, the text size in the figure will meet the requirement.

Sometime we may need to put two figures side by side in one column. In that case, resize the original Matlab plotted figure to half of the original width. When these two resized figures are loaded to LaTex, their text size will meet the requirement.

# Matlab Function - Save Plot as Image or Vector Graphics File (Recommended)
Check  [https://uk.mathworks.com/help/matlab/creating_plots/saving-your-work.html](https://uk.mathworks.com/help/matlab/creating_plots/saving-your-work.html){:target="_blank"} to save figures to pdf/eps.

# Matlab Export Figure
When using Matlab to save figures to to pdf or eps, there will usually be margins. Use the [export_fig](https://uk.mathworks.com/matlabcentral/fileexchange/23629-export_fig){:target="_blank"} to save Matlab figures without margin.

Matlab figures usually have the grey margin. Use the following codes can set the background to white and save figures into .fig, .pdf and .eps.
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