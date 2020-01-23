---
title: 'How to Use LaTex'
date: 2020-01-22
permalink: /posts/2020/01/blog-post-latex/
categories:
  - Resources
  - Latex
tags:
  - Resources
  - Latex
---

Latex is perfect to prepare report, academic papers and presentations.
Different from Word, LaTex may look complicated and difficult to learn in the beginning. It is true, because Latex requires knowledge about the syntax and rules. The learning curve may a little steep but once you become a  master, you will love it. You will be able to produce a good looking report without worrying the format any more.

{% include toc %}

# Overview
The most fascinate feature of Latex is that it allows you to focus on the content and frees you from worrying the format. It is very good at writing equations. It is excellent in managing the cross reference of figures and tables, and also the references. 
Please refer to the (tutorial at overleaf)[https://www.overleaf.com/learn/latex/Tutorials]{:target="_blank"} to start.

# Software
If you have not used Latex before, I suggest to use the online platform, namely overleaf, first to get yourself familiar with Latex syntax. It may be a little complicated to install and setup Latex software. Overleaf will take care of the packages automatically and you can focus on learning Latex. However, since overleaf is an online platform, it will rely on your Internet connection. When you become more comfortable with Latex, I still recommend to use offline software.

## LaTex Online Tool - Overleaf
* Online Latex editor. Free features are sufficient for basic use. 
* Suitable for collaboration.
* Link: [https://www.overleaf.com](https://www.overleaf.com){:target="_blank"} 

## Offline Software 
There are many Latex editors available and many of them are free to use. If you are using LaTex with Windows, I strongly suggest to use the combination of Miktex+TeXnicCenter+Sumatra PDF viewer. They are very handy to use.
 * Download Link: [http://www.texniccenter.org/download/](http://www.texniccenter.org/download/){:target="_blank"}  
 * Please click [here](https://granasat.ugr.es/wp-content/uploads/2018/02/How_to_Sumatra_EN.pdf){:target="_blank"} for a tutorial about the installation and setup.  

# Template
## IEEE Latex Template
* IEEE template class, read the [document](http://mirror.ox.ac.uk/sites/ctan.org/macros/latex/contrib/IEEEtran/IEEEtran_HOWTO.pdf){:target="_blank"} 
* IEEE reference, Bibtex, download from [here](https://ctan.org/tex-archive/macros/latex/contrib/IEEEtran/bibtex?lang=en){:target="_blank"} 

## Presentation Beamer
* Latex is also very good to prepare presentations. Please refer to [here](https://www.overleaf.com/learn/latex/Beamer){:target="_blank"} for a tutorial.

## Latex Template for EPSRC Case for Support
* (Download Link)[https://www.sharelatex.com/templates/other/template-for-epsrc-grant-proposals]{:target="_blank"}
* I have made some adjustment to the template, by making  the bibliography part suitable to the IEEE requirement. Feel free to contact me if you need it.

# Table
It is very difficult and unfriendly to generate a table from scratch in Latex. There are many tools available to make this tedious work much easier.

* Excel2LATEX – Convert Excel spreadsheets to LATEX tables. [https://ctan.org/pkg/excel2latex?lang=en](https://ctan.org/pkg/excel2latex?lang=en){:target="_blank"} 
* There are also many online table generators for LaTex. 

Excel2LATEX is recommended over online table generators. It allows you to save the table in an Excel file and you can edit the table and regenerate the Latex source code whenever you want.

# Figure
## Choose vector figure over bitmap 
It is strongly recommended to use vector figures for academic publication because of their good resolution. [Here](https://etc.usf.edu/techease/win/images/what-is-the-difference-between-bitmap-and-vector-images/){:target="_blank"} is a brief but good explanation about the difference between the bitmap and vector figures. Generate pdf or eps because they are vector figures.

## Code Snippet
* One figure
```
\begin{figure}[!t]
	\centering
		\includegraphics[width=3.4in]{fig1.pdf}
	\caption{Caption.}
	\label{fig:fig1}
\end{figure}
```

* Subfigures

In order to include subfigures, IEEE template recommends to use subfig.sty. Declare subfig package in the preamble:
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

# latexdiff, Latex Track Change


# Misc
## Color
Define in the preamble
```
\usepackage{color,xcolor,colortbl}
\newcommand{\blue}[1]{ {\color{blue}#1}}
\newcommand{\red}[1]{ {\color{red}#1}}
```
Use it in the main text as follows.
```
use it like \blue{I want this sentence to be highlighted in blue}.
```

# Bibliographies 
Bibtex is strongly recommended to organize reference in Latex. While it is very easy and efficient to use, there are a number of pitfalls. Please refer to this [tutorial](https://serialmentor.com/blog/2015/10/2/Bibtex){:target="_blank"} for details.

## Bibtex entries
In order to avoid any errors, it is strong advised to download the bibtex entries from the online database, rather than creating from scratch by yourself. For example, search the title in the [Google Scholar](https://scholar.google.com/) and click "Import into BibTeX" to view the bibtex record. If it is not there, turn it on in the Settings of Google Scholar.

The bibtex entries downloaded from any database are unfortunately not fully correct. You will need to adjust it according to the target journal and also the pitfalls mentioned above. In particular, check the journal field and delete any fields that are not required.

## Multiple Bibliographies
If you need to create multiple bibliographies in the same document, [multibib](https://ctan.org/pkg/multibib?lang=en) can help you with this. Check [here](https://www.overleaf.com/learn/latex/multibib) for an introduction and an example.

# Conclusion
Latex is powerful and fun, but it requires time to learn. If you experience any difficulties using it, feel free to contact me. I may have had the same awkward learning processing before and I will be happy to share.




