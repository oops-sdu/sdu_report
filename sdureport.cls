\ProvidesClass{sdureport}[2019/10/01 v0.9 Standard LaTeX Template for Experiment Report in SDU]
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
%%%% 承诺书
\newcommand*\sdu@tokens@college{}
\newcommand*\sdu@tokens@course{}
\newcommand*\sdu@tokens@sdudentId{}
\newcommand*\sdu@tokens@name{}
\newcommand*\sdu@tokens@class{}
\newcommand*\sdu@tokens@experimentalTopics{}
\newcommand*\sdu@tokens@experimentalHours{}
\newcommand*\sdu@tokens@date{}

%% Loading Class
\LoadClass[a4paper,12pt]{article}

%% --------------------------- Loading Package ----------------------------
\RequirePackage{ifxetex}
	\RequireXeTeX
	\ifxetex\else
	\ClassError{sdureport}{You must use the `xelatex' driver. Please choose `xelatex'}{Just choose `xelatex', no `pdflatex' or `latex' and so on.}
	\fi
\RequirePackage{xeCJK}  % 中文
\RequirePackage[texcoord]{eso-pic}  % 作图
\RequirePackage{geometry}  % 页面布局
	\newgeometry{left=1.7cm, right=1.7cm, top=2cm, bottom=2cm}
\RequirePackage{framed}  % framed
\RequirePackage{titlesec}  % titlesec
% 图片
\RequirePackage{graphicx}
\RequirePackage{float} 
\RequirePackage{subfigure}
% 设置代码环境
\RequirePackage{listings}
\RequirePackage{xcolor}
% 列表
\RequirePackage{enumitem}
% 书签
\RequirePackage[breaklinks,colorlinks,linkcolor=black,citecolor=black,urlcolor=black]{hyperref}
%% ----------------------------- setting -----------------------------------
% 字体
\setmainfont{Consolas}
\setmonofont{Courier New}
\setCJKmainfont[Path=fonts/,BoldFont={SourceHanSansHWSC-Bold.otf}]{SourceHanSansHWSC-Regular.otf}


\titleformat{\section}[block]{\large\bfseries}{}{0em}{\begin{picture}(1,1)\put(-9,26.1){\line(1,0){500}}\end{picture}}
\titleformat{\subsection}[block]{\large}{\arabic{subsection}}{0.5em}{}
\titleformat{\subsubsection}[block]{\large}{\arabic{subsection}.\arabic{subsubsection}}{0.5em}{}

% \setlength{\parindent}{0pt}
\pagestyle{plain}

% 代码样式
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
\lstset{
	numbers=left, 
	numberstyle= \tiny, 
	keywordstyle= \color{ blue!70},
	commentstyle= \color{red!50!green!50!blue!50}, 
	frame=tb,
	rulecolor=\color{gray!35},
	backgroundcolor=\color{gray!5},
	escapeinside=``, % 英文分号中可写入中文
	xleftmargin=2em, aboveskip=1em,
	framexleftmargin=2em,
	breaklines = true,
	breakatwhitespace = true,
} 
%% ----------------------------- define command-----------------------------
% new document
\newenvironment{sduDocument}
{	
	\begin{center}
		\huge{山东大学\underline{~\sdu@tokens@college~}学院 \\
		\underline{~\sdu@tokens@course~}课程实验报告}
	\end{center}
	\begin{framed}
	\AddToShipoutPictureBG*{%
		\setlength{\unitlength}{1mm}
%		\put( 17, -45.6){\line(1,0){176}} % 上横线
		\put( 20, -51.6){\makebox(0,0)[l]{学号：\sdu@tokens@sdudentId}}
		\put( 77, -55.6){\line(0,1){9}}
		\put( 80, -51.6){\makebox(0,0)[l]{姓名：\sdu@tokens@name}}
		\put( 137, -55.6){\line(0,1){9}}
		\put( 140, -51.6){\makebox(0,0)[l]{班级：\sdu@tokens@class}}
		\put( 17, -55.6){\line(1,0){176}} % 下横线
		\put( 20, -60.6){\makebox(0,0)[l]{实验题目：\sdu@tokens@experimentalTopics}}
		\put( 17, -65.6){\line(1,0){176}} % 下横线
		\put( 20, -70.6){\makebox(0,0)[l]{实验学时：\sdu@tokens@experimentalHours}}
		\put( 77, -74.8){\line(0,1){9.3}}
		\put( 80, -70.6){\makebox(0,0)[l]{实验日期：\sdu@tokens@date}}
		% \put( 17, -75.6){\line(1,0){176}} % 下横线
	}
	\vspace{23.1mm}
}
{
	\end{framed}
	% \vspace{4 mm}\begin{center}\huge{附录}\end{center}
}
%\newcommand\sduAppendix{\vspace{4 mm}\begin{center}\huge{附录}\end{center}}




\newcommand*\sduCollege[1]{
	\renewcommand{\sdu@tokens@college}{#1}}
\newcommand*\sduCourse[1]{
	\renewcommand{\sdu@tokens@course}{#1}}
\newcommand*\sduSdudentId[1]{
	\renewcommand{\sdu@tokens@sdudentId}{#1}}
\newcommand*\sduName[1]{
	\renewcommand{\sdu@tokens@name}{#1}}
\newcommand*\sduClass[1]{
	\renewcommand{\sdu@tokens@class}{#1}}
\newcommand*\sduExperimentalTopics[1]{
	\renewcommand{\sdu@tokens@experimentalTopics}{#1}}
\newcommand*\sduExexperimentalHours[1]{
	\renewcommand{\sdu@tokens@experimentalHours}{#1}}
\newcommand*\sduDate[1]{
	\renewcommand{\sdu@tokens@date}{#1}}