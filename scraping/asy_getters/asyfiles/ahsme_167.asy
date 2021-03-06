settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(.8pt)+fontsize(10pt));draw((-1,1)--(2,1));draw((-1,0)--(1,0));draw((-1,1)--(-1,0));draw((0,-1)--(0,3));draw((1,2)--(1,0));draw((-1,1)--(1,1));draw((0,2)--(1,2));draw((0,3)--(1,2));draw((0,-1)--(2,1));draw((0,-1)--((0,-1) + sqrt(2)*dir(-15)));draw(((0,-1) + sqrt(2)*dir(-15))--(1,0));label("$\textbf{A}$",foot((0,2),(0,3),(1,2)),SW);label("$\textbf{B}$",midpoint((0,1)--(1,2)));label("$\textbf{C}$",midpoint((-1,0)--(0,1)));label("$\textbf{D}$",midpoint((0,0)--(1,1)));label("$\textbf{E}$",midpoint((1,0)--(2,1)),NW);label("$\textbf{F}$",midpoint((0,-1)--(1,0)),NW);label("$\textbf{G}$",midpoint((0,-1)--(1,0)),2SE);