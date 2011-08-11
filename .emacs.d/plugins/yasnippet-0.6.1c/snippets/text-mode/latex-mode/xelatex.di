#contributor : Lijunpeng <maillijunpeng@gmail.com>
#name : xelatex use (XeTeX低层源码)
# --
\documentclass[11pt,a4paper]{article}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage[slantfont,boldfont]{xeCJK}
 
% 设置中文字体
% ==========================================================
\setCJKmainfont[BoldFont=Adobe Heiti Std,ItalicFont=Adobe Kaiti Std]{Adobe Song Std}
\setCJKsansfont{Adobe Heiti Std}
\setCJKmonofont{Adobe Fangsong Std}
 
\setCJKfamilyfont{zhsong}{Adobe Song Std}
\setCJKfamilyfont{zhhei}{Adobe Heiti Std}
\setCJKfamilyfont{zhfs}{Adobe Fangsong Std}
\setCJKfamilyfont{zhkai}{Adobe Kaiti Std}
% Custom setting for 隶书 and 幼圆
\setCJKfamilyfont{zhli}{LiSu}
\setCJKfamilyfont{zhyou}{YouYuan}
 
\newcommand*{\songti}{\CJKfamily{zhsong}} % 宋体
\newcommand*{\heiti}{\CJKfamily{zhhei}}   % 黑体
\newcommand*{\kaishu}{\CJKfamily{zhkai}}  % 楷书
\newcommand*{\fangsong}{\CJKfamily{zhfs}} % 仿宋
\newcommand*{\lishu}{\CJKfamily{zhli}}    % 隶书
\newcommand*{\youyuan}{\CJKfamily{zhyou}} % 幼圆
% ==========================================================
 
\title{\LaTeX 中文设置之低层方案}
\author{作者}
\date{\today}
 
\begin{document}
\maketitle
 
\begin{center}
  字体示例：\\
  \begin{tabular}{c|c}
    \hline
    \textbf{\TeX 命令} & \textbf{效果}\\
    \hline
    \verb|{\songti 宋体}| & {\songti 宋体}\\
    \hline
    \verb|{\heiti 黑体}| & {\heiti 黑体}\\
    \hline
    \verb|{\fangsong 仿宋}| & {\fangsong 仿宋}\\
    \hline
    \verb|{\kaishu 楷书}| & {\kaishu 楷书}\\
    \hline
    \verb|{\lishu 隶书}| & {\lishu 隶书}\\
    \hline
    \verb|{\youyuan 幼圆}| & {\youyuan 幼圆}\\
    \hline
  \end{tabular}
\end{center}
\end{document}
