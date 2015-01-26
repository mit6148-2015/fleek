settings.outformat="svg";
import olympiad;
unitsize(15);

size(80);defaultpen(linewidth(0.8));defaultpen(fontsize(8));draw(origin--(4,0)--(4,2)--(0,2)--cycle);draw(rightanglemark((4,2), (4,0), origin));draw(rightanglemark((0,2), origin, (4,0)));label("4 in", (2,0), S);label("2 in", (4,1), E);