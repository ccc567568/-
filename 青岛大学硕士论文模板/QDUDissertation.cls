%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{QDUBachelor}[2020.8.3 1.0 Qingdao University Thesis Template for Master Degree]

\LoadClass[twoside,openright,zihao=-4,UTF8]{ctexbook}


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
\newif\ifprint\printfalse
\DeclareOption{forprint}{\printtrue}
\ProcessOptions
%------------------------ Packages ------------------------
\RequirePackage[backref]{hyperref} %PDF链接设置
\usepackage{longtable}
\usepackage{multirow}
\usepackage{gbt7714}
\usepackage{enumitem}
\setlist[itemize,enumerate]{itemsep=0pt, parsep=0pt, topsep=0pt}
\hypersetup{pdfencoding=auto} 
 \ifprint
 \hypersetup{hidelinks,colorlinks=true,allcolors=black}
 \else
\hypersetup{hidelinks,allcolors=black,colorlinks=true,linkcolor=blue,anchorcolor=pink,citecolor=magenta,urlcolor=red}
\fi
\usepackage{anyfontsize}
\RequirePackage{fancyhdr}
\usepackage{layout}
\usepackage{ulem}
%\RequirePackage{wallpaper} %用于封面元素对齐
\RequirePackage{makecell}
\RequirePackage{array} %绘制封面下划线
\RequirePackage{titlesec} %标题样式设置
\RequirePackage[subfigure]{tocloft} %目录样式设置
\RequirePackage{tikz} %绘图
\RequirePackage{amsmath} %数学公式
\RequirePackage{graphicx} %插图环境
\RequirePackage[font=small,labelfont=bf,textfont=bf,labelsep=space]{caption}
\RequirePackage{subfigure} %并排图片
\RequirePackage{diagbox} %绘制斜线表头
\RequirePackage{floatrow} %表格标题五号置顶
\DeclareFloatFont{tblfont}{\zihao{5}}
\floatsetup[table]{font=tblfont,capposition=top}
%\RequirePackage[super,square]{natbib} %引用格式设置为上标方括号

\renewcommand{\thesection}{\thechapter.\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}

%head&foot setting
\makeatletter
\newcommand*{\emptystyles}{%
\let\oldplain\ps@plain
\let\ps@plain\ps@emptynumbering
\pagestyle{plain}}

\newcommand*{\restorestyles}{%
\let\ps@plain\oldplain
\pagestyle{plain}}
\renewcommand{\theequation}{\thechapter-\arabic{equation}}
\@addtoreset{equation}{chapter}
\makeatother

\fancypagestyle{plain}{%
\fancyhf{}
\chead{\zihao{5} 青岛大学硕士学位论文}
\cfoot{\zihao{5}\thepage}
\renewcommand\headrulewidth{0.4pt}
}

\fancypagestyle{emptynumbering}{%
\fancyhf{}
\renewcommand\headrulewidth{0pt}
}

%chapter&section setting
\renewcommand{\contentsname}{\hspace*{\fill}\zihao{-3} 目\quad{}录\hspace*{\fill}}
\setcounter{secnumdepth}{3}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\setlength\cftbeforetoctitleskip{0em}
\ctexset { chapter = { format+={\heiti \zihao {-3}},beforeskip=0em,afterskip=1em} } 
\ctexset { section = { format+={\raggedright \heiti \zihao {4}} } }
\ctexset { subsection = { format+={\heiti \zihao {-4}} } }
\ctexset { subsubsection = {  format+={\heiti \zihao {-4}} ,indent={1pc},number={(\arabic {subsubsection})} } }

%font setting
\RequirePackage{xeCJK}
\setCJKmainfont{SimSun}[AutoFakeBold,ItalicFont=KaiTi]
\linespread{1.25}
%\RequirePackage{fontspec}
%\setmainfont{Times New Roman}
%\setCJKfamilyfont{xbsong}{SimSun}
%\newcommand{\xbsong}{\CJKfamily{xbsong}}

