settings.outformat="svg";
import olympiad;

size(80);defaultpen(linewidth(0.8));defaultpen(fontsize(8));draw(origin--(3,0)--(2.5,2)--(-0.5,2)--cycle);draw((2.5,2)--(2.5,0), dashed);draw(rightanglemark((2.5,2),(2.5,0), origin));label("3 in", (1.5,0), S);label("2 in", (2.5,1), W);