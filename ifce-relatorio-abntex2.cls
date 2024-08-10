%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para o Instituto Federal do Ceará
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Felipe José de Sousa Vasconcelos, felipe.vasconcelos@ifce.edu.br
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ifce-relatorio-abntex2}[2024/08/10 v1.0 Modelo do IFCE baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}

% ---
% Fontes padroes de part, chapter, section, subsection e subsubsection
\renewcommand{\ABNTEXchapterfont}{\rmfamily\bfseries}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}

\renewcommand{\ABNTEXpartfont}{\rmfamily\bfseries}
\renewcommand{\ABNTEXpartfontsize}{\normalsize}

\renewcommand{\ABNTEXsectionfont}{\rmfamily\bfseries}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsectionfont}{\rmfamily\bfseries\itshape}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsectionfont}{\rmfamily\itshape}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsubsectionfont}{\rmfamily}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}
% ---

% ---
% Impressão das partes em letras maiúsculas
\RequirePackage{textcase}
\renewcommand{\printpartname}{\partnamefont\MakeTextUppercase\partname}
\renewcommand{\printparttitle}[1]{\parttitlefont\MakeTextUppercase{#1}}
% ---

% ---
% No caso de Sumario (TOC) especifico da ABNT-6027-2012
\ifthenelse{\boolean{ABNTEXsumario-abnt-6027-2012}}{%

% Fontes das entradas do sumario
  %
  \renewcommand{\cftpartfont}{\bfseries\normalsize}
  \renewcommand{\cftpartpagefont}{\normalsize}
  %
  \renewcommand{\cftchapterfont}{\bfseries\normalsize}
  \renewcommand{\cftchapterpagefont}{\normalsize}
  %
  \renewcommand{\cftsectionfont}{\bfseries\normalsize}
  \renewcommand{\cftsectionpagefont}{\normalsize}
  %
  \renewcommand{\cftsubsectionfont}{\bfseries\itshape\normalsize}
  \renewcommand{\cftsubsectionpagefont}{\normalsize}
  %
  \renewcommand{\cftsubsubsectionfont}{\itshape\normalsize}
  \renewcommand{\cftsubsubsectionpagefont}{\normalsize}
  %
  \renewcommand{\cftparagraphfont}{\normalsize}
  \renewcommand{\cftparagraphpagefont}{\normalsize}
}{}
% ---

% ---
% Impressão da Capa
\RequirePackage[dvipdfmx]{graphicx}
\RequirePackage{float}

\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \center
\begin{figure}[H]
  \centering
  \includegraphics[scale=0.2]{Logo_IFCE.pdf}
\end{figure}
    {\ABNTEXchapterfont\MakeTextUppercase\imprimirinstituicao}
    \vspace*{3.5cm}

    {\ABNTEXchapterfont\MakeTextUppercase\imprimirtitulo}
    
    {\ABNTEXchapterfont\MakeTextUppercase\imprimirsubtitulo}
    \vspace*{\fill}

    {\ABNTEXchapterfont\imprimirautor}
    \vspace*{3.5cm}

    {\bfseries\MakeTextUppercase\imprimirlocal}
    \par
    {\bfseries\imprimirdata}
    \vspace*{1cm}
  \end{capa}
}
% ---

% ---
% Impressão da Folha de Aprovação
% Comandos de dados - dia
\providecommand{\imprimirdia}{}
\newcommand{\dia}[1]{\renewcommand{\imprimirdia}{#1}}

% Comandos de dados - mes
\providecommand{\imprimirmes}{}
\newcommand{\mes}[1]{\renewcommand{\imprimirmes}{#1}}

% Comandos de dados - ano
\providecommand{\imprimirano}{}
\newcommand{\ano}[1]{\renewcommand{\imprimirano}{#1}}

% Comandos de dados - diamesano
\providecommand{\imprimirdiamesano}{}
\newcommand{\diamesano}[1]{\renewcommand{\imprimirdiamesano}{#1}}
% ---
