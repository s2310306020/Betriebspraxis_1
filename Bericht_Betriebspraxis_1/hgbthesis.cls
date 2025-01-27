%% hgbthesis.cls
%% Autor: Wilhelm Burger (wilhelm.burger@fh-hagenberg.at)
%% Diese Datei ist Teil des hagenberg-Package zur Erstellung von 
%% Bachelor- und Diplomarbeiten.

\NeedsTeXFormat{LaTeX2e}
\newcommand{\hgbthesisDate}{2014/11/05} %Versionsdatum
\ProvidesClass{hgbthesis}[\hgbthesisDate\space LaTeX-Vorlage fuer Diplomarbeiten, Masterarbeiten, Bachelorarbeiten etc.]

\newcommand{\@prtitelseiten}{}
\newcommand{\@maketitlepages}{\@matitelseiten}  %default: Masterarbeit


%% begin class options ---------------------------------------------
\DeclareOption{praktikum}{\renewcommand{\@maketitlepages}{\@prtitelseiten}}
\ProcessOptions
%% end class options ---------------------------------------------
 
\LoadClass[a4paper,11pt,oneside]{book}
 
\RequirePackage{hgb}	% load associated style file hgb.sty


%-------------- Setup für Seiten im Front-Teil --------------------

\newcommand{\uproman}[1]{\uppercase\expandafter{\romannumeral#1}}

\newcommand{\@berichtNr}{\@MissingArg{Berichtnummer??}}
\newcommand{\berichtNr}[1]{%
	\renewcommand{\@berichtNr}{#1}
}

\newcommand{\@studiengang}{\@MissingArg{Studiengang??}}
\newcommand{\studiengang}[1]{%
	\renewcommand{\@studiengang}{#1}
}

\newcommand{\@studienort}{\@MissingArg{Studienort??}}
\newcommand{\studienort}[1]{%
	\renewcommand{\@studienort}{#1}
}

\newcommand{\@betreuerBez}{????}
\newcommand{\@betreuerName}{\@MissingArg{Betreuer??}}

\newcommand{\betreuer}[1]{%
  \renewcommand{\@betreuerBez}{Betreuer}
	\renewcommand{\@betreuerName}{#1}
}

\newcommand{\@semester}{\@MissingArg{Semester??}}
\newcommand{\semester}[1]{%
	\renewcommand{\@semester}{#1}
}

\newcommand{\@logofile}[0]{} %UASUA-Wappen_4c}
\newcommand{\logofile}[1]{%
	\renewcommand{\@logofile}{#1}
}

\newcommand{\makelogo}[0]{%
\ifthenelse{\equal{\@logofile}{}}%
	{\vspace*{30mm}}%
	{\includegraphics[height=30mm]{\@logofile}}%
}

% -------------------------------------------------

\newcounter{@abgabetag}
\newcounter{@abgabemonat}
\newcounter{@abgabejahr}

\setcounter{@abgabetag}{\the\day}
\setcounter{@abgabemonat}{\the\month}
\setcounter{@abgabejahr}{\the\year}

\newcommand{\abgabedatum}[3]{%	%\abgabedatum{yyyy}{mm}{dd}
	\setcounter{@abgabejahr}{#1}
	\setcounter{@abgabemonat}{#2}
	\setcounter{@abgabetag}{#3}
}



% ----------------------------------------------------------

\newcommand{\@firma}{\@MissingArg{Firma??}}
\newcommand{\firma}[1]{%
\renewcommand{\@firma}{#1}
}

\newcommand{\@firmenUrl}{\@MissingArg{www.???}}
\newcommand{\firmenUrl}[1]{%
\renewcommand{\@firmenUrl}{#1}
}

\newcommand{\@firmenTel}{\@MissingArg{Tel??}}
\newcommand{\firmenTel}[1]{%
\renewcommand{\@firmenTel}{#1}
}

\newcommand{\@license}{\@MissingArg{Lizenztext??}}
\newcommand{\license}[1]{%
\renewcommand{\@license}{#1}
}


\newcommand{\@prtitel}{%
\begin{titlepage}%
\begin{german}
\rule{0mm}{1mm}
\vspace*{0mm}
\begin{center}%
	\normalfont
  \setlength{\unitlength}{1cm}
	\parbox[c][5cm][c]{12cm}{\centering\LARGE\bf%
    \setlength{\baselineskip}{25pt}%
    Bericht zur Betriebspraxis \@berichtNr} 
	\vskip 15mm%
	{\large\sc\@author}%
	\vskip 15mm%
	\makelogo%
	%%\vskip 15mm%
	\vskip 20mm%
	%%{\Large B\,A\,C\,H\,E\,L\,O\,R\,A\,R\,B\,E\,I\,T}%
	\vskip 4mm%
  {\large }
	\vskip 4mm%
	%%{\large eingereicht am} \vskip 1mm 
	{Fachhochschul-Bachelorstudiengang}%
	\vskip 4mm%
	{\large\@studiengang}%
	\vskip 4mm%
	{\large in \@studienort}%
	\vskip 16mm%
	{\large im \monthname[\value{@abgabemonat}] \arabic{@abgabejahr}}%
\end{center}%
  \vfil%
\end{german}
\end{titlepage}%
}




%------------------ Firmen-Seite -------------------
\newcommand{\@firmenseite}{%
\newpage
\setcounter{page}{2}
\thispagestyle{plain}
\rule{0mm}{1mm}
\begin{center}
\vspace{25mm} 
{Praktikumsstelle:}
\\
\vspace{3mm}
{\Large\sf\@firma\\ \mbox{}}
\\
{\sf \@firmenTel}
\\
{\sf \@firmenUrl}
\\
\vspace{45mm} 
{Kontaktperson:}
\\
\vspace{3mm} 
{\Large\sf\@betreuerName\\ \mbox{}}
\end{center}
}



%% -------------- Erklärung / Declaration ---------

%\newcommand{\@erklaerungsseiteDe}{%
%\begin{german}
%\chapter{Erklärung}
%\noindent
%%Standardfassung der FH-OÖ ab 04.04.2012:
%Ich erkläre eidesstattlich, dass ich die vorliegende Arbeit selbstständig und ohne fremde Hilfe verfasst, 
%andere als die angegebenen Quellen nicht benutzt und die den benutzten Quellen entnommenen Stellen als 
%solche gekennzeichnet habe. Die Arbeit wurde bisher in gleicher oder ähnlicher Form keiner anderen 
%Prüfungsbehörde vorgelegt.
%\par
%\vspace{10mm}
%\noindent
%\@studienort, am \formatdate{\value{@abgabetag}}{\value{@abgabemonat}}{\value{@abgabejahr}}
%\par
%\vspace{12mm}
%\noindent
%\@author
%\end{german}
%}



%\newcommand{\@erklaerungsseite}{%
%\ifthenelse{\equal{\hgb@MainLanguage}{german}}%
	%{\@erklaerungsseiteDe}%
	%{\@erklaerungsseiteEn}
%}


%------------ Struktur der Frontseite -------------------


\renewcommand{\@prtitelseiten}{
\@prtitel
\@firmenseite
%\@erklaerungsseite
}

%------------ Automatischer Eintrag der PDF Metadaten ------------

\renewcommand{\maketitle}{	%replace standard LaTeX-command
\hypersetup{
		pdftitle={\@title},
		pdfauthor={\@author},
		pdfsubject={\@studiengang, \@studienort},
		pdfcreator={LaTeX using class hgbthesis},
		pdfproducer={},
		pdfkeywords={}
}%
\@maketitlepages
}

%%-------------------------------------------------------------

%\usepackage{hgbheadings}
%\usepackage{hgbbib}

%%-------------------------------------------------------------

\endinput

