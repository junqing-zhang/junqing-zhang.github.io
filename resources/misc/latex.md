---
layout: page
title: 'How to Use LaTeX'
date: 2026-06-30
permalink: /resources/misc/latex/
categories:
  - Resources
  - Tool
tags:
  - LaTeX
---

LaTeX is widely used to prepare reports, academic papers, and presentations. It takes some practice to learn, but it offers consistent formatting and powerful tools for equations, cross-references, and bibliographies. This guide introduces the basics and includes practical examples for IEEE publications.

{% include toc title="On this page" %}

## 1. Overview

LaTeX separates content from presentation. A document class or publisher's template handles much of the formatting, while LaTeX manages numbering and cross-references. For a guided introduction, start with the [Overleaf tutorials](https://www.overleaf.com/learn/latex/Tutorials){:target="_blank"}.

Most academic documents contain text, figures, tables, equations, and references. LaTeX can place figures and tables automatically, but you may still need to adjust their size and placement options to produce a readable layout.

### A minimal working document

Save the following as `main.tex` and compile it with pdfLaTeX, or paste it into a blank Overleaf project:

```latex
\documentclass{article}
\usepackage{amsmath}
\usepackage{graphicx}

\title{My First LaTeX Document}
\author{Your Name}
\date{\today}

\begin{document}
\maketitle

\section{Introduction}
This is my first document. Inline mathematics looks like \(E = mc^2\).

\begin{equation}
  E = mc^2
  \label{eq:energy}
\end{equation}
Equation~\eqref{eq:energy} relates energy and mass.

\end{document}
```

The **preamble** is everything before `\begin{document}`; it selects the document class and loads packages. The document body sits between `\begin{document}` and `\end{document}`. Compile twice to resolve cross-references.

## 2. Software

If you are new to LaTeX, an online editor such as Overleaf lets you practise without installing a local TeX distribution. A local installation is useful when you want to work offline or control your compilation environment.

### Online editor: Overleaf

