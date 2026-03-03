% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Style for X-LANCE pre-prints
% Version: 0.1.2
% Update date: 20260303
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Class declarations %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{xlance}[]

% ---- Class options ----------------------------------------------------------
\newif\if@odl@opendfm
\@odl@opendfmfalse
\DeclareOption{opendfm}{\@odl@opendfmtrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
% -----------------------------------------------------------------------------

\PassOptionsToPackage{table,svgnames}{xcolor}
\LoadClass{article}

% Layout %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[top=3cm, bottom=3cm, left=3cm, right=3cm, columnsep=0.65cm]{geometry}
\RequirePackage{microtype}
\RequirePackage{placeins}
\RequirePackage{hyphenat}
\RequirePackage{setspace}
\RequirePackage{parskip}
\RequirePackage[latin, english]{babel}
\RequirePackage{lipsum}
\RequirePackage{etoolbox}
%\DisableLigatures[f]{family=sf*}

% Palatino font
\RequirePackage[T1]{fontenc}
\RequirePackage{tgpagella} % text only
\RequirePackage{mathpazo}  % math & text
\RequirePackage{inconsolata} % for tt font

% Math %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathtools}

% Graphics %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{subcaption}
\RequirePackage{float}

% Tables %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{booktabs}
\RequirePackage{nicematrix}
\RequirePackage{multirow}
\RequirePackage{bm}
\newcommand{\nm}[1]{#1}

\RequirePackage{longtable}
\RequirePackage{tabularx}
\RequirePackage{array}
\RequirePackage{adjustbox}
\RequirePackage{xspace}
\RequirePackage{enumitem}

% Table of Contents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\let\oldtableofcontents\tableofcontents
\renewcommand{\tableofcontents}{%
  \begingroup
    \setstretch{1.2}
    \oldtableofcontents
  \endgroup
}

% Colorful stuff %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[most]{tcolorbox}
\RequirePackage{xcolor}
% Theme colors: 5 shades from darkest (theme1) to lightest (theme5) %%%%%%%%%%

\if@odl@opendfm
  % Purple-blue theme — OpenDFM mode
  \definecolor{theme1}{HTML}{1A2175}
  \definecolor{theme2}{HTML}{2B37C2}
  \definecolor{theme3}{HTML}{3746F5}
  \definecolor{theme4}{HTML}{C1C5F5}
  \definecolor{theme5}{HTML}{E2E3F5}
\else
  % Red theme — X-LANCE only mode
  \definecolor{theme1}{HTML}{7B1113}
  \definecolor{theme2}{HTML}{B5192C}
  \definecolor{theme3}{HTML}{D64855}
  \definecolor{theme4}{HTML}{EFA0A7}
  \definecolor{theme5}{HTML}{FDF0F1}
\fi

% Semantic aliases (backward-compatible names map to the active theme)
\colorlet{odlblue}{theme3}
\colorlet{odlbg}{theme5}
\definecolor{odlfg}{HTML}{1C2B33}

% Listing colors
\definecolor{odl@codegreen}{rgb}{0,0.5,0}
\definecolor{odl@codegray}{rgb}{0.5,0.5,0.5}
\definecolor{odl@codepurple}{rgb}{0.58,0,0.82}
\definecolor{odl@codebg}{rgb}{0.97,0.97,0.95}
\definecolor{odl@codeblue}{HTML}{1B61A7}
\definecolor{odl@codeorange}{HTML}{D75F00}
\definecolor{odl@codered}{HTML}{C0392B}
\definecolor{odl@promptbg}{HTML}{F5F0FF}
\definecolor{odl@promptframe}{HTML}{B0A8D8}

% Extended user-facing colors %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\definecolor{hidden-red}{RGB}{205, 44, 36}
\definecolor{hidden-blue}{RGB}{194,232,247}
\definecolor{hidden-orange}{RGB}{243,202,120}
\definecolor{hidden-green}{RGB}{34,139,34}
\definecolor{hidden-pink}{RGB}{255,245,247}
\definecolor{hidden-black}{RGB}{20,68,106}
\definecolor{purple}{RGB}{144,153,196}
\definecolor{yellow}{RGB}{255,228,123}
\definecolor{hidden-yellow}{RGB}{255,248,203}
\definecolor{tkcolor}{RGB}{224,223,255}
\definecolor{darkblue}{rgb}{0, 0.40, 0.75}

% References %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{hyperref}
\RequirePackage[noabbrev,nameinlink]{cleveref}
\hypersetup{
  colorlinks,
  linkcolor=odlblue,
  citecolor=odlblue,
  urlcolor=odlblue
}

\RequirePackage[square, numbers]{natbib}
\def\bibfont{\small}

% Section and caption format %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% \RequirePackage{titlesec}
% \titleformat*{\paragraph}{\itshape}
% \titleformat*{\section}{\Large\sffamily\bfseries}
% \titleformat*{\subsection}{\large\sffamily\bfseries}
% \titleformat*{\subsubsection}{\normalsize\sffamily\bfseries}
% \DeclareTextFontCommand{\textbf}{\bfseries\sffamily}

% \RequirePackage{caption}
% \DeclareCaptionLabelSeparator{custom}{}
% \DeclareCaptionFormat{custom}{{\sffamily\textbf{#1 #2}} #3}
% \captionsetup{singlelinecheck=false,format=custom,labelsep=custom,font=small}
% \captionsetup[sub]{singlelinecheck=true,format=custom,labelsep=custom,font=small}

% Meta custom fonts %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% http://c.caignaert.free.fr/Install-ttf-Font.pdf

% \renewcommand*\ttdefault{cmvtt}
% \RequirePackage[T1]{fontenc}

% % \pdfmapline{+optimistic < assets/Optimistic.ttf <T1-WGL4.enc}
% % \renewcommand{\sfdefault}{optimistic}

% \DeclareFontFamily{T1}{optimistic}{}
% \DeclareFontShape{T1}{optimistic}{m}{n}{<-> s * [0.88] assets/optimistic}{}
% \pdfmapline{+optimistic < assets/Optimistic.ttf <T1-WGL4.enc}
% \renewcommand{\sfdefault}{optimistic}

% Authors, affiliations, infos %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand\addtolist[5][]{
  \begingroup
    \if\relax#3\relax\def\sep{}\else\def\sep{#5}\fi
    \let\protect\@unexpandable@protect 
    \xdef#3{\expandafter{#3}\sep #4[#1]{#2}}%
  \endgroup
}

\newcommand\authorlist{}
\newcommand\authorformat[2][]{{\bfseries #2$^{#1}$}}
\renewcommand\author[2][]{\addtolist[#1]{#2}{\authorlist}{\authorformat}{, }}

\newcommand\affiliationlist{}
\newcommand\affiliationformat[2][]{{\normalsize $^{#1}$#2}}
\newcommand\affiliation[2][]{\addtolist[#1]{#2}{\affiliationlist}{\affiliationformat}{, }}

\newcommand\contributionlist{}
\newcommand\contributionformat[2][]{{\normalsize $^{#1}$#2}}
\newcommand\contribution[2][]{\addtolist[#1]{#2}{\contributionlist}{\contributionformat}{, }}

\newcommand\metadatalist{}
\newcommand\metadataformat[2][]{{\small {\bfseries #1:} #2}}
\newcommand\metadata[2][]{\addtolist[#1]{#2}{\metadatalist}{\metadataformat}{\par}}

\newcommand\metadataformatinfo[2][]{{\small #2}}
\newcommand\metadatainfo[1]{\addtolist{#1}{\metadatalist}{\metadataformatinfo}{}}

\renewcommand{\abstract}[1]{\def\abstractlist{{\color{odlfg} #1}}}
\newcommand{\email}[1]{\href{mailto:#1}{\texttt{#1}}}

\renewcommand\date[1]{\metadata[Date]{#1}}

% Equal contribution & corresponding author (footer annotations) %%%%%%%%%%%%%%
% Use \protected\def so that these commands are NOT expanded inside the
% \xdef used by \addtolist; they execute only when \authorlist is typeset.
\newif\if@odl@equalcontrib
\@odl@equalcontribfalse

\protected\def\equalcontribution#1{%
  \global\@odl@equalcontribtrue
  #1\textsuperscript{*}%
}

\newif\if@odl@corresponding
\@odl@correspondingfalse
\newcommand{\@odl@corr@email}{}

% Usage: \correspondence{email}{Author Name}
\protected\def\correspondence#1#2{%
  \global\@odl@correspondingtrue
  \gdef\@odl@corr@email{#1}%
  #2\textsuperscript{\dag}%
}

% \renewcommand{\title}[1]{\newcommand{\titlelist}{{\Large\bfseries #1}}}
\makeatletter
\renewcommand{\title}[1]{%
  \gdef\@title{#1}%      % ① 写回 \@title，供 fancyhdr 使用
  \gdef\titlelist{{\Large\bfseries #1}}% ② 仍给 title-box 用
}
\makeatother

% Appendix %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\let\odlorigappendix\appendix
\renewcommand{\appendix}{%
  \odlorigappendix
  \begin{center}
    {\LARGE\bfseries Appendix}
  \end{center}
  \vspace{1em}
}

% Publish date & revision dates %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
\newcommand\@odl@publishdate{}
\newcommand{\publishdate}[1]{\gdef\@odl@publishdate{#1}}

\newcommand\@odl@revdates{}
\newcommand{\revisedate}[1]{%
  \ifdefempty{\@odl@revdates}%
    {\gdef\@odl@revdates{#1}}%
    {\g@addto@macro\@odl@revdates{, #1}}%
}
\makeatother

% Titlebox %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\makeatletter
\newcommand{\mymaketitle}{%
  \tcbset{enhanced}
  \tcbset{colframe=theme2}
  \tcbset{boxrule=1pt}
  \tcbset{left=0.5cm}
  \tcbset{right=0.5cm}
  \tcbset{top=0.5cm}
  \tcbset{bottom=0.5cm}
  \tcbset{arc=10pt}
  \tcbset{colback=odlbg}
  \tcbset{before skip=0pt}
  \tcbset{grow to left by=1.5pt}
  \tcbset{grow to right by=1.5pt}
  \begin{tcolorbox}
    \setlength{\parindent}{0cm}
    \setlength{\parskip}{0.5cm}
    {
\centering
  \if@odl@opendfm
    \includegraphics[height=1.6cm, trim=50 50 50 50, clip]{xlance/assets/logos/XLANCE.png}%
    \hspace{1.5cm}%
    \includegraphics[height=1.6cm, trim=30 30 30 30, clip]{xlance/assets/logos/OpenDFM.png}%
  \else
    \includegraphics[height=1.6cm, trim=50 50 50 50, clip]{xlance/assets/logos/XLANCE.png}%
  \fi
    \vskip 0.5cm
      \setlength{\parskip}{0cm}
      \raggedright
      \nohyphens
      %
      {
        \setstretch{1.618}
        \titlelist\par
      }
      \vskip 0.2cm
      %
      \authorlist\par
      \vskip 0.2cm
      %
      \affiliationlist\par
      %
      \begin{center}\contributionlist\end{center}
      %
      {\small
        \if@odl@equalcontrib\textsuperscript{*}Equal Contribution\fi
        \if@odl@corresponding
          \if@odl@equalcontrib\hspace{1em}\fi
          \textsuperscript{\dag}Correspondence to: \texttt{\@odl@corr@email}%
        \fi
      \par}
    }
    %
    \abstractlist 
    % \par
    %
    \vskip 0.5cm
    %
    {
      \setlength{\parskip}{0cm}
      \ifdefempty{\metadatalist}{\vspace*{0.65cm}}{\metadatalist\par}
    }
    %
    \vskip 0.3cm
    {\small\color{odlfg}%
      \setlength{\parskip}{0.05cm}%
      \ifdefempty{\@odl@publishdate}{}{%
        \textbf{Publish Date:} \@odl@publishdate
      }%
      \ifdefempty{\@odl@revdates}{}{%
        \ifdefempty{\@odl@publishdate}{}{\par}%
        \textbf{Revise Date:} \@odl@revdates
      }%
    }
  \end{tcolorbox}
  \tcbset{reset}
  \FloatBarrier
}

\if@twocolumn%
\renewcommand{\maketitle}{
\twocolumn[%
  \mymaketitle
  \vskip 0.38cm
]
}%
\else%
\renewcommand{\maketitle}{
  \mymaketitle
}%
\fi
\makeatother


%----------------------------------------------
% 1. 首页样式：无页眉，页码在底部中央
%----------------------------------------------
\fancypagestyle{firstpage}{%
  \fancyhf{}%
  \fancyfoot[C]{\thepage}%
  \renewcommand{\headrulewidth}{0pt}%
}

%----------------------------------------------
% 2. 正文样式：页眉显示标题
%----------------------------------------------
\fancypagestyle{body}{%
  \fancyhf{}%
  \fancyfoot[C]{\thepage}%
  \renewcommand{\headrulewidth}{0.4pt}%
}

%------------------------------------------------
% 3. 重写 \maketitle
%------------------------------------------------
\makeatletter
\let\oldmaketitle\maketitle
\renewcommand{\maketitle}{%
  \begingroup
    \oldmaketitle
    \thispagestyle{firstpage}         % 首页：无页眉
  \endgroup
  %
  \pagestyle{body}                    % 后续页切换到 body 样式
  \fancyhead[L]{\nouppercase{\@title}}% 页眉左侧显示标题
}
\makeatother

%------------------------------------------------
% 4. "plain" 备用样式（章节或双栏分页时用）
%------------------------------------------------
\fancypagestyle{plain}{%
  \fancyhf{}%
  \fancyfoot[C]{\thepage}%
  \renewcommand{\headrulewidth}{0pt}%
}

% Code listings %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{listings}

% --- Base style (shared) ---
\lstdefinestyle{odl@base}{%
  basicstyle=\ttfamily\small,
  backgroundcolor=\color{odl@codebg},
  frame=single,
  rulecolor=\color{odl@codegray!40},
  framesep=4pt,
  xleftmargin=6pt,
  xrightmargin=6pt,
  breaklines=true,
  breakatwhitespace=false,
  keepspaces=true,
  showstringspaces=false,
  showspaces=false,
  showtabs=false,
  tabsize=4,
  captionpos=b,
  numbers=left,
  numberstyle=\tiny\color{odl@codegray},
  numbersep=8pt,
  aboveskip=1em,
  belowskip=0.8em,
}

% --- Python style ---
\lstdefinestyle{python}{%
  style=odl@base,
  language=Python,
  keywordstyle=\color{odl@codeblue}\bfseries,
  keywordstyle=[2]\color{odl@codepurple},
  stringstyle=\color{odl@codeorange},
  commentstyle=\color{odl@codegreen}\itshape,
  morekeywords={self, True, False, None, as, with, yield, lambda, async, await},
  morekeywords=[2]{int, float, str, list, dict, tuple, set, bool, bytes, object, type},
  morestring=[b]""",
  morestring=[b]''',
  literate=%
    {→}{{\ensuremath{\rightarrow}}}1
    {←}{{\ensuremath{\leftarrow}}}1,
}

% --- JSON style ---
\lstdefinestyle{json}{%
  style=odl@base,
  string=[s]{"}{"},
  stringstyle=\color{odl@codeorange},
  comment=[l]{//},
  morecomment=[s]{/*}{*/},
  commentstyle=\color{odl@codegreen}\itshape,
  literate=%
    *{:}{{\textcolor{odl@codered}{:}}}1
     {,}{{\textcolor{odl@codered}{,}}}1
     {\{}{{\textcolor{odl@codepurple}{\{}}}1
     {\}}{{\textcolor{odl@codepurple}{\}}}}1
     {[}{{\textcolor{odl@codepurple}{[}}}1
     {]}{{\textcolor{odl@codepurple}{]}}}1
     {true}{{\textcolor{odl@codeblue}{true}}}4
     {false}{{\textcolor{odl@codeblue}{false}}}5
     {null}{{\textcolor{odl@codeblue}{null}}}4,
}

% --- Bash / Shell style ---
\lstdefinestyle{bash}{%
  style=odl@base,
  language=bash,
  keywordstyle=\color{odl@codeblue}\bfseries,
  stringstyle=\color{odl@codeorange},
  commentstyle=\color{odl@codegreen}\itshape,
  morekeywords={sudo, apt, pip, conda, git, docker, curl, wget, chmod, mkdir, cd, ls, cat, echo, export},
}

% --- Plain text / Prompt style (no line numbers, softer look) ---
\lstdefinestyle{prompt}{%
  style=odl@base,
  backgroundcolor=\color{odl@promptbg},
  rulecolor=\color{odl@promptframe},
  numbers=none,
  xleftmargin=6pt,
  xrightmargin=6pt,
  basicstyle=\ttfamily\small\color{odlfg},
  keywordstyle=,
  stringstyle=,
  commentstyle=,
  identifierstyle=,
}

% --- Prompt tcolorbox environment (titled, breakable) ---
\newtcolorbox{promptbox}[1][Prompt]{%
  enhanced, breakable,
  colback=odl@promptbg,
  colframe=odl@promptframe,
  boxrule=0.5pt,
  arc=4pt,
  left=6pt, right=6pt,
  top=4pt, bottom=4pt,
  fonttitle=\bfseries\small,
  coltitle=odlfg,
  title={#1},
  toptitle=3pt, bottomtitle=2pt,
}

% --- Note box (colored sidebar) ---
\newtcolorbox{boxA}{%
  enhanced, breakable,
  boxrule=0pt,
  colback=odlbg,
  borderline west={2pt}{0pt}{odlblue},
  borderline east={2pt}{0pt}{odlblue},
}

% Figure placeholder (Overleaf-style crossed box) %%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Usage: \placeholder[width]{height}  — default width is \linewidth
\RequirePackage{tikz}
\newcommand{\placeholder}[2][\linewidth]{%
  \begin{tikzpicture}
    \node[
      draw=gray!50,
      fill=gray!8,
      line width=0.6pt,
      minimum width=#1,
      minimum height=#2,
      inner sep=0pt
    ] (box) {};
    \draw[gray!40, line width=0.5pt] (box.north west) -- (box.south east);
    \draw[gray!40, line width=0.5pt] (box.north east) -- (box.south west);
    \node[gray, font=\small\itshape] at (box.center) {Figure};
  \end{tikzpicture}%
}

% Convenience commands %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\eg}{\textit{e.g.,~}}
\newcommand{\ie}{\textit{i.e.,~}}
\newcommand{\github}{\raisebox{-1.5pt}[0pt][0pt]{\includegraphics[height=1.0em]{xlance/assets/logos/GitHub.png}}\xspace}
\newcommand{\huggingface}{\raisebox{-1.5pt}[0pt][0pt]{\includegraphics[height=1.0em]{xlance/assets/logos/HuggingFace.png}}\xspace}

% Global layout tweaks %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\hbadness=10000
\vbadness=10000
\hfuzz=5pt
\setlength{\emergencystretch}{3em}
\hfuzz=2pt
\setlength{\headheight}{28pt}
\allowdisplaybreaks

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This style template is modified from "A new style for FAIR pre-prints"
% Original Author: dlp@meta.com
% Original Version: 1.1
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%