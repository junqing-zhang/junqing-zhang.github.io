---
title: 'How to Use LaTex'
date: 2023-09-30
permalink: /posts/blog-post-latex/
categories:
  - Resources
  - Tool
tags:
  - Latex
---

Latex is perfect to prepare report, academic papers and presentations.
Different from Word, LaTex may look complicated and difficult to learn in the beginning. It is true, because Latex requires knowledge about the syntax and rules. The learning curve may a little steep but once you become a  master, you will love it. You will be able to produce a good looking report without worrying the format any more.

{% include toc %}

# 1. Overview
The most fascinate feature of Latex is that it allows you to focus on the content and frees you from worrying the format. It is very good at writing equations. It is excellent in managing the cross reference of figures and tables, and also the references. 
Please refer to the [tutorial at Overleaf](https://www.overleaf.com/learn/latex/Tutorials){:target="_blank"} to start.

For any report and document, the basic elements include the text, figures, tables, equations, references, etc. You will then have to take care of the referencing of the figures, tables and equations. You may have to worry about the places of the figures and tables. Don't worry, LaTex will sort out all of them.

# 2. Software
If you have not used Latex before, I suggest to use the online platform, namely overleaf, first to get yourself familiar with Latex syntax. It may be a little complicated to install and setup Latex software. Overleaf will take care of the packages automatically and you can focus on learning Latex. However, since overleaf is an online platform, it will rely on your Internet connection. When you become more comfortable with Latex, I still recommend to use offline software.

## LaTex Online Tool - Overleaf
* Online Latex editor. Free features are sufficient for basic use. 
* Suitable for collaboration.
* Link: [https://www.overleaf.com](https://www.overleaf.com){:target="_blank"} 
* You don't have to worry the package installations. 

## Offline Software 
There are many Latex editors available and many of them are free to use. If you are using LaTex with Windows, I strongly suggest to use the combination of Miktex+TeXnicCenter+Sumatra PDF viewer. They are very handy to use.
 * Download Link: [http://www.texniccenter.org/download/](http://www.texniccenter.org/download/){:target="_blank"}  
 * Please click [here](https://granasat.ugr.es/wp-content/uploads/2018/02/How_to_Sumatra_EN.pdf){:target="_blank"} for a tutorial about the installation and setup.  

Some tips to use the above combinations:
* Create a project with your .tex file and then you will have the Outline view
* When you are editing the tex file, press F5 will take you to the corresponding part in the pdf file (Sumatra PDF viewer)
* When you are viewing your pdf file (Sumatra PDF viewer), double click the pdf file will take you to the corresponding part in the tex file. The above features will allow you switch between the tex and pdf quickly. (You need to configure it properly. In the Sumatra, go to *Setting -> Options*, in the *Set inverse search commad-line*, select TeXnicCenter.)

When use MikTex, you will need the admin right to install all the required packages.

# 3. Template
## IEEE Latex Template
Different publishers and journals may have different LaTex templates. Please download from the publisher's website. In particular, most of the IEEE journals and transactions use the same [IEEE LaTex templates](https://www.duboku.net/voddetail-1168.html){:target="_blank"} . There are some exceptions, e.g., [IEEE Access](https://journals.ieeeauthorcenter.ieee.org/create-your-ieee-journal-article/authoring-tools-and-templates/ieee-article-templates/templates-for-ieee-access/){:target="_blank"}.

Please read the [document](http://mirror.ox.ac.uk/sites/ctan.org/macros/latex/contrib/IEEEtran/IEEEtran_HOWTO.pdf){:target="_blank"} for instruction of how to use the IEEE LaTex template. I strongly suggest to read it time to time when you are using some special features of the template, e.g., subfigures, algorithms.

IEEE has special requirements on the bibliography. Bibtex is suggested to organize the references. Read the information [here](http://anorien.csc.warwick.ac.uk/mirrors/CTAN/macros/latex/contrib/IEEEtran/bibtex/IEEEtran_bst_HOWTO.pdf){:target="_blank"} for instruction. When you are writing your report without following the IEEE Latex template, you can still use the IEEE reference format. It is strongly suggested if you are from the electronics and electrical engineering areas.

## Presentation Beamer
* Latex is also very good to prepare presentations. Please refer to [here](https://www.overleaf.com/learn/latex/Beamer){:target="_blank"} for a tutorial.

## Latex Template for EPSRC Case for Support
* [Download Link](https://www.sharelatex.com/templates/other/template-for-epsrc-grant-proposals){:target="_blank"}
* I have made some adjustment to the template, by making  the bibliography part suitable to the IEEE requirement. Feel free to contact me if you need it.

# 4. Table
It is very difficult and unfriendly to generate a table from scratch in Latex. There are many tools available to make this tedious work much easier.
* There are also many online table generators for LaTex. 
* Excel2LATEX – Convert Excel spreadsheets to LATEX tables. [https://ctan.org/pkg/excel2latex?lang=en](https://ctan.org/pkg/excel2latex?lang=en){:target="_blank"}. 

Excel2LATEX is recommended over online table generators. It allows you to save the table in an Excel file and you can edit the table and regenerate the Latex source code whenever you want.


# 5. Figure
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
It is strongly recommended to use vector figures for academic publication because of their good resolution. [Here](https://etc.usf.edu/techease/win/images/what-is-the-difference-between-bitmap-and-vector-images/){:target="_blank"} is a brief but good explanation about the difference between the bitmap and vector figures. 

Generate **pdf** or **eps** because they are vector figures.

It is fine to use **png** or **jpg** for photos.

## Use PPT to Prepare Block Diagram
PowerPoint can produce quite good look diagrams. There are lots of icons. Save the slides to pdf file. 

It is recommended to create a dedicated ppt file for each block diagram. In the PowerPoint, go to *Design -> Slide Size -> Customize Slide Size*, you make adjust the size of the slides to fit the diagram. In this way, you don't have to crop the pdf file saved from the ppt slide.


## Use PPT to Annotate Matlab Figure
It is usually quite difficult if you want to add annotation into the Matlab figure. This can be achieved via PowerPoint (with a few steps). 
1. Generate the Matlab figure
2. Click Edit-> Copy Figure 
3. Paste the figure in the PowerPoint. 
4. Add texts as you wish. 
5. Save the slide to a pdf file.

## Use Matlab to Prepare Figure
In IEEE papers, the text size in the figures should be similar to the size of texts in the main body or caption. When using Matlab to prepare the results figures, DO NOT manually change any of the format of the text, including the legend, labels, etc. In addition, DO NOT change the thickness of the lines. Then save the figures into pdf files. In LaTex, set the figure width as 3.4in. In this way, the text size in the figure will meet the requirement.

Sometime we may need to put two figures side by side in one column. In that case, resize the original Matlab plotted figure to half of the original width. When these two resized figures are loaded to LaTex, their text size will meet the requirement.

## Matlab Function - Save Plot as Image or Vector Graphics File (Recommended)
Check  [https://uk.mathworks.com/help/matlab/creating_plots/saving-your-work.html](https://uk.mathworks.com/help/matlab/creating_plots/saving-your-work.html){:target="_blank"} to save figures.

## Matlab Export Figure
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

## Code Snippet
### One figure
```
The system overview is shown in Fig.~\ref{fig:sys_overview}.
\begin{figure}[!t]
	\centering
		\includegraphics[width=3.4in]{sys_overview.pdf}
	\caption{System overview.}
	\label{fig:sys_overview}
\end{figure}
```
Note: IEEE recommends option `[!t]`. In addition, place the codes below the paragraph where the figure is cited.


### Subfigures

In order to include subfigures, IEEE template recommends to use **subfig.sty**. Declare subfig package in the preamble:
```
\ifCLASSOPTIONcompsoc
\usepackage[caption=false,font=normalsize,labelfont=sf,textfont=sf]{subfig}
\else
\usepackage[caption=false,font=footnotesize]{subfig}
\fi
```
Use the following code to include two subfigures
```
\begin{figure}[!t]
\centering
\subfloat[]{\includegraphics[width=3.4in]{Pictures/fig1.pdf}
\label{fig:fig1}}\\
\subfloat[]{\includegraphics[width=3.4in]{Pictures/fig2.pdf}
\label{fig:fig2}}
\caption{(a) Caption1. (b) Caption2.}
\label{fig:fig}
\end{figure}

```

# 6. Equation
* [CSE 312: Mathematical Typesetting in Word and LaTeX](https://courses.cs.washington.edu/courses/cse312/20wi/typesetting/hw_typesetting.pdf){:target="_blank"}

# 7. Cross Referencing
When using figures, tables, and equations, I strongly suggest to use cross referencing. Please refer to [this link](https://www.overleaf.com/learn/latex/Cross_referencing_sections_and_equations){:target="_blank"} for a detailed tutorial.

It includes two step. First, include the label during the definition. Prefix is recommended to distinguish them, e.g., `\label{fig:system_model}`, `\label{tab:results}`, and `\label{eq:snr}`. This is extremely helpful when your report has many of them. Then, refer to it in the main text, e.g., `\ref{fig:system_model}` .

Try to using meaning variable names, rather than fig1, tab2, or eq3.

# 8. Latex Track Change
One attractive that Word has is the track change, which allows different people to edit the same document and see the changes that each other has made. 

Unfortunately the Latex itself does not support track change, but there is an amazing utility named [latexdiff](https://www.overleaf.com/learn/latex/Articles/Using_Latexdiff_For_Marking_Changes_To_Tex_Documents){:target="_blank"} to do something similar. It can compare two latex tex files and mark the changes between them. Please follow the [latexdiff](https://www.overleaf.com/learn/latex/Articles/Using_Latexdiff_For_Marking_Changes_To_Tex_Documents){:target="_blank"} for instruction.

Alternatively, if you are using Overleaf, there is track changes feature, but it is a paid service. Read [this link](https://www.overleaf.com/learn/how-to/Track_Changes_in_Overleaf){:target="_blank"} for details.



# 9. Bibliographies 
Bibtex is strongly recommended to organize reference in Latex. While it is very easy and efficient to use, there are a number of pitfalls. Please refer to this [tutorial](https://serialmentor.com/blog/2015/10/2/Bibtex){:target="_blank"} for details.

## Bibtex entries
In order to avoid any errors, it is strong advised to download the bibtex entries from the online database, rather than creating from scratch by yourself. For example, search the title in the [Google Scholar](https://scholar.google.com/) and click "Import into BibTeX" to view the bibtex record. If it is not there, turn it on in the Settings of Google Scholar. 

The bibtex entries downloaded from any database are unfortunately not fully correct. You will need to adjust it according to the target journal and also the pitfalls mentioned above. In particular, check the journal field and delete any fields that are not required.

For example, a bibtex entry downloaded from Google Scholar is shown below
```
@article{zhang2016key,
  title={Key generation from wireless channels: A review},
  author={Zhang, Junqing and Duong, Trung Q and Marshall, Alan and Woods, Roger},
  journal={Ieee access},
  volume={4},
  pages={614--626},
  year={2016},
  publisher={IEEE}
}
```
As for IEEE journals, there are two errors in this entry. The journal field should be {IEEE Access} and the publisher field is not required.

## IEEE Requirement for References
Please check [How to Use the IEEEtran BIBTEX Style](https://mirror.apps.cam.ac.uk/pub/tex-archive/macros/latex/contrib/IEEEtran/bibtex/IEEEtran_bst_HOWTO.pdf){:target="_blank"}.

Journal and conference papers are the two widely used reference types. Examples are given below.

bibtex entry for Journal:
```
@article{shen2021towards,
  title={Towards scalable and channel-robust radio frequency fingerprint identification for {LoRa}},
  author={Shen, Guanxiong and Zhang, Junqing and Marshall, Alan and Cavallaro, Joseph R},
  journal=IEEE_J_IFS,
  volume={17},
  pages={774--787},
  year={2022},
}
```
bibtex entry for Conference
```
@inproceedings{shen2021infocom,
	author={Shen, Guanxiong and Zhang, Junqing and Marshall, Alan and Peng, Linning and Wang, Xianbin},
	title={Radio Frequency Fingerprint Identification for {LoRa}
	Using Spectrogram and {CNN}},
	booktitle={Proc. IEEE Int. Conf. Comput. Commun. (INFOCOM)},
	pages={1--10},
	address={Virtual Conference},
	month=may,
	year={2021},
}
```

**How to add references correctly in IEEE journals and conferences:**

Step 1: Create a file named `mybibfile.bib`. 

Step 2: at the end of the tex file, put
```
\bibliographystyle{IEEEtran}
\bibliography{IEEEabrv,mybibfile}
```
before `\end{document}`

Step 3: Download the bibtex entry from Google Scholar. Check the following fields and make the relevant changes.
* The conference should starting with Proc. e.g., `booktitle={Proc. IEEE ICC}`
* The journal name should use abbreviation. Check [IEEEabrv.bib](https://mirror.apps.cam.ac.uk/pub/tex-archive/macros/latex/contrib/IEEEtran/bibtex/IEEEabrv.bib){:target="_blank"} for the abbreviations.
* Title: add brackets around the words whose letters need to be capital, e.g., `{OFDM}`, and `{LoRa}`.


## Multiple Bibliographies
If you need to create multiple bibliographies in the same document, [multibib](https://ctan.org/pkg/multibib?lang=en) can help you with this. Check [here](https://www.overleaf.com/learn/latex/multibib) for an introduction and an example.

# 10. Misc
## Color
Define in the preamble
```
\usepackage{color,xcolor,colortbl}
\newcommand{\blue}[1]{ {\color{blue}#1}}
\newcommand{\red}[1]{ {\color{red}#1}}
```
Use it in the main text as follows as `\blue{I want this sentence to be highlighted in blue.}`

# 11. Conclusion
Latex is powerful and fun, but it requires time to learn. If you experience any difficulties using it, feel free to contact me. I may have had the same awkward learning processing before and I will be happy to share.




