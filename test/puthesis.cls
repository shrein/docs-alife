%% 
%% This is file `puthesis.cls',
%% generated with the docstrip utility.
%% 
%% The original source files were:
%% 
%% puthesis.dtx  (with options: `class')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% You are *not* allowed to modify this file.
%% 
%% You are *not* allowed to distribute this file.
%% For distribution of the original source see
%% the terms for copying and modification in the file  puthesis.dtx.
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{puthesis}
         [1997/04/16 v1.3 Princeton University Thesis class]
\RequirePackage{setspace}
\newcounter{subyear}
\setcounter{subyear}{\number\year}
\def\submitted#1{\gdef\@submitted{#1}}
\def\@submittedyear{\ifnum\month>10 \stepcounter{subyear}\thesubyear
  \else\thesubyear\fi}
\def\@submittedmonth{\ifnum\month>10 January\else\ifnum\month>5 November
  \else June\fi\fi}
\long\def\@abstract{\@latex@error{No \noexpand\abstract given}\@ehc}
\newcommand*{\frontmatter}{
  \pagenumbering{roman}
  }
\newcommand*{\mainmatter}{\pagenumbering{arabic}}
\newcommand*{\makelot}{}
\newcommand*{\makelof}{}
\newcommand*{\makelos}{}
\newcommand*{\begincmd}{
\doublespacing
\frontmatter\maketitlepage\makecopyrightpage\makeabstract
\makeacknowledgements\makededication\tableofcontents\clearpage
\makelot\clearpage\makelof\clearpage\makelos
\clearpage\mainmatter}
\def\@submitted{\@submittedmonth~\@submittedyear}
\def\@dept{Mathematics}
\def\@deptpref{Department of}
\def\departmentprefix#1{\gdef\@deptpref{#1}}
\def\department#1{\gdef\@dept{#1}}
\long\def\acknowledgements#1{\gdef\@acknowledgements{#1}}
\def\dedication#1{\gdef\@dedication{#1}}
\newcommand{\maketitlepage}{{
  \thispagestyle{empty}
  \sc
  \vspace*{0in}
  \begin{center}
    \LARGE \@title
  \end{center}
  \vspace{.6in}
  \begin{center}
    \@author
  \end{center}
  \vspace{.6in}
  \begin{center}
    A Dissertation \\
    Presented to the Faculty \\
    of National University\\
    in Candidacy for the Degree \\
    of Master of Science
  \end{center}
  \vspace{.3in}
  \begin{center}
    Recommended for Acceptance \\
    by the \@deptpref \\
    \@dept
  \end{center}
  \vspace{.3in}
  \begin{center}
    \@submitted
  \end{center}
  \clearpage
  }}
\newcommand*{\makecopyrightpage}{
  \thispagestyle{empty}
  \vspace*{0in}
  \begin{center}
    \copyright\ Copyright by \@author, \number\year. \\
    All Rights Reserved
  \end{center}
  \clearpage}
\newcommand*{\makeabstract}{
  \newpage
  \addcontentsline{toc}{section}{Abstract}
  \begin{center}
  \Large \textbf{Abstract}
  \end{center}
  \@abstract
  \clearpage
  }
\def\makeacknowledgements{
  \ifx\@acknowledgements\undefined
  \else
    \addcontentsline{toc}{section}{Acknowledgements}
    \begin{center}
      \Large \textbf{Acknowledgements}
    \end{center}
    \@acknowledgements
    \clearpage
  \fi
  }
\def\makededication{
  \ifx\@dedication\undefined
  \else
    \vspace*{1.5in}
    \begin{flushright}
      \@dedication
    \end{flushright}
    \clearpage
  \fi
  }
\DeclareOption{myorder}{
  \renewcommand*{\begincmd}{\doublespacing}}
\DeclareOption{lot}{\renewcommand*{\makelot}{
  \addcontentsline{toc}{section}{List of Tables}\listoftables}}
\DeclareOption{lof}{\renewcommand*{\makelof}{
  \addcontentsline{toc}{section}{List of Figures}\listoffigures}}
\DeclareOption{los}{
  \renewcommand*{\makelos}{
    \RequirePackage{losymbol}
    \section*{List of Symbols\@mkboth {LIST OF SYMBOLS}{LIST OF SYMBOLS}}
    \@starttoc{los}
    \addcontentsline{toc}{section}{List of Symbols}
  }
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass[12pt]{report}
\setlength{\oddsidemargin}{.5in}   %{.4375in}
\setlength{\evensidemargin}{.5in} %{.4375in}
\setlength{\topmargin}{-.5in}  %{-.5625in}
\setlength{\textheight}{9in}
\setlength{\textwidth}{6in}
\long\def\abstract#1{\gdef\@abstract{#1}}
\AtBeginDocument{\begincmd}
\endinput
%% 
%% End of file `puthesis.cls'.
