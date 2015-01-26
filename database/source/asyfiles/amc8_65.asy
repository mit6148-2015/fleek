settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(18);for (int a = 0; a <= 6; ++a){    draw((4*a,0)--(4*a,10));}for (int a = 0; a <= 5; ++a){    draw((0,2*a)--(24,2*a));}draw((0,5)--(4,4)--(8,8)--(12,3)--(16,9)--(20,6)--(24,2),linewidth(1.5));label("$Jan$",(2,0),S);label("$Feb$",(6,0),S);label("$Mar$",(10,0),S);label("$Apr$",(14,0),S);label("$May$",(18,0),S);label("$Jun$",(22,0),S);label("$\textbf{1993 PRICES FOR A TRADING CARD}$",(12,10),N);label("$\begin{tabular}{c}\textbf{P} \\ \textbf{R} \\ \textbf{I} \\ \textbf{C} \\ \textbf{E} \end{tabular}$",(-2,5),W);label("$1$",(0,2),W);label("$2$",(0,4),W);label("$3$",(0,6),W);label("$4$",(0,8),W);label("$5$",(0,10),W);