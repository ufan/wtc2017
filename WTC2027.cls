\NeedsTeXFormat{LaTeX2e}
\newcommand\classname{WTC2027}
\newcommand\lastmodifieddate{2025/01/01}
\newcommand\versionnumber{0.1}
\ProvidesClass{\classname}[\lastmodifieddate\space\versionnumber]

% Are we printing crop marks?
\newif\if@cropmarkson \@cropmarksontrue

\setlength\paperheight {297mm}%
\setlength\paperwidth  {210mm}

\DeclareOption{a4paper}{\PassOptionsToPackage{a4}{crop}}
\DeclareOption{fleqn}{\PassOptionsToPackage{fleqn}{amsmath}}
\DeclareOption{centre}{\PassOptionsToPackage{center}{crop}}
\DeclareOption{crop}{\PassOptionsToPackage{cam}{crop}}
\DeclareOption{nocrop}{\PassOptionsToPackage{off}{crop}}

%\ExecuteOptions{a4paper,crop,centre}

\ExecuteOptions{a4paper,centre}

\ProcessOptions

\RequirePackage[fleqn]{amsmath}
\RequirePackage{amsthm,graphicx,array,multicol,ifthen}


% Not sure if needed.
\newcommand\@ptsize{0}

% Set twoside printing
\@twosidetrue

% Marginal notes are on the outside edge
\@mparswitchtrue

\hyphenation{Figure Section Chapter}

% Default font sizes
\renewcommand\normalsize{%
  \@setfontsize\normalsize{11\p@}{12\p@}%
  \abovedisplayskip 10\p@ \@plus 3\p@ \@minus1\p@
  \abovedisplayshortskip \z@ \@plus 3\p@
  \belowdisplayshortskip 5\p@ \@plus 3\p@ \@minus1\p@
  \belowdisplayskip \abovedisplayskip
  \let\@listi\@listI}
\normalsize
\let\@bls\baselineskip

\newcommand\small{%
  \@setfontsize\small{9\p@}{11\p@}%
  \abovedisplayskip 9\p@ \@plus2\p@ \@minus3\p@
  \abovedisplayshortskip \z@ \@plus2\p@
  \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
  \def\@listi{\leftmargin\leftmargini
              \listparindent 1em
              \topsep 6\p@ \@plus2\p@ \@minus1\p@
              \parsep \z@ \itemsep \z@}%
  \belowdisplayskip \abovedisplayskip}

\newcommand\footnotesize{%
  \@setfontsize\footnotesize{8.5\p@}{9.5\p@}%
  \abovedisplayskip 9.5\p@ \@plus2\p@ \@minus4\p@
  \abovedisplayshortskip \z@ \@plus \p@
  \belowdisplayshortskip 3.5\p@ \@plus2\p@ \@minus2\p@
  \def\@listi{\leftmargin\leftmargini
              \listparindent 1em
              \topsep 5\p@ \@plus 2\p@ \@minus 1\p@
              \parsep \z@ \itemsep \z@}%
  \belowdisplayskip \abovedisplayskip}

\def\scriptsize{\@setfontsize\scriptsize{7\p@}{9\p@}} % same as footnotesize
\def\tiny{\@setfontsize\tiny{6\p@}{7\p@}}
\def\cute{\@setfontsize\tiny{8\p@}{9\p@}}
\def\little{\@setfontsize\little{7\p@}{8\p@}}
\def\large{\@setfontsize\large{12\p@}{14\p@}}
\def\Large{\@setfontsize\Large{14\p@}{16\p@}}
\def\LARGE{\@setfontsize\LARGE{16\p@}{18\p@}}
\def\huge{\@setfontsize\huge{24\p@}{24\p@}}
\def\Huge{\@setfontsize\Huge{25\p@}{27\p@}}

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}

% Line spacing
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}

% Paragraph dimensions and inter-para spacing
\setlength\parskip{0\p@}
\setlength\parindent{4truemm}%

% Set inter-para skips
\setlength\smallskipamount{3\p@ \@plus 1\p@}% \@minus 1\p@}
\setlength\medskipamount{6\p@ \@plus 2\p@}% \@minus 2\p@}
\setlength\bigskipamount{12\p@ \@plus 3\p@ \@minus 1\p@}

% Page break penalties
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301

% Disallow widows and orphans
\clubpenalty 10000
\widowpenalty 10000

% Disable page breaks before equations, allow pagebreaks after
% equations and discourage widow lines before equations.
\displaywidowpenalty 100
\predisplaypenalty   10000
\postdisplaypenalty  2500

% Allow breaking the page in the middle of a paragraph
\interlinepenalty 0

% Disallow breaking the page after a hyphenated line
\brokenpenalty 10000

% Hyphenation; don't split words into less than three characters
\lefthyphenmin=3
\righthyphenmin=3

%
% Set page layout dimensions
%
\setlength\headheight{8\p@}         % height of running head
\setlength\topmargin{22truemm}         % head margin
\addtolength\topmargin{-\headheight}    % base to base
\addtolength\topmargin{-1in}        % subtract out the 1 inch driver margin

\setlength\topskip{10\p@}           % height of first line of text
\setlength\headsep{18\p@}           % space below running head --
\addtolength\headsep{-\topskip}     %   base to base with first line of text

\setlength\footskip{8truemm}            % space above footer line
\setlength\maxdepth{.5\topskip}     % pages can be short or deep by half a line?

\setlength\textwidth{150truemm}          % text measure excluding margins

\setlength\textheight{57\@bls}          % 58 lines on a full page,
\addtolength\textheight{\topskip}       %   including the first
                                        %   line on the page

% Set the margins
% Margin paras are not required. Set lengths to zero.
\setlength\marginparsep{18\p@}
\setlength\marginparpush{6\p@}
\setlength\marginparwidth{8pc}

\setlength\oddsidemargin{30truemm}
\addtolength\oddsidemargin{-1in}    % subtract out the 1 inch driver margin
\setlength\@tempdima{\paperwidth}
\addtolength\@tempdima{-\textwidth}
\addtolength\@tempdima{-15truemm}
\setlength\evensidemargin{30truemm}
\addtolength\evensidemargin{-1in}

\setlength\columnsep{5truemm}           % space between columns for double-column text
\setlength\columnseprule{0\p@}      % width of rule between two columns

% Footnotes
%\setlength\footnotesep{6.65\p@}     % space between footnotes
% space between text and footnote
\setlength{\skip\footins}{24\p@ plus4\p@}%

% Float placement parameters

% The total number of floats that can be allowed on a page.
\setcounter{totalnumber}{10}
% The maximum number of floats at the top and bottom of a page.
\setcounter{topnumber}{5}
\setcounter{bottomnumber}{5}
% The maximum part of the top or bottom of a text page that can be
% occupied by floats. This is set so that at least four lines of text
% fit on the page.
\renewcommand\topfraction{.9}
\renewcommand\bottomfraction{.9}
% The minimum amount of a text page that must be occupied by text.
% This should accomodate four lines of text.
\renewcommand\textfraction{.06}
% The minimum amount of a float page that must be occupied by floats.
\renewcommand\floatpagefraction{.94}

% The same parameters repeated for double column output
\renewcommand\dbltopfraction{.9}
\renewcommand\dblfloatpagefraction{.9}

% Space between floats
\setlength\floatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
% Space between floats and text
\setlength\textfloatsep{18\p@ \@plus 2\p@ \@minus 4\p@}
% Space above and below an inline figure
\setlength\intextsep   {18\p@ \@plus 2\p@ \@minus 2\p@}

% For double column floats
\setlength\dblfloatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}

% Space left at top, bottom and inbetween floats on a float page.
\setlength\@fptop{0\p@}         % no space above float page figures
\setlength\@fpsep{12\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}

% The same for double column
\setlength\@dblfptop{0\p@}
\setlength\@dblfpsep{12\p@ \@plus 1fil}
\setlength\@dblfpbot{0\p@ \@plus 2fil}

% Page styles

\def\ps@headings{%
  \def\@oddfoot{\relax}%
  \def\@evenfoot{\relax}%
  \def\@evenhead{\relax}%
  \def\@oddhead{\relax}%
%  \def\chaptermark##1{\markboth{##1}{##1}}
}

%
% Sectional units
%

% Lowest level heading that takes a number by default
\setcounter{secnumdepth}{4}%%%Upto 3 level headings are numbered

% Counters
\newcounter{part}
\newcounter{chapter}
\newcounter{section}[chapter]
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\newcounter{subparagraph}[paragraph]
\newcounter{figure}[chapter]
\newcounter{table}[chapter]

% Form of the numbers
\newcommand\thepage{\arabic{page}}
\renewcommand\thepart{\Roman{part}}
\renewcommand\thechapter{\arabic{chapter}}
\renewcommand\thesection{\arabic{section}}
\renewcommand\thesubsection{\rmfamily\thesection.\arabic{subsection}}
\renewcommand\thesubsubsection{{\thesubsection.\arabic{subsubsection}}}
\renewcommand\theparagraph{\thesubsubsection.\arabic{paragraph}}
\renewcommand\thesubparagraph{\theparagraph.\arabic{subparagraph}}
\renewcommand\theequation{\arabic{equation}}
\newcommand\@chapapp{\chaptername}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Form of the words
\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\partname{Part}
\newcommand\chaptername{Chapter}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Abstract}
\newcommand\refname{References}
\newcommand\bibname{Bibliography}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}

% Clearemptydoublepage should really clear the running heads too
\newcommand{\clearemptydoublepage}{\newpage{\pagestyle{empty}\cleardoublepage}}

% Frontmatter, mainmatter and backmatter

\newif\if@mainmatter \@mainmattertrue

\newcommand\frontmatter{%
  \clearpage
  \@mainmatterfalse
  \pagenumbering{roman}}

\newcommand\mainmatter{%
  \clearpage
  \@mainmattertrue
  \pagenumbering{arabic}}

\newcommand\backmatter{%
  \clearpage
  \@mainmatterfalse}

\def\part{\clearemptydoublepage \thispagestyle{empty} \secdef\@part\@spart}