\makeatletter
\newcommand{\clearemptydoublepage}{%
  \clearpage
  \if@twoside
    \ifodd\c@page
    \else
      \thispagestyle{empty}\null\newpage
      \if@twocolumn
        \thispagestyle{empty}\null\newpage
      \fi
    \fi
  \fi
}
\makeatother

%parameter
\newtoks\UDC%分类号
\newtoks\security%密级
\newtoks\schoolnumber%学校代码
\newtoks\mynumber%学号
\newtoks\title %论文标题
\newtoks\titleEn %论文英文标题
\newtoks\school %学院，培养单位
\newtoks\major %学科
\newtoks\name %姓名
\newtoks\supervisor %指导教师
\newtoks\date %封面日期

\RequirePackage{listings} %代码样式
% \definecolor{gray}{rgb}{0.5,0.5,0.5}
\lstset{ 
  tabsize=4, %
  frame=single, %把代码用带有阴影的框圈起来
  %commentstyle=\color{gray}, %浅灰色的注释
  %rulesepcolor=\color{red!20!green!20!blue!20}, %代码块边框为淡青色
  %keywordstyle=\color{green}\bfseries, %代码关键字的颜色为蓝色，粗体
  keywordstyle=\bfseries,
  showstringspaces=false,%不显示代码字符串中间的空格标记
  keepspaces=true, %
  breakindent=22pt, %
  numbers=left,%左侧显示行号
  stepnumber=1,%
  numberstyle=\tiny, %行号字体用小号
  basicstyle=\footnotesize, %
  showspaces=false, %
  flexiblecolumns=true, %
  breaklines=true, %对过长的代码自动换行
  breakautoindent=true,%
  breakindent=4em, %
  escapechar=``,
  escapebegin=\begin{CJK*}{GBK}{SimSum},escapeend=\end{CJK*},
  aboveskip=1em, %代码块边框
  %% added by http://bbs.ctex.org/viewthread.php?tid=53451
  fontadjust,
  captionpos=t,
  framextopmargin=2pt,framexbottommargin=2pt,abovecaptionskip=-3pt,belowcaptionskip=3pt,
  xleftmargin=4em,xrightmargin=4em, % 设定listing左右的空白
  % 设定中文冲突，断行，列模式，数学环境输入，listing数字的样式
  extendedchars=false,columns=flexible
  % numbersep=-1em
}
\RequirePackage[
  a4paper,
  verbose,
  left=3.1cm,
  right=2.6cm,
  top=2.6cm,
  bottom=2.6cm,
  headheight=15pt,
  headsep=0.45cm,
  footskip=1.0cm
]{geometry} %页面设置
\raggedbottom
\setcounter{topnumber}{3}
\setcounter{bottomnumber}{2}
\setcounter{totalnumber}{5}
\renewcommand{\topfraction}{0.9}
\renewcommand{\bottomfraction}{0.8}
\renewcommand{\textfraction}{0.08}
\renewcommand{\floatpagefraction}{0.8}
\setlength{\textfloatsep}{10pt plus 2pt minus 4pt}
\setlength{\floatsep}{8pt plus 2pt minus 2pt}
\setlength{\intextsep}{10pt plus 2pt minus 2pt}
\setlength{\abovecaptionskip}{6pt}
\setlength{\belowcaptionskip}{4pt}
%------------------------ cover ------------------------
\newcommand{\covercosupervisor}{}
\newcommand{\coverresearchdirection}{}
\newcommand{\coverdate}{}
\newcommand{\cosupervisor}[1]{\renewcommand{\covercosupervisor}{#1}}
\newcommand{\researchdirection}[1]{\renewcommand{\coverresearchdirection}{#1}}
\newcommand{\coverdatevalue}[1]{\renewcommand{\coverdate}{#1}}

\def\maketitle {
    \begin{titlepage}
    \thispagestyle{empty}
    %\CenterWallPaper{1}{temp.pdf}
    %\vspace*{5pt}
    \begin{minipage}[c][3cm][c]{\textwidth}
    	\begin{tabbing}
    		\quad \qquad \zihao{5} \heiti 分类号：\heiti \the\UDC  \hspace{6.9cm} \= \zihao{5} \heiti 密级：\heiti \the\security \\
    		\quad \qquad \zihao{5} \heiti 学校代码：\heiti \the\schoolnumber        \>    \zihao{5}    \heiti 学号：\heiti \the\mynumber
    	\end{tabbing}
    	
    \end{minipage}\\

    \centerline{\includegraphics[height=5cm,width=18cm]{figures/qdu-logo.jpg} }
    \begin{center}
    	\heiti \zihao{0} 学术硕士学位论文 \\
    	\vspace{10pt}
    	\heiti \zihao{3} （统招全日制）
    \end{center}
    \vspace{10pt}
    \centerline{\zihao{3} \heiti \the\title}
    \vspace{120pt}
    \centerline {
        \begin{tabular}{ b{3cm} >{\arraybackslash}b{7cm}}
            \songti \zihao{4}  {作者姓名：} & \makecell[c]{\songti  \zihao{4} \the\name} \\[-2pt]
            \Xcline{2-2}{1pt} \\[0.1cm]
            \songti \zihao{4}  {指导教师：} & \makecell[c]{\songti  \zihao{4} \the\supervisor} \\[-2pt]
            \Xcline{2-2}{1pt} \\[0.1cm]
            \songti \zihao{4} \ziju{2} {学科：} & \makecell[c]{\songti  \zihao{4} \the\major} \\[-2pt]
            \Xcline{2-2}{1pt} \\[0.1cm]
            \songti \zihao{4}  {培养单位：} & \makecell[c]{\songti  \zihao{4}\the\school} \\[-2pt]
            \Xcline{2-2}{1pt} \\[0.1cm]
            \songti \zihao{4} {答辩日期：} & \makecell[c]{\songti  \zihao{4} \the\date} \\[-2pt]
            \Xcline{2-2}{1pt} \\[0.1cm]
        \end{tabular}
    }
    %\vskip 1\baselineskip
    %\centerline{\fangsong \zihao{4} \textbf{\the\date}}
    \end{titlepage}
%    \thispagestyle{empty}
%    \begin{center}
%    ~~\vfill
%    \heiti \zihao{2}{\the\title}\\
%    \heiti \zihao{2}{\the\titleEn}
%    ~~\vfill
%    \end{center}
}

\def\maketitle {
    \begin{titlepage}
    \newgeometry{left=2.5cm,right=2.5cm,top=1.9cm,bottom=2.0cm}
    \thispagestyle{empty}
    \heiti
    \noindent
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
        分类号：\the\UDC & 密级：\the\security\\[0.35em]
        学校代码：\the\schoolnumber & 学号：\the\mynumber
    \end{tabular*}

    \vspace{1.65cm}
    \begin{center}
        \includegraphics[width=0.78\textwidth]{figures/qdu-logo.jpg}

        \vspace{0.9cm}
        {\heiti\zihao{1} 学术硕士学位论文}

        \vspace{0.35cm}
        {\heiti\zihao{4} （统招全日制）}

        \vspace{1.15cm}
        {\heiti\zihao{3} \the\title}
    \end{center}

    \vfill
    \centerline {
        \begin{tabular}{ b{3cm} >{\arraybackslash}b{7cm}}
            \songti \zihao{4} {作者姓名\char"FF1A} & \makecell[c]{\songti \zihao{4} \the\name} \\[-2pt]
            \Xcline{2-2}{1pt} \\[0.1cm]
            \songti \zihao{4} {指导教师\char"FF1A} & \makecell[c]{\songti \zihao{4} \the\supervisor} \\[-2pt]
            \Xcline{2-2}{1pt} \\[0.1cm]
            \songti \zihao{4} \ziju{2} {学科\char"FF1A} & \makecell[c]{\songti \zihao{4} \the\major} \\[-2pt]
            \Xcline{2-2}{1pt} \\[0.1cm]
            % 如果谁想加合作导师,在这个位置加, and 去main.tex修改即可.
            \songti \zihao{4} {研究方向\char"FF1A} & \makecell[c]{\songti \zihao{4} \coverresearchdirection} \\[-2pt]
            \Xcline{2-2}{1pt} \\[0.1cm]
            \songti \zihao{4} {培养单位\char"FF1A} & \makecell[c]{\songti \zihao{4} \the\school} \\[-2pt]
            \Xcline{2-2}{1pt} \\[0.1cm]
            \songti \zihao{4} {答辩日期\char"FF1A} & \makecell[c]{\songti \zihao{4} \coverdate} \\[-2pt]
            \Xcline{2-2}{1pt} \\[0.1cm]
        \end{tabular}
    }
    \restoregeometry
    \end{titlepage}
}

%------------------------ declaration ------------------------
\def\declaration {
    \clearemptydoublepage
    \thispagestyle{empty}
    \vspace*{1cm}
    \centerline{\heiti \zihao{3} {郑~~重~~声~~明}}
    \vskip 1\baselineskip
    本人呈交的学位论文（设计），是在指导教师的指导下，独立进行研究工作所取得的成果，所有数据、图片资料真实可靠。除文中已经注明引用的内容外，本学位论文（设计）的研究成果不包含他人享有著作权的内容。对本论文（设计）所涉及的研究工作做出贡献的其他个人和集体，均已在文中以明确的方式标明。本学位论文（设计）的知识产权归属于青岛大学。
    \begin{center}
    本人签名：\rule{0.2\textwidth}{0.1pt} \hspace{0.08\textwidth} 日期：\rule{0.2\textwidth}{0.1pt}
    \end{center}
}

%------------------------ abstract ------------------------
\newcommand{\varKeyword}{}
\newcommand{\keyword}[1]{\renewcommand{\varKeyword}{#1}}
\newenvironment{abstract}[1]{
	\pagestyle{empty}
	\thispagestyle{empty}
	\vspace*{0pt}
	% =============================
	\centerline{\heiti \zihao{-3} {摘\quad{}要}}
	\setcounter{page}{1}
	\vspace{0.8cm}
	\keyword{#1}
}{
    \\
    ~~\vfill
    \noindent \textbf{关键词：} \varKeyword
    \clearemptydoublepage
}
\newenvironment{abstractEn}[1]{
	\pagestyle{empty}
	\thispagestyle{empty}
	\vspace*{0pt}
	% =============================
	\centerline{\heiti \zihao{-3} \bf{Abstract}}
	\vspace{0.8cm}
	\keyword{#1}
}{
    \\
    \vfill
    \noindent \textbf{Keywords:} \varKeyword
    \clearemptydoublepage
}

%------------------------ thanks ------------------------
\renewenvironment{thanks}{
    \chapter*{致\quad{}谢}
    \addcontentsline{toc}{chapter}{致谢} 
}{\clearpage}

%------------------------ appendix ------------------------
\renewenvironment{appendix}{
    \clearemptydoublepage
    \chapter*{附\quad{}录}
    \addcontentsline{toc}{chapter}{附录} 
}{\clearemptydoublepage}

%------------------------achievement-------------------------
\newenvironment{achievement}{
\clearemptydoublepage
\chapter*{攻读学位期间的学术成果}
\addcontentsline{toc}{chapter}{攻读学位期间的学术成果}
}{\clearemptydoublepage}

%------------------------ reference ------------------------
\newcommand{\reference}[1] {
    %\nocite{*}
    \bibliographystyle{gbt7714-numerical}
    \clearemptydoublepage
    \phantomsection
    \addcontentsline{toc}{chapter}{参考文献}
    \songti \zihao{5}
    \bibliography{#1}
}
