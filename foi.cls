%
% foithesis.cls v.0.02
%
% A XeLaTeX template for the Faculty of Organization and Informatics
% Varazdin, Croatia (http://www.foi.hr)
%
% date:   28.09.2009.
% author: Markus Schatten
%
% date: 13.12.2016
% author: Lovro Predovan
% Note: Adjusted template for usage master thesis.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{foi}[2016/12/14 Faculty of Organization and Informatics Master Thesis template class]
\LoadClass{report}

\usepackage{fontspec}
\usepackage[numbers]{natbib}
\usepackage{mathptmx}
\usepackage{fancyheadings}
\usepackage{lastpage}
\usepackage{setspace}
\usepackage{ifthen}
\usepackage{datetime}
\usepackage[margin=3cm]{geometry}
\usepackage{listings}
\usepackage{color}
\usepackage[croatian]{babel}
\usepackage{url}
\usepackage{float}
\usepackage{minted}
\usepackage{graphicx}
\usepackage[dvipsnames]{xcolor}
\usemintedstyle{pastie}


\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
\newcommand{\thesisTitle}{\fontsize{22pt}}
\renewcommand{\rmdefault}{\sfdefault}
\renewcommand{\scdefault}{\sfdefault}

\newcommand{\naslov}{NASLOV RADA}
\newcommand{\kolegij}{Kolegij}
\newcommand{\autorA}{Ime i prezime studenta}
\newcommand{\brIndeksaA}{43001}
\newcommand{\brojAutora}{1}
\newcommand{\vrstaRada}{DIPLOMSKI RAD}
\newcommand{\diplSmjer}{Baze podataka}
\newcommand{\mentor}{Ime i prezime mentora}
\newcommand{\suocjenjivac}{Ime i prezime suocjenjiva\v{c}a}
\newcommand{\sveuciliste}{\textbf{SVEU\v{C}ILI\v{S}TE U ZAGREBU}}
\newcommand{\fakultet}{\textbf{FAKULTET ORGANIZACIJE I INFORMATIKE}}
\newcommand{\grad}{\textbf{VARA\v{Z}DIN}}
\newcommand{\gradSmall}{\textbf{Vara\v{z}din}}

%foi cite
\newcommand\FoiCite[1]{%
	\citeauthor{#1}~(\citeyear{#1})}

% formatting - times new roman text and titles arial
% Arial
\setsansfont[
BoldFont=arialbd.ttf,
ItalicFont=ariali.ttf,
BoldItalicFont=arialbi.ttf
]{arial.ttf}

\usepackage[T1]{fontenc}
\usepackage{newtxmath,newtxtext}
%\newfontfamily\sffamily{Arial}

%line spacing
\usepackage{setspace}
\onehalfspacing

% center all titles
\usepackage{sectsty}
\sectionfont{\raggedright }
\subsectionfont{\raggedright }

\usepackage{titlesec}
\titleformat{\chapter}{\huge\bfseries\centering}{\thechapter.}{18pt}{\huge\bfseries}
\titlespacing*{\chapter}{0pt}{0pt}{20pt}

%format date
\newdateformat{monthyeardate}{%
  \monthname[\THEMONTH] \THEYEAR.}

%document headers and footers
\cfoot{}
\rfoot{\thepage}

\def\authorblock[#1]#2{\textbf{\normalsize #1} \\#2}
\def\brin#1{\normalsize br. indeksa: #1}

\newcommand{\autori}[1]
{
\ifthenelse{\equal{#1}{1}}{
	\authorblock[\autorA]{}}{}
}

\renewcommand{\maketitle}
{
%cover page
\thispagestyle{empty}
\begin{center}
\sc{\sveuciliste}  \\
\vspace{0.01\pdfpageheight}
\sc{\fakultet}  \\
\vspace{0.01\pdfpageheight}
\sc{\grad} \\

\vspace{0.1\pdfpageheight}
\begin{flushleft}
    \Large{\autori{\brojAutora}}
\end{flushleft}
\vspace{0.1\pdfpageheight}

\sc{\Huge\textbf{\MakeUppercase {\sffamily {\naslov}}}\par} \\
\vspace{0.01\pdfpageheight}
\sc{\textbf{\large{\MakeUppercase{\sffamily{\vrstaRada}}}}} \\
\end{center}
\vfill

\noindent
\begin{minipage}{\textwidth}
\begin{minipage}{0.3\textwidth}
\end{minipage}
\hfill
\begin{minipage}{0.5\textwidth}
\end{minipage}
\vspace{0.1\pdfpageheight}
\vfill
\centering{\sc{{\gradSmall}, \textbf{\the\year.}}}
\end{minipage}
\normalfont
\newpage
\setcounter{page}\@ne


% detail page
\thispagestyle{empty}
\begin{center}
\sc{\sveuciliste}  \\
\sc{\fakultet}  \\
\sc{\grad} \\

\vspace{0.05\pdfpageheight}

\textbf{
\begin{flushleft}
    \autori{\brojAutora}
    \vspace{0.01\pdfpageheight}
    Mati\v{c}ni broj: {\brIndeksaA} \\
    \vspace{0.01\pdfpageheight}
    Studij: {\diplSmjer}
\end{flushleft}}

\vspace{0.1\pdfpageheight}


\textbf{\sc{\textbf{\Huge{\MakeUppercase{\sffamily{\naslov}}}}}} \\
\vspace{0.01\pdfpageheight}
\sc{\textbf{\large{\MakeUppercase{\sffamily{\vrstaRada}}}}} \\

\end{center}
\vfill
\noindent
\begin{minipage}{\textwidth}
\begin{minipage}{0.3\textwidth}
\end{minipage}
\hfill
\begin{minipage}{0.4\textwidth}
% Mentor
\begin{flushleft}
    \textbf{Mentor: }\\ 
    \mentor
\end{flushleft}
\end{minipage}

\vspace{0.25\pdfpageheight}
\vfill
\centering{\sc{{\gradSmall}, \monthyeardate\today}}
\end{minipage}
\normalfont
\newpage
\setcounter{page}\@ne
}
