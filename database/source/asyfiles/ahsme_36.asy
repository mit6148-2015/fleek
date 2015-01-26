settings.outformat="svg";
import olympiad;
unitsize(15);

size(150);defaultpen(linewidth(0.8)+fontsize(8));draw((-2.5,0)--(2.5,0),EndArrow(size=7));draw((0,-3)--(0,3),EndArrow(size=7));label("$O$",(0,0),SW);label("$u$",(2.5,0),E);label("$v$",(0,3),N);draw((0,2)--(1,0)--(-1,0)--cycle);label("$(0,2)$",(0,2),NE);label("$(1,0)$",(1,0),S);label("$(-1,0)$",(-1,0),S);label("$\textbf{(C)}$",(-2,1.5));