%
% foithesis.cls v.0.02
%
% A LaTeX2e template for the Faculty of Organization and Informatics
% Varazdin, Croatia (http://www.foi.hr)
%
% date:   28.09.2009.
% author: Markus Schatten
%
% date: 13.12.2016
% author: Lovro Predovan
% Note: Adjusted template for usage master thesis.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{foi}[2011/10/28 Faculty of Organization and Informatics Thesis template class]

\LoadClass{report}
\usepackage[margin=3cm]{geometry}
\usepackage{listings}
\usepackage{color}
\usepackage[croatian]{babel}
\usepackage[utf8x]{inputenc}
\usepackage{url}
\usepackage[pdftex]{graphicx}
\DeclareGraphicsExtensions{.png,.pdf,.jpg,.jpeg}

\usepackage{sfmath}
\usepackage[pdftex,
bookmarks=true,
bookmarksnumbered=true,
pdfpagemode=UseNone,
pdfstartview=FitH,
pdfpagelayout=SinglePage,
colorlinks=false,
urlcolor=black,
pdfborder={0 0 0}
]{hyperref}

\usepackage{fancyheadings}
\usepackage{lastpage}
\usepackage{setspace}
\usepackage{ifthen}
\usepackage{datetime}

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

%format date
\newdateformat{monthyeardate}{%
  \monthname[\THEMONTH] \THEYEAR.}

%document headers and footers
\chead{}
\rhead{  }
\cfoot{}
\rfoot{\thepage/\pageref{LastPage}} % \today -> \rfoot{\number\month/\number\day/\number\year} 
\pagestyle{fancyplain}

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

\sc{\textbf{\Huge{\MakeUppercase{\naslov}}}} \\
\vspace{0.01\pdfpageheight}
\sc{\textbf{\large{\MakeUppercase{\vrstaRada}}}} \\
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
    Maticni broj: {\brIndeksaA} \\
    \vspace{0.01\pdfpageheight}
    Studij: {\diplSmjer}
\end{flushleft}}

\vspace{0.1\pdfpageheight}


\textbf{\sc{\textbf{\Huge{\MakeUppercase{\naslov}}}}} \\
\vspace{0.01\pdfpageheight}
\sc{\textbf{\large{\MakeUppercase{\vrstaRada}}}} \\

\end{center}
\vfill
\noindent
\begin{minipage}{\textwidth}
\begin{minipage}{0.3\textwidth}
\end{minipage}
\hfill
\begin{minipage}{0.3\textwidth}
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


\usepackage{natbib}
\bibliographystyle{foi} % plainnat
\bibpunct{(}{)}{,}{a}{,}{;}