* Online LaTeX editor. Free features are sufficient for basic use.
* Suitable for collaboration.
* Link: [https://www.overleaf.com](https://www.overleaf.com){:target="_blank"}
* Common packages are available without local installation.

### Offline editor: TeXstudio

TeXstudio is an editor; it needs a separate TeX distribution to compile documents. Install a distribution such as MiKTeX or TeX Live first, then install [TeXstudio](https://www.texstudio.org/){:target="_blank"}. Open `main.tex`, select pdfLaTeX as the compiler, and build the document to view the PDF.

## 3. Templates

### IEEE LaTeX Template

Use the template specified by your target journal or conference. Many IEEE publications use the IEEEtran document class, but journal and conference options differ. The [IEEE conference templates](https://www.ieee.org/conferences/publishing/templates){:target="_blank"} are intended for conference submissions; check your journal's author instructions for its template.

Consult the documentation on the [IEEEtran package page](https://ctan.org/pkg/ieeetran){:target="_blank"}, particularly when adding subfigures or algorithms. The IEEE-specific examples below assume that your template uses IEEEtran.

### Presentations with Beamer

Beamer is a LaTeX document class for presentations. See the [Overleaf Beamer guide](https://www.overleaf.com/learn/latex/Beamer){:target="_blank"} for a tutorial.

## 4. Tables

Writing large tables by hand can be tedious. These tools can help:

* Online LaTeX table generators can convert pasted spreadsheet data into LaTeX code.
* [Excel2LaTeX](https://ctan.org/pkg/excel2latex?lang=en){:target="_blank"} converts Excel spreadsheets into LaTeX tables.

In `\begin{tabular}{|l|l|}`, each column is sized to its widest entry and text does not wrap automatically. To give the first column a content width of 2 cm, use `\begin{tabular}{|L{2cm}|l|}` with the definitions below in the preamble. This does not set the total table width: padding, rules, and the other column also take up space.

```latex
\usepackage{array}
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
```

These column types wrap text and align it left (`L`), centre (`C`), or right (`R`). The underlying `m{...}` column type vertically centres the cell contents; use `p{...}` instead for top alignment.

## 5. Figures

For advice on preparing clear graphics, see [How to Prepare Figures/Diagrams for Publications](/resources/misc/prepare-diagram/).

### One figure

Load `\usepackage{graphicx}` in the preamble. Place `sys_overview.pdf` in the same directory as your main `.tex` file, then add:

```latex
The system overview is shown in Fig.~\ref{fig:sys_overview}.
\begin{figure}[!t]
  \centering
  \includegraphics[width=\linewidth]{sys_overview.pdf}
  \caption{System overview.}
  \label{fig:sys_overview}
\end{figure}
```

Using `\linewidth` scales the image to the available line width, including in a single column of a two-column document. The `[!t]` option requests top placement and relaxes some float restrictions; it does not guarantee a particular position. Place the figure code near its first citation and follow your publication's placement guidance.

### Subfigures

For IEEEtran documents, the following preamble configuration loads `subfig` while preserving the class's caption formatting:

```latex
\ifCLASSOPTIONcompsoc
\usepackage[caption=false,font=normalsize,labelfont=sf,textfont=sf]{subfig}
\else
\usepackage[caption=false,font=footnotesize]{subfig}
\fi
```

The `\ifCLASSOPTIONcompsoc` conditional is **IEEEtran-specific**. Do not copy this configuration into the `article` starter document above.

The following example stacks two subfigures vertically. Replace the image paths and captions with your own:

```latex
\begin{figure}[!t]
\centering
\subfloat[]{\includegraphics[width=\linewidth]{Pictures/fig1.pdf}
\label{fig:fig1}}\\
\subfloat[]{\includegraphics[width=\linewidth]{Pictures/fig2.pdf}
\label{fig:fig2}}
\caption{(a) Caption1. (b) Caption2.}
\label{fig:fig}
\end{figure}
```

## 6. Equations

Load `\usepackage{amsmath}` in the preamble. Use `\(...\)` for inline mathematics and the `equation` environment for a numbered display:

```latex
The signal power is \(P_{\mathrm{s}}\), and the noise power is \(P_{\mathrm{n}}\).
\begin{equation}
  \mathrm{SNR} = \frac{P_{\mathrm{s}}}{P_{\mathrm{n}}}
  \label{eq:snr}
\end{equation}
Equation~\eqref{eq:snr} defines the signal-to-noise ratio.
```

The `\eqref` command includes parentheses around the equation number. For an unnumbered display, use `\[...\]` without a label.

For more examples, see [CSE 312: Mathematical Typesetting in Word and LaTeX](https://courses.cs.washington.edu/courses/cse312/20wi/typesetting/hw_typesetting.pdf){:target="_blank"}.

## 7. Cross-references

Use labels and references instead of typing figure, table, or equation numbers manually. See the [Overleaf cross-referencing guide](https://www.overleaf.com/learn/latex/Cross_referencing_sections_and_equations){:target="_blank"} for a detailed tutorial.

First, define a unique label, such as `\label{fig:system_model}`, `\label{tab:results}`, or `\label{eq:snr}`. For figures and tables, put `\label` after `\caption`; for equations, put it inside the numbered equation environment. Then cite the item with `Fig.~\ref{fig:system_model}`, `Table~\ref{tab:results}`, or `\eqref{eq:snr}`.

Choose meaningful label names rather than `fig1`, `tab2`, or `eq3`. If a reference appears as `??`, compile again. If it remains unresolved, check that the label exists and its spelling matches the reference exactly.

## 8. Tracking Changes

Tracking changes helps collaborators review edits to a document.

LaTeX itself does not provide a Word-style review interface. The `latexdiff` utility compares two versions of a `.tex` file and generates LaTeX source that marks additions and deletions in the compiled document. See the [Overleaf latexdiff guide](https://www.overleaf.com/learn/latex/Articles/Using_Latexdiff_For_Marking_Changes_To_Tex_Documents){:target="_blank"} for instructions.

Overleaf also offers a Track Changes feature. Check its [Track Changes guide](https://docs.overleaf.com/collaborating/track-changes){:target="_blank"} for availability and subscription requirements.

## 9. Bibliographies

IEEE has special requirements for bibliographies. BibTeX is recommended for organising references. See the [IEEEtran bibliography guide]({{ site.url }}/files/pdf/IEEEtran_bst_HOWTO.pdf){:target="_blank"} for instructions. Even when a report does not use the IEEE LaTeX template, the IEEE reference format can still be applied and is particularly suitable for electrical and electronic engineering.

### BibTeX entries

Importing BibTeX entries from a publisher or scholarly database can save time and reduce typing errors. For example, [Google Scholar](https://scholar.google.com/) provides BibTeX exports for many publications.

Imported entries can contain errors or inconsistent formatting. Check the authors, title, publication venue, year, volume, pages, and DOI against the original publication. Let the bibliography style handle formatting, and adjust venue names and title capitalization to meet your target publication's requirements.

For example, an imported entry might contain an incorrectly capitalized journal name:

```bibtex
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

Here, `journal={Ieee access}` should be corrected to `journal={IEEE Access}`.

### IEEE Requirements for References

Please check [How to Use the IEEEtran BIBTEX Style]({{ site.url }}/files/pdf/IEEEtran_bst_HOWTO.pdf){:target="_blank"}.

Journal and conference papers are two common reference types. Examples are given below.

BibTeX entry for a journal article:

```bibtex
@article{shen2021towards,
  title={Towards scalable and channel-robust radio frequency fingerprint identification for {LoRa}},
  author={Shen, Guanxiong and Zhang, Junqing and Marshall, Alan and Cavallaro, Joseph R},
  journal=IEEE_J_IFS,
  volume={17},
  pages={774--787},
  year={2022},
}
```

BibTeX entry for a conference paper:

```bibtex
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

Step 1: Create `mybibfile.bib` and add your BibTeX entries, including the examples above if you want to try them. Check the metadata against the original publications.

Step 2: Download [IEEEabrv.bib](/resources/misc/IEEEabrv.bib) and place it alongside your main `.tex` file. It defines journal-name macros such as `IEEE_J_IFS`; leave these macros unquoted and without braces in the `journal` field. Your TeX installation or project must also provide the `IEEEtran.bst` bibliography style.

Step 3: Cite an entry in the document body using its citation key:

```latex
An example of radio frequency fingerprint identification is given in~\cite{shen2021towards}.
```

Step 4: Add the following before `\end{document}`:

```latex
\bibliographystyle{IEEEtran}
\bibliography{IEEEabrv,mybibfile}
```

Step 5: For a file named `main.tex`, run the following commands from its directory. The sequence is LaTeX → BibTeX → LaTeX → LaTeX; many editors can automate it.

```text
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

BibTeX processes the auxiliary file generated by the first LaTeX run. The subsequent runs incorporate the bibliography and resolve citation numbers. If citations remain unresolved, check the citation keys and the BibTeX log (`main.blg`) for missing files or undefined journal macros.

For IEEE references, also check the following:

* Format conference proceedings names according to the target publication's guidance, for example `booktitle={Proc. IEEE Int. Conf. Comput. Commun. (INFOCOM)}`.
* Use the appropriate journal abbreviations, with macros from `IEEEabrv.bib` where available.
* Protect capitalization in titles with braces, for example `{OFDM}`, `{LoRa}`, and `{CNN}`.

### Multiple Bibliographies

If you need to create multiple bibliographies in the same document, [multibib](https://ctan.org/pkg/multibib?lang=en) can help you with this. Check [Overleaf guide](https://www.overleaf.com/learn/latex/multibib) for an introduction and an example.

## 10. Miscellaneous

### Colour

For coloured text, add the following to the preamble:

```latex
\usepackage{xcolor}
\newcommand{\blue}[1]{\textcolor{blue}{#1}}
\newcommand{\red}[1]{\textcolor{red}{#1}}
```

Use `\red{This sentence is red.}` or `\blue{This sentence is blue.}` in the document body. These commands change the text colour, not the background.

### Non-breaking spaces

Use `~` to keep adjacent items on the same line, for example `Table~\ref{tab:results}` and `20~dB`. Use `\ref` to display a reference; `\label` defines its target.

## 11. Conclusion

LaTeX takes time to learn. Start with a small working document, add one feature at a time, and consult your template's documentation when preparing a submission. If you run into difficulties, feel free to contact me; I may have encountered the same problem and would be happy to share what helped.