\def\@part[#1]#2#3{%
  \begingroup\parindent 0pt
  \ifnum \c@secnumdepth >-2 \relax
    \refstepcounter{part}%
    \addcontentsline{toc}{part}{\protect\numberline{\thepart}#2}
  \else
    \addcontentsline{toc}{part}{#2}
  \fi
   \markboth{}{}                 % clear running heads
    \null\vskip-1.5\p@
    {\fontsize{13}{15}\fontshape{it}\selectfont }\par\vspace{10pt}%
    {\fontsize{13}{15}\selectfont\raggedright\it #2\vphantom{y}\par\vspace{11.5\p@}}
    {\fontsize{13}{15}\selectfont\raggedright #3\vphantom{y}\par\vspace{11.5\p@}}

      {\fontsize{18}{20}\selectfont #3}%
  \@endpart\endgroup}

\def\@spart#1{%
  \markboth{}{}                 % clear running heads
      \null\vskip-1pc
    {\fontsize{24}{26}\fontseries{b}\selectfont #1\par}
 \@endpart}

\def\@endpart{\vfil\newpage \hbox{} \thispagestyle{empty} \newpage}

\def\chapter{\clearpage \thispagestyle{headings} \global\@topnum\z@
  \@afterindentfalse \secdef\@chapter\@schapter}

\def\@chapter[#1]#2{%
  \ifnum \c@secnumdepth >\m@ne
    \refstepcounter{chapter}
    \typeout{^^J\@chapapp\space\arabic{chapter}:}
    \addcontentsline{toc}{chapter}{\protect\numberline{\thechapter}#2}
  \else
    \addcontentsline{toc}{chapter}{#2}
  \fi
%  \chaptermark{#1}
  \@makechapterhead{#2}
  \@afterindentfalse
  \@afterheading}


\let\@abstract\@empty%
\def\abstract#1{\def\@abstract{#1}}%

\let\@para\@empty%
\def\para#1{\def\@para{#1}}%

\let\@keywords\@empty%
\def\keywords#1{\def\@keywords{#1}}%


\def\@schapter#1{%
  \@makeschapterhead{#1}
  \@afterindentfalse
  \@afterheading}




%%%%%%%%%%%%%
\def\@autho{} \newcounter{autho}
\def\@autht{} \newcounter{autht}
\def\@authth{} \newcounter{authth}
\def\@authf{} \newcounter{authf}
\def\@authfi{} \newcounter{authfi}
\def\@auths{} \newcounter{auths}
\def\@authse{} \newcounter{authse}
\def\@affo{} \newcounter{affo}
\def\@afft{} \newcounter{afft}
\def\@affth{} \newcounter{affth}
\def\@afff{} \newcounter{afff}
\def\@afffi{} \newcounter{afffi}
\def\@affs{} \newcounter{affs}
\def\@affse{} \newcounter{affse}
\def\@authei{} \newcounter{authei}
\def\@affei{} \newcounter{affei}
\def\@authni{} \newcounter{authni}
\def\@affni{} \newcounter{affni}


\newcounter{authorcnt}
\setcounter{authorcnt}{0}
\newcounter{affcnt}
\setcounter{affcnt}{0}
\def\SP#1#2{\vrule height#1pt width0pt depth#2pt}
%%%%%%%%%%%%%
\renewcommand{\author}[1]{\refstepcounter{authorcnt}
\ifthenelse{\equal{\value{authorcnt}}{1}}{\gdef\@autho{\fontsize{12}{13}\upshape\selectfont\raggedright#1\vphantom{y}}}{\relax}%
\ifthenelse{\equal{\value{authorcnt}}{2}}{\gdef\@autht{\fontsize{12}{13}\upshape\selectfont\raggedright\SP{16}{0}#1\vphantom{y}}}{\relax}%
\ifthenelse{\equal{\value{authorcnt}}{3}}{\gdef\@authth{\fontsize{12}{13}\upshape\selectfont\raggedright\SP{16}{0}#1\vphantom{y}}}{\relax}%
\ifthenelse{\equal{\value{authorcnt}}{4}}{\gdef\@authf{\fontsize{12}{13}\upshape\selectfont\raggedright\SP{16}{0}#1\vphantom{y}}}{\relax}%
\ifthenelse{\equal{\value{authorcnt}}{5}}{\gdef\@authfi{\fontsize{12}{13}\upshape\selectfont\raggedright\SP{16}{0}#1\vphantom{y}}}{\relax}%
\ifthenelse{\equal{\value{authorcnt}}{6}}{\gdef\@auths{\fontsize{12}{13}\upshape\selectfont\raggedright\SP{16}{0}#1\vphantom{y}}}{\relax}%
\ifthenelse{\equal{\value{authorcnt}}{7}}{\gdef\@authse{\fontsize{12}{13}\upshape\selectfont\raggedright\SP{16}{0}#1\vphantom{y}}}{\relax}%
\ifthenelse{\equal{\value{authorcnt}}{8}}{\gdef\@authei{\fontsize{12}{13}\upshape\selectfont\raggedright\SP{16}{0}#1\vphantom{y}}}{\relax}%
\ifthenelse{\equal{\value{authorcnt}}{9}}{\gdef\@authni{\fontsize{12}{13}\upshape\selectfont\raggedright\SP{16}{0}#1\vphantom{y}}}{\relax}%
}
%%%%%%%%%%%%%%
\newcommand{\aff}[1]{\refstepcounter{affcnt}
\ifthenelse{\equal{\value{affcnt}}{1}}{\gdef\@affo{\fontsize{10}{11}\fontshape{it}\raggedright\selectfont\SP{8}{0}#1}}{\relax}%
\ifthenelse{\equal{\value{affcnt}}{2}}{\gdef\@afft{\fontsize{10}{11}\fontshape{it}\raggedright\selectfont\SP{8}{0}#1}}{\relax}%
\ifthenelse{\equal{\value{affcnt}}{3}}{\gdef\@affth{\fontsize{10}{11}\fontshape{it}\raggedright\selectfont\SP{8}{0}#1}}{\relax}%
\ifthenelse{\equal{\value{affcnt}}{4}}{\gdef\@afff{\fontsize{10}{11}\fontshape{it}\raggedright\selectfont\SP{8}{0}#1}}{\relax}%
\ifthenelse{\equal{\value{affcnt}}{5}}{\gdef\@afffi{\fontsize{10}{11}\fontshape{it}\raggedright\selectfont\SP{8}{0}#1}}{\relax}%
\ifthenelse{\equal{\value{affcnt}}{6}}{\gdef\@affs{\fontsize{10}{11}\fontshape{it}\raggedright\selectfont\SP{8}{0}#1}}{\relax}%
\ifthenelse{\equal{\value{affcnt}}{7}}{\gdef\@affse{\fontsize{10}{11}\fontshape{it}\raggedright\selectfont\SP{8}{0}#1}}{\relax}%
\ifthenelse{\equal{\value{affcnt}}{8}}{\gdef\@affei{\fontsize{10}{11}\fontshape{it}\raggedright\selectfont\SP{8}{0}#1}}{\relax}%
\ifthenelse{\equal{\value{affcnt}}{9}}{\gdef\@affni{\fontsize{10}{11}\fontshape{it}\raggedright\selectfont\SP{8}{0}#1}}{\relax}%
}

\def\@abs{} \newcounter{abs}
\newcounter{abscnt}
\setcounter{abscnt}{0}
\renewcommand{\abstract}[1]{\refstepcounter{abscnt}
\ifthenelse{\equal{\value{abscnt}}{1}}{\gdef\@abs{{\parindent10pt\noindent\fontsize{11}{12}\selectfont{\MakeUppercase{Abstract:}}\ignorespaces\quad\ignorespaces\upshape\selectfont#1\vphantom{y}}}{\relax}}
}%


\def\@kwd{} \newcounter{kwd}
\newcounter{kwdcnt}
\setcounter{kwdcnt}{0}
\renewcommand{\keywords}[1]{\refstepcounter{kwdcnt}
\ifthenelse{\equal{\value{kwdcnt}}{1}}{\gdef\@kwd{{\vspace{12pt}\parindent10pt\noindent\fontsize{11}{12}\selectfont{{{\it
Keywords}:}}\ignorespaces\quad\ignorespaces\upshape\selectfont#1\vphantom{y}}}{\relax}}
}%



\def\@makechapterhead#1{%
  \begingroup
    \parindent\z@
\vskip-5.9truemm
    {{\fontsize{16}{18}\selectfont\raggedright#1\vphantom{y}\par}}%
\removelastskip\vskip18.3\p@\nointerlineskip%
\bgroup
\@autho\par
\@affo\par
\@autht\par
\@afft\par
\@authth\par
\@affth\par
\@authf\par
\@afff\par
\@authfi\par
\@afffi\par
\@auths\par
\@affs\par
\@authse\par
\@affse\par
\@authei\par
\@affei\par
\@authni\par
\@affni\par
\egroup
\vspace*{50\p@}%
\bgroup
\@abs\par
\egroup
\bgroup
\@kwd\par
\egroup
\removelastskip\nointerlineskip\vspace*{17\p@ plus3\p@ minus1\p@}\par%
\par  \endgroup%
  \@afterindentfalse%
  \@afterheading%
  }
%%%%%%%%%%%%%

\def\@makeschapterhead#1{%
  \begingroup
    \parindent\z@
    \vspace*{-1.9\p@}%
    \vbox to 132\p@{%
         \noindent\begin{tabular}{@{}p{22pc}@{}}
              {\fontsize{18}{20}\fontseries{b}\selectfont\raggedright #1\par}
         \end{tabular}%
                 \par
                 \ifx\@author\@empty
                 \vspace*{3.5pt}
                 \else\vspace*{1pt}
                 \begin{tabular}{@{}p{24.5pc}@{}}%
                 {\fontsize{14}{16}\selectfont\it\raggedright
                 \@author\par}
                 \end{tabular}\fi
    \vfill}
\vspace*{1\p@}%
  \endgroup}


% Section macros

\renewcommand{\@seccntformat}[1]{{\csname the#1\endcsname\quad}}

\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
\noindent
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M #8\@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@specialxsect{#5}}

\def\@specialxsect#1{%
  \@tempskipa #1\relax
  \ifdim \@tempskipa>\z@
    \par \nobreak
    \vskip \@tempskipa
    \@afterheading
  \else
    \@nobreakfalse
    \global\@noskipsectrue
    \everypar{%
      \if@noskipsec
        \global\@noskipsecfalse
       {\setbox\z@\lastbox}%
        \clubpenalty\@M
        \begingroup \@svsechd \endgroup
        \unskip
        \@tempskipa #1\relax
        \hskip -\@tempskipa
      \else
        \clubpenalty \@clubpenalty
        \everypar{}%
      \fi}%
  \fi
  \ignorespaces}

\def\section{%
  \@startsection{section}{1}{\z@}
  {-20\p@ plus -3\p@}{10pt}
  {\reset@font\normalfont\normalsize\raggedright\MakeUppercase}}

\def\subsection{%
  \@startsection{subsection}{2}{\z@}
  {-15\p@ plus -3\p@}{5\p@}
  {\reset@font\normalfont\normalsize\itshape\raggedright}}

\def\subsubsection{%
  \@startsection{subsubsection}{3}{\z@}
  {-10\p@ plus -3\p@}{0.01\p@}%
  {\reset@font\normalfont\normalsize\itshape\raggedright}}


\def\paragraph{
  \@startsection{paragraph}{4}{\z@}
  {-5\p@ plus -1\p@}{0.01\p@}
  {\reset@font\normalfont\normalsize\selectfont}}


% ********************
% Figures and tables *
% ********************
% \@caption redefined so entries in Table of figs and tables
% appear as Table 1.1 [Caption] etc, rather than 1.1 [Caption]
\long\def\@caption#1[#2]#3{\par\small\addcontentsline{\csname ext@#1\endcsname}{#1}
        {\protect\numberline{\csname the#1\endcsname}
        {\ignorespaces #2}}
        \begingroup
        \@parboxrestore
        \normalfont\fontsize{10}{11}\selectfont
        \@makecaption{\csname fnum@#1\endcsname}{#3}\par
        \endgroup}

\newlength{\abovecaptionskip}
\newlength{\belowcaptionskip}
\setlength{\abovecaptionskip}{9pt}%
\setlength{\belowcaptionskip}{\z@}

\newdimen\@numwidth
\newbox\@figurecaptionbox
\newbox\@tablecaptionbox

\newlength\indentamount
\setlength{\indentamount}{\z@}

\long\def\@makecaption#1#2{\vspace{\abovecaptionskip}%
\fontsize{10}{11}\selectfont%
\setbox\@tempboxa=\hbox{#1.\ignorespaces\hspace{1em}\ignorespaces#2}%
\ifdim\wd\@tempboxa>\hsize
{\fontsize{10}{11}\selectfont#1}\ignorespaces\hspace{1em}\ignorespaces#2%
 \else
 \hbox to \hsize{{\fontsize{10}{11}\selectfont#1}\ignorespaces\hspace{1em}\ignorespaces#2\hss}
\fi}

\long\def\@tablecaption#1#2{\fontsize{10}{11}\selectfont%
%\raggedright%
{\fontsize{10}{11}\selectfont{#1}}\ignorespaces\quad\ignorespaces{\fontsize{10}{11}\selectfont#2\strut\par}%
  \vspace{\belowcaptionskip}}

\def\negskip{\noalign{\vskip-4pt}}%
\def\toprule{\noalign{\vskip2.2\p@}\noalign{\ifnum0=`}\fi\hrule \@height 0.5pt \hrule \@height 5.5pt \@width 0pt \futurelet
   \@tempa\@xhline\noalign{\vskip-0.3\p@}}
\def\topruleb{\noalign{\vskip2.2\p@}\noalign{\ifnum0=`}\fi\hrule \@height 0.5pt \hrule \@height 3.5pt \@width 0pt \futurelet
   \@tempa\@xhline\noalign{\vskip-0.3\p@}}
\def\botrule{\noalign{\ifnum0=`}\fi \hrule \@height 3.33pt \@width 0pt \hrule \@height 0.5pt \hrule \@height 0.9pt \@width 0pt\futurelet
   \@tempa\@xhline}
\def\midrule{\noalign{\ifnum0=`}\fi \hrule \@height 3.11pt \@width 0pt \hrule \@height 0.5pt
    \hrule \@height 4.9pt \@width 0pt \futurelet \@tempa\@xhline}
\def\hrulefill{\vspace*{2pt}\leavevmode\leaders\hrule height .5pt\hfill\kern\z@}
\def\thickrule{\noalign{\ifnum0=`}\fi\hrule \@height 1pt \futurelet \@tempa\@xhline}

\def\thefigure{\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{Figure~\thefigure.}


\newcommand{\tablenotename}{{Notes}}
\newcommand{\tabsource}{\fontsize{10}{11}\selectfont%
\vspace*{-4pt}\par%
{Source:}\ignorespaces\enskip\ignorespaces}%

\newenvironment{tablenotes}[1][a]{%
  \hbox{}\\[4.5pt]\tablenotename
  \begin{list}{\alph{enumi}}{%
      \setlength{\topsep}{\z@}%
      \setlength{\labelsep}{.4em}%
      \settowidth{\labelwidth}{#1}%
      \setlength{\leftmargin}{\labelwidth}%
      \addtolength{\leftmargin}{\labelsep}%
      \usecounter{enumi}}}{\end{list}}

\newenvironment{fignotes}[1][a]{%
  \hbox{}\\[4.5pt]\tablenotename\vspace*{-1.8pt}%
  \begin{list}{\alph{enumi}}{%
      \setlength{\topsep}{\z@}%
      \setlength{\labelsep}{.4em}%
      \settowidth{\labelwidth}{#1}%
      \setlength{\leftmargin}{21pt}%
      \addtolength{\leftmargin}{\labelsep}%
      \usecounter{enumi}}}{\end{list}}

\def\figsource{{Source}:\ignorespaces\enskip\ignorespaces}
\def\fignote{{Note}}%

\def\figure{\let\source\figuresource\@float{figure}}
\let\endfigure\end@float
\@namedef{figure*}{\let\source\figuresource\@dblfloat{figure}}
\@namedef{endfigure*}{\end@dblfloat}
%\def\thetable{\thechapter.\@arabic\c@table}
\def\thetable{\@arabic\c@table}
\def\figure{\global\@float{figure}}
\let\endfigure\end@float

\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{Table~\thetable.}
\def\table{\let\@makecaption\@tablecaption\@float{table}}
\let\endtable\end@float
\@namedef{table*}{\let\@makecaption\@tablecaption\@dblfloat{table}}
\@namedef{endtable*}{\end@dblfloat}

%%% TABLES

\newif\if@rotate \@rotatefalse
\newif\if@rotatecenter \@rotatecenterfalse
\def\rotatecenter{\global\@rotatecentertrue}
\def\rotateendcenter{\global\@rotatecenterfalse}
\def\rotate{\global\@rotatetrue}
\def\endrotate{\global\@rotatefalse}
\newdimen\rotdimen
\def\rotstart#1{\special{ps: gsave currentpoint currentpoint translate
    #1 neg exch neg exch translate}}
\def\rotfinish{\special{ps: currentpoint grestore moveto}}
\def\rotl#1{\rotdimen=\ht#1\advance\rotdimen by \dp#1
    \hbox to \rotdimen{\vbox to\wd#1{\vskip \wd#1
    \rotstart{90 rotate}\box #1\vss}\hss}\rotfinish}
\def\rotr#1{\rotdimen=\ht #1\advance\rotdimen by \dp#1
    \hbox to \rotdimen{\vbox to \wd#1{\vskip \wd#1
    \rotstart{90 rotate}\box #1\vss}\hss}\rotfinish}

\newdimen\tempdime
\newbox\temptbox
\newenvironment{processtable}[3]{\setbox\temptbox=\hbox{\fontsize{10}{11}\selectfont{#2}}%
\tempdime\wd\temptbox\centering{\@processtable{#1}{#2}{#3}{\tempdime}}}
{\relax}

\newenvironment{@processtable}[4]{%
\if@rotate
\setbox4=\vbox to \textwidth{\vss\hbox to \textheight{\hss%
\begin{minipage}{#4}%
\fontsize{10}{11}\selectfont%
\caption{#1}{\fontsize{10}{11}\selectfont%
#2}%
\vskip4pt\noindent
\parbox{#4}{\fontsize{10}{11}\selectfont\raggedright #3\par}%
\end{minipage}}\vss}%
\else
\setbox4=\hbox to \textwidth{\vbox{%\begin{center}
\begin{minipage}[t]{#4}%
\fontsize{10}{11}\selectfont%
\caption{#1}{\fontsize{10}{11}\selectfont%
#2}%
\vskip4pt\noindent
\parbox{#4}{\fontsize{10}{11}\selectfont #3\par}%
\end{minipage}
%\end{center}
}}%
\fi
\if@rotate\rotl{4}\else\box4\fi}
{\relax}

\newenvironment{processfigure}[2]{%
\setbox\temptbox=\hbox{#1}%
\tempdime\wd\temptbox
\if@rotate
\setbox4=\vbox to \textwidth{\vss\hbox to \textheight{%
\begin{minipage}[c]{\textheight}%
\centerline{#1}%
{#2}%
\end{minipage}}\vss}%
\else
\ifdim\tempdime<33pc%
        \setlength{\indentamount}{1.5pc}%
\else
        \setlength{\indentamount}{33pc}%
        \addtolength{\indentamount}{-\tempdime}%
        \divide\indentamount by 2%
\fi
\setbox4=\hbox to \hsize{\vbox{%
\begin{minipage}[t]{\textwidth}%
\vspace{13pt}%
\hskip\indentamount{#1}%
{#2}
\end{minipage}}}%
\fi
\if@rotate\rotr{4}\else\box4\fi}
{\par}

% ******************************
% List numbering and lettering *
% ******************************
\def\labelenumi{{\rm\arabic{enumi}}}
\def\theenumi{\arabic{enumi}}
\def\labelenumii{{\rm \roman{enumii}}}
\def\theenumii{a\alph{enumii}}
\def\p@enumii{\theenumi}
\def\labelenumiii{({\rm\roman{enumiii}})}
\def\theenumiii{\roman{enumiii}}
\def\p@enumiii{\theenumi(\theenumii)}
\def\labelenumiv{({\rm\Alph{enumiv}})}
\def\theenumiv{\Alph{enumiv}}
\def\p@enumiv{\p@enumiii\theenumiii}
\def\labelitemi{$\bullet$}
\def\labelitemii{$\bullet$}
\def\labelitemiii{$\bullet$}
\def\labelitemiv{$\bullet$}

\leftmargin\leftmargini
\labelwidth\leftmargini
\def\@listI{\leftmargin\leftmargini\topsep 5\p@ plus 2\p@ minus 0.5\p@}
\let\@listi\@listI
\@listi
\def\@listii{\topsep .5\@bls\@plus 1\p@ \@minus 1\p@\leftmargin\leftmarginii}
\def\@listiii{\leftmargin\leftmarginiii}
\def\@listiv{\leftmargin\leftmarginiv}
\def\@listv{\leftmargin\leftmarginv}
\def\@listvi{\leftmargin\leftmarginvi}

\def\enumargs{%
%   \topsep        \medskipamount
   \partopsep     \z@
   \itemsep       \z@
   \parsep        \z@
   \labelsep      0.5em
   \rightmargin   \z@
   \listparindent \parindent
   \itemindent    \z@}

\def\enumerate{%
    \@ifnextchar[{\@numerate}{\@numerate[0.]}}

\def\@numerate[#1]{%
     \ifnum \@enumdepth >3 \@toodeep\else
     \advance\@enumdepth \@ne
     \edef\@enumctr{enum\romannumeral\the\@enumdepth}
     \list{\csname label\@enumctr\endcsname.}{%
       \enumargs
       \setlength{\leftmargin}{\csname leftmargin\romannumeral\the\@enumdepth\endcsname}
       \usecounter{\@enumctr}
       \settowidth\labelwidth{#1}
       \addtolength{\leftmargin}{\labelwidth}
       \addtolength{\leftmargin}{\labelsep}
       \def\makelabel##1{\hss\llap{##1}}}%
     \fi
   }
\let\endenumerate\endlist


% Changes to the list parameters for itemize
\def\itemargs{%
   \itemsep       \z@
   \labelsep      0.5em%
   \leftmargini   0\p@
   \leftmarginii  0\p@
   \leftmarginiii 0\p@
   \leftmarginiv  0\p@
   \rightmargin   \z@
%   \listparindent \parindent
   \itemindent    \z@
}

\def\itemize{%
    \@ifnextchar[{\@itemize}{\@itemize[$\bullet$]}}

\def\@itemize[#1]{%
  \def\@mathmargin{0\p@}
     \ifnum \@itemdepth >3 \@toodeep\else
     \advance\@itemdepth \@ne
     \edef\@itemctr{item\romannumeral\the\@itemdepth}
     \list{\csname label\@itemctr\endcsname}{%
       \itemargs
       \setlength{\leftmargin}{\csname leftmargin\romannumeral\the\@listdepth\endcsname}
       \settowidth\labelwidth{#1}
       \addtolength{\leftmargin}{\labelwidth}
      \addtolength{\leftmargin}{\labelsep}
       \def\makelabel##1{\hss\llap{##1}}}%
     \fi
   }
\def\enditemize{\endlist\advance\@listdepth -1}



% ******************************************
% Verse, quotation, and quote environments *
% ******************************************
\newcommand{\sourcetext}[1]{\vbox{\parindent=0pt%
\leftskip=18pt%
\normalsize#1}}%

\def\epigraph{\par
   \def\source##1{\setlength{\topsep}{\z@}\begin{flushright}\vspace*{-\@bls}##1\end{flushright}}%
   \begin{list}{}{\normalsize%
      \setlength{\topsep}{1\@bls plus 1pt} \partopsep 0pt
      \setlength\labelwidth{0pt}
      \setlength\labelsep{0pt}
      \setlength\leftmargin{30pt}
      \parsep \z@
      \listparindent 0em}
  \item[]}
\def\endepigraph{\end{list}\addvspace{24\p@ plus 2\p@}}

\def\quote{\par
   \def\spk##1{\noindent{\footnotesize\MakeUppercase{##1}}\enskip\ignorespaces}
   \def\aut##1{{\hbox to 25.5pc{\hfill ##1}}}
   \begin{list}{}{%  Quotations in small type
      \setlength{\topsep}{1\@bls plus 1pt} \partopsep 0pt
      \setlength\labelwidth{0pt}
      \setlength\labelsep{0pt}
      \setlength\leftmargin{18pt}
      \listparindent \parindent}
  \item[]}
\def\endquote{\end{list}}

\newenvironment{unlist}{%
  \begin{list}{}%
    {\setlength{\leftmargin}{1em}%
     \setlength{\itemindent}{-1em}%
     \setlength{\topsep}{\bigskipamount}%
     \setlength{\itemsep}{\z@}}}
{\end{list}}

\newenvironment{dialogue}{%
  \begin{list}{}{%
    \setlength{\labelwidth}{\z@}%
    \setlength{\topsep}{\bigskipamount}%
    \setlength{\leftmargin}{18\p@}%
    \setlength{\itemindent}{-18\p@}%
    \setlength{\labelsep}{0.5em}%
    \def\makelabel##1{\hspace\labelsep \sc ##1:}
    }}
{\end{list}}

\skip\@mpfootins = \skip\footins
\fboxsep=6\p@
\fboxrule=1\p@




\setcounter{tocdepth}{2}


\def\l@part#1#2{%
    \addvspace{26pt}
    \def\numberline##1{{\fontsize{9}{13}\fontseries{b}\selectfont PART ##1\\}}
    \addpenalty{\@secpenalty}
    \begingroup
    \parindent \z@  \rightskip \@pnumwidth
    \parfillskip -\@pnumwidth
    \normalfont
    \fontsize{11}{13}\fontseries{b}\selectfont {#1} \hfill
 \hb@xt@\@pnumwidth{\hss\fontsize{11}{13}\selectfont {#2}}\par
    \endgroup\vspace{-2.6pt}}


\newcommand*\l@chapter{\@chapterdottedtocline{1}{0pt}{18pt}}
\newcommand*\l@section{\@sectiondottedtocline{2}{14pt}{28pt}}
\newcommand*\l@prelims{\@prelimsdottedtocline{0}{18pt}{0pt}}
\newcommand*\l@subsection{\@sectiondottedtocline{3}{48pt}{37pt}}
\newcommand*\l@appendix{\@chapterdottedtocline{1}{18pt}{62pt}}
\newcommand*\l@subsubsection[2]{}
\newcommand*\l@paragraph[2]{}
\newcommand*\l@subparagraph[2]{}



\def\l@author#1#2{\vspace{0pt}%
    \addpenalty{\@secpenalty}
    \begingroup
    \parindent \z@
    \normalfont
    \advance\leftskip 18pt
    \fontsize{7}{13}\selectfont\MakeUppercase{{#1}}
    \vspace{-4pt}%
    \par
    \endgroup}


%%% List of figures is modified to compile figures and tables as a group

\def\listoffigures{
        \addcontentsline{toc}{chapter}{List of Figures}
        \chapter*{Illustrations}
        \section{Figures}
        \markboth{Illustrations}{Illustrations}
        \@starttoc{lof}
        \section{Tables}
        \@starttoc{lot}}

\def\l@figure{\@dottedtocline{1}{0em}{32.5pt}}

% ****************
% List of Tables *
% ****************
\def\listoftables{
        \chapter*{Tables}
        \markboth{List of tables}{List of tables}
          \addcontentsline{toc}{chapter}{List of tables}
        \@starttoc{lot}}

\def\l@table{\@tabfigdottedtocline{1}{0em}{32.5pt}}

\def\newblock{}
\def\@cite#1#2{{\nobreak #1\if@tempswa; \nobreak #2\fi}}

\def\@citex[#1]#2{%
  \let\@citea\@empty
  \@cite{\@for\@citeb:=#2\do
    {\@citea\def\@citea{,\penalty\@m\ }%
     \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
     \if@filesw\immediate\write\@auxout{\string\citation{\@citeb}}\fi
     \@ifundefined{b@\@citeb}{\mbox{\reset@font\normalfont ?}%
       \G@refundefinedtrue
       \@latex@warning
         {Citation `\@citeb' on page \thepage \space undefined}}%
       {{\csname b@\@citeb\endcsname}}}}{#1}}

\newenvironment{thebibliography}[1]{%
\section*{\refname}%
\fontsize{10}{11}\selectfont\list{}{%
  \usecounter{enumi}%
  \leftmargin 10\p@\itemindent -10\p@\parsep \z@
    \itemsep\z@
 }}
{\endlist}

% \bibfont is intentionally not defined here.
% If biblatex is loaded, it defines \bibfont itself (normalfont/normalsize).
% To enforce the WTC2027 10pt/11pt bibliography font, add this to your .tex preamble:
%   \renewcommand{\bibfont}{\fontsize{10pt}{11pt}\selectfont}

% *******
% Index *
% *******
\let\@indexmain\@empty
\def\indexmain#1{\def\@indexmain{#1}}%

\newif\if@restonecol
\def\theindex{\@mainmatterfalse
  \@restonecoltrue\if@twocolumn\@restonecolfalse\fi
  \addcontentsline{toc}{chapter}{Index}
  \columnseprule \z@

\author{\relax}%
%\chapter*{\indexname}%
\onecolumn
\@indexmain%
  \columnsep 4pc\begin{multicols}{3}[] %Subject or Author here
  \gdef\leftmark{\indexname}
  \gdef\rightmark{\indexname}
  \parskip\z@ plus .3\p@\relax\let\item\idxitem\fontsize{9\p@}{10\p@}\selectfont}
\def\idxitem{\par\hangindent1em\raggedright\hangindent 9\p@}
\def\subitem{\par\raggedright\hangindent 27\p@ \hspace*{9pt}}
%\par\hangindent1em\raggedright}
\def\subsubitem{\par\raggedright\hangindent 24\p@ \hspace*{16pt}}
%\par\hangindent1em\raggedright}
\def\endtheindex{\end{multicols}\newpage}
\def\indexspace{\par \vskip 1\@bls plus 1\p@ minus 1\p@\relax}

% ***********
% Footnotes *
% ***********

\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width5pc
  \kern2.6\p@}

\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@0.6em{\@makefnmark}#1}  %\hb@xt@1em%%

% **********
% Appendix *
% **********
\newif\ifappend % Are we in the Appendix?
\def\appendix{\par
\newcounter{apphead}%
\setcounter{apphead}{0}%
\refstepcounter{apphead}%
 \setcounter{section}{0}
 \setcounter{table}{0}
 \setcounter{equation}{0}
 \setcounter{figure}{0}
% \setcounter{proposition}{0}
 \appendtrue
 \def\thetable{\thechapter.\Alph{apphead}\@arabic\c@table}
 \def\thefigure{\thechapter.\Alph{apphead}\@arabic\c@figure}
 \renewcommand{\theequation}{\thechapter.\arabic{equation}}%
% \renewcommand{\@seccntformat}[1]{}%
 %\@addtoreset{equation}{section}
}


%Math parameters

\setlength{\jot}{5\p@}
\mathchardef\@m=1500   % adapted value
\def\@mathmargin{0\p@}

\def\frenchspacing{\sfcode`\.\@m \sfcode`\?\@m \sfcode`\!\@m
  \sfcode`\:\@m \sfcode`\;\@m \sfcode`\,\@m}

%%\def\@mathmargin{1pc}
\vbadness=9999
\tolerance=9999
\doublehyphendemerits 640000   % corresponds to badness 800
\finalhyphendemerits  1000000  % corresponds to badness 1000

% Table and array parameters
\setlength\arraycolsep{.5em}
\setlength\tabcolsep{.5em}
\setlength\arrayrulewidth{.25pt}
\setlength\doublerulesep{2.5pt}
\renewcommand\arraystretch{1}

\flushbottom
\frenchspacing
\fussy
\emergencystretch = 0.4pc
\ps@headings




\newcommand{\exercisename}{Problems}

\newcounter{exercises}[chapter]
\renewcommand{\theexercises}{\thechapter.\arabic{exercises}}
\newenvironment{problems}[1][\theexercise]{\section*{\exercisename}%
\begin{list}{{\theexercise}}{\settowidth{\labelwidth}{#1}%
               \listparindent1em\itemsep6pt\leftmargin\labelwidth\labelsep1em%
               \addtolength{\leftmargin}{\labelsep}\usecounter{exercises}
               \def\makelabel##1{\hbox to \labelwidth{##1\hss}}}}
               {\end{list}}

\newcommand{\qenumerate}[1][a]{%
  \def\@mathmargin{0\p@}
  \ifnum \@enumdepth >\thr@@\@toodeep\else
    \advance\@enumdepth\@ne
    \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
      \expandafter
      \list
        \csname label\@enumctr\endcsname
        {\settowidth{\labelwidth}{#1}%
         \labelsep=.5em%
         \leftmargin=\labelwidth
         \addtolength{\leftmargin}{\labelsep}%
%         \advance\labelwidth by \labelsep
         \usecounter\@enumctr\def\makelabel##1{\hbox{##1}}}%
      \fi}
\let\endqenumerate =\endlist


\newenvironment{questions}[1][9]{\section*{Questions and problems}%
  \begingroup
  \let\enumerate\qenumerate
  \addcontentsline{toc}{section}{Questions and problems}%
  \begin{list}{\theenumi}{%
      \usecounter{enumi}%
      \setlength{\labelsep}{.5em}%
      \settowidth{\labelwidth}{#1}%
      \setlength{\leftmargin}{\labelwidth}%
      \addtolength{\leftmargin}{\labelsep}}%
}
{\end{list}\endgroup}



% Note section
\newcommand{\notesname}{Notes}

%%%For chapter end notes%%%%
\newenvironment{notes}[1][1]{%
        \section*{\notesname}%
        \vspace{2\p@}%
        \setcounter{secnumdepth}{1}%
        \fontsize{9}{10}\selectfont\begin{list}{\arabic{enumiv}}%
        {\setlength\leftmargin{\z@}\setlength{\labelsep}{.5em}\settowidth{\labelwidth}{#1}%
        \addtolength{\leftmargin}{\labelwidth}\addtolength{\leftmargin}{\labelsep}\usecounter{enumiv}}}
{\end{list}}

% Override settings in mathtime back to TeX defaults
\DeclareMathSizes{5}     {5}   {5}  {5}
\DeclareMathSizes{6}     {6}   {5}  {5}
\DeclareMathSizes{7}     {7}   {5}  {5}
\DeclareMathSizes{8}     {8}   {6}  {5}
\DeclareMathSizes{9}     {9}   {6.5}  {5}
\DeclareMathSizes{10}   {10}   {7.5}  {5}
\DeclareMathSizes{12}   {12}   {9}  {7}



\hyphenation{figure figures Figure Figures table tables Table Tables section sections Section
Sections percent}


%%%Theorems style%%
\newtheoremstyle{common}
    {12\p@ plus 3\p@ minus 1\p@}% above space
    {12\p@ plus 3\p@ minus 1\p@}% below space
    {\it}% body
    {0em}% indent
    {\bfseries}% head
    {}% punct
    {1em}% space
    {}% custom
\theoremstyle{common}

\newtheorem{example}{Example}[chapter]
\newtheorem{thm}{Theorem}[chapter]
\newtheorem{lemma}{Lemma}[chapter]
\newtheorem{remark}{Remark}[chapter]
\newtheorem{definition}{Definition}[chapter]
\newtheorem{oproposition}{Proposition}%[chapter]%
\newenvironment{proposition}{\bgroup\begin{oproposition}\it}{\end{oproposition}\egroup}

\newtheoremstyle{comm}
    {12\p@ plus 3\p@ minus 1\p@}% above space
    {12\p@ plus 3\p@ minus 1\p@}% below space
    {\rmfamily}% body
    {0em}% indent
    {}% head
    {:}% punct
    {1em}% space
    {}% custom
\theoremstyle{comm}

\newtheorem{exam}{Example}[chapter]



\newcolumntype{P}[1]{>{\raggedright\let\\\@arraycr}p{#1}}





% Author queries
\fboxsep=3\p@
\fboxrule=0.5\p@
\newcommand{\query}[2][0pt]{%
  \marginpar{\vspace*{#1}%
    \hspace*{10pt}\fbox{\parbox{5pc}{%
     \raggedright\small
        AQ: #2}}}}




\fboxsep=3\p@
\fboxrule=0.5\p@
\newcommand{\pequery}[2][0pt]{%
  \marginpar{\vspace*{#1}%
    \fbox{\parbox{5pc}{%
     \raggedright\small
        PQ: #2}}}}


%%%%%%%%%%%%55
\def\@biblabel#1{\ifx Y\squareref{[#1]}\else\ifx Y\parenref{\let\squareref=N(#1)}\else\ifx Y\dotref{\let\squareref=N\let\parenref=N#1.}\fi\fi\fi}
\newenvironment{numbibliography}[1]
     {\section*{\refname
        \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
           \setlength{\labelsep}{.5\labelwidth}%
           \setlength{\leftmargin}{.5\labelwidth}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            %\@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000\fontsize{8}{9}\selectfont%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\let\squareref=Y%



%%%%%%%%%%%55
\newcommand{\sectiontitle}[1]{{\fontsize{13}{15}\selectfont\vspace{53mm}\hfill{\it
 #1}} \clearemptydoublepage}

%%%%%%%
\def\tabline#1{\\[-2.5pt]\multicolumn{#1}{@{}c@{}}{\hrulefill\SP{0}{3.4}}\\}
%%%%%%%%%55
\def\@cline#1-#2\@nil{\noalign{\vskip-3pt}
%\tabcolsep0pt
  \omit
  \@multicnt#1%
  \advance\@multispan\m@ne
  \ifnum\@multicnt=\@ne\@firstofone{&\omit}\fi
  \@multicnt#2%
  \advance\@multicnt-#1%
  \advance\@multispan\@ne
  \leaders\hrule\@height.5pt\hfill
  \cr
  \noalign{\vskip-\arrayrulewidth}\vrule height10pt width0pt depth0pt\\[-10pt]}
%%%%%%%%%%%%%%%

\endinput
