---
layout: page
title: 'How to Use LaTex'
date: 2026-06-30
permalink: /resources/misc/latex/
categories:
  - Resources
  - Tool
tags:
  - LaTeX
---

LaTeX is perfect to prepare report, academic papers and presentations.
Different from Word, LaTex may look complicated and difficult to learn in the beginning. It is true, because LaTeX requires knowledge about the syntax and rules. The learning curve may a little steep but once you become a  master, you will love it. You will be able to produce a good looking report without worrying the format any more.

{% include toc title="On this page" %}

## 1. Overview
The most fascinate feature of LaTeX is that it allows you to focus on the content and frees you from worrying the format. It is very good at writing equations. It is excellent in managing the cross reference of figures and tables, and also the references. 
Please refer to the [tutorial at Overleaf](https://www.overleaf.com/learn/latex/Tutorials){:target="_blank"} to start.

For any report and document, the basic elements include the text, figures, tables, equations, references, etc. You will then have to take care of the referencing of the figures, tables and equations. You may worry about the places of the figures and tables. That's not necessary because LaTex will sort out all of them.

## 2. Software
If you have not used LaTeX before, I suggest to use the online platform, e.g., Overleaf, first to get yourself familiar with LaTeX syntax. Overleaf will take care of the packages automatically and you can focus on learning LaTeX. However, since Overleaf is an online platform, it will rely on your Internet connection. When you become more comfortable with LaTeX, I still recommend to use offline software.

### LaTex Online Tool - Overleaf
* Online LaTeX editor. Free features are sufficient for basic use. 
* Suitable for collaboration.
* Link: [https://www.overleaf.com](https://www.overleaf.com){:target="_blank"} 
* You don't have to worry the package installations. 

### Offline Software - TeXstudio
* Easy to use
* Download Link: [https://www.texstudio.org/](https://www.texstudio.org/){:target="_blank"}  

## 3. Template
### IEEE LaTeX Template
Different publishers and journals may have different LaTex templates. Please download from the publisher's website. In particular, most of the IEEE journals and transactions use the same [IEEE LaTex templates](https://www.ieee.org/conferences/publishing/templates){:target="_blank"} . 

Please read the [document](http://mirror.ox.ac.uk/sites/ctan.org/macros/latex/contrib/IEEEtran/IEEEtran_HOWTO.pdf){:target="_blank"} for instruction of how to use the IEEE LaTex template. I strongly suggest to read it time to time when you are using some special features of the template, e.g., subfigures, algorithms.

### Presentation Beamer
* LaTeX is also very good to prepare presentations. Please refer to [Overleaf guide](https://www.overleaf.com/learn/latex/Beamer){:target="_blank"} for a tutorial.

## 4. Table
It is very difficult and unfriendly to generate a table from scratch in LaTeX. There are many tools available to make this tedious work much easier.
* Online table generators for LaTex (search "latex online table generator").  Create an Excel spreadsheet, copy the table and paste to the online generator, then generate a table in LaTex format.
* Excel2LATEX – Convert Excel spreadsheets to LaTex tables. [https://ctan.org/pkg/excel2latex?lang=en](https://ctan.org/pkg/excel2latex?lang=en){:target="_blank"}. 


In the table environment, when you use `\begin{tabular}{|l|l|}`, the width of each column will change with the contents to accommodate everything in one line. If you need to set the width of the table, e.g., 2cm, then change it to ``\begin{tabular}{|L{2cm}|l|}``. You need to define the following configuration in the preamble before you use it.
```
\usepackage{multirow}
\usepackage{array}
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
```

## 5. Figure
Create a high quality diagram/figure is not an easy task. Visit [How to Prepare Figure/Diagram for Publications](/resources/misc/prepare-diagram/) for more information.

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
Note: IEEE recommends the `[!t]` placement option. Place the figure code after the paragraph in which the figure is first cited.


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

## 6. Equation
* [CSE 312: Mathematical Typesetting in Word and LaTeX](https://courses.cs.washington.edu/courses/cse312/20wi/typesetting/hw_typesetting.pdf){:target="_blank"}

## 7. Cross Referencing
When using figures, tables, and equations, I strongly suggest to use cross referencing. Please refer to [Overleaf guide](https://www.overleaf.com/learn/latex/Cross_referencing_sections_and_equations){:target="_blank"} for a detailed tutorial.

It includes two step. First, include the label during the definition. Prefix is recommended to distinguish them, e.g., `\label{fig:system_model}`, `\label{tab:results}`, and `\label{eq:snr}`. This is extremely helpful when your report has many of them. Then, refer to it in the main text, e.g., `\ref{fig:system_model}` .

Try to using meaningful variable names, rather than fig1, tab2, or eq3.

## 8. LaTeX Track Change
One attractive that Word has is the track change, which allows different people to edit the same document and see the changes that each other has made. 

Unfortunately the LaTeX itself does not support track change, but there is an amazing utility named [latexdiff](https://www.overleaf.com/learn/latex/Articles/Using_Latexdiff_For_Marking_Changes_To_Tex_Documents){:target="_blank"} to do something similar. It can compare two latex tex files and mark the changes between them. Please follow the [latexdiff](https://www.overleaf.com/learn/latex/Articles/Using_Latexdiff_For_Marking_Changes_To_Tex_Documents){:target="_blank"} for instruction.

Alternatively, if you are using Overleaf, there is track changes feature, but it is a paid service. Read [Overleaf guide](https://www.overleaf.com/learn/how-to/Track_Changes_in_Overleaf){:target="_blank"} for details.



## 9. Bibliographies 
IEEE has special requirements for bibliographies. BibTeX is recommended for organising references. See the [IEEEtran bibliography guide]({{ site.url }}/files/pdf/IEEEtran_bst_HOWTO.pdf){:target="_blank"} for instructions. Even when a report does not use the IEEE LaTeX template, the IEEE reference format can still be applied and is particularly suitable for electrical and electronic engineering.


### Bibtex entries
In order to avoid any errors, it is strong advised to download the bibtex entries from the online database, rather than creating from scratch by yourself. For example, search the title in the [Google Scholar](https://scholar.google.com/) and click "Import into BibTeX" to view the bibtex record. If it is not there, turn it on in the Settings of Google Scholar. 

The bibtex entries downloaded from any database are unfortunately not fully correct. You will need to adjust it according to the target journal. In particular, check the journal field and delete any fields that are not required.

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
As for IEEE journals, there is one error in this entry. The journal field should be {IEEE Access}.

### IEEE Requirement for References
Please check [How to Use the IEEEtran BIBTEX Style]({{ site.url }}/files/pdf/IEEEtran_bst_HOWTO.pdf){:target="_blank"}.

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

Step 1: Create a file named e.g., `mybibfile.bib`. 

Step 2: at the end of the tex file, put
```
\bibliographystyle{IEEEtran}
\bibliography{IEEEabrv,mybibfile}
```
before `\end{document}`

Step 3: Download the bibtex entry from Google Scholar. Check the following fields and make the relevant changes.
* The conference should starting with Proc. e.g., `booktitle={Proc. IEEE ICC}`
* The journal name should use abbreviation. Check [IEEEabrv.bib](https://junqing-zhang.github.io\resources\misc\IEEEabrv.bib){:target="_blank"} for the abbreviations.
* Title: add brackets around the words whose letters need to be capital, e.g., `{OFDM}`, and `{LoRa}`.


### Multiple Bibliographies
If you need to create multiple bibliographies in the same document, [multibib](https://ctan.org/pkg/multibib?lang=en) can help you with this. Check [Overleaf guide](https://www.overleaf.com/learn/latex/multibib) for an introduction and an example.

## 10. Misc
### Color
Define in the preamble
```
\usepackage{color,xcolor,colortbl}
\newcommand{\blue}[1]{ {\color{blue}#1}}
\newcommand{\red}[1]{ {\color{red}#1}}
```
Use it in the main text as follows as `\red{I want this sentence to be highlighted in blue.}`

### Note
* Add `~` when you want two parts to stay in the same line, e.g., `Tab.~\label{tab:results}` and `20.~dB` .


## 11. Conclusion
LaTeX is powerful and fun, but it requires time to learn. If you experience any difficulties using it, feel free to contact me. I may have had the same awkward learning processing before and I will be happy to share.

