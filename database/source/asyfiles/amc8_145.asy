settings.outformat="svg";
import olympiad;
unitsize(15);

size(80);defaultpen(linewidth(0.8));defaultpen(fontsize(8));draw(origin--(5,0)--(5,3)--(2,3)--cycle);draw(rightanglemark((5,3), (5,0), origin));label("5 in", (2.5,0), S);label("3 in", (5,1.5), E);label("3 in", (3.5,3), N);