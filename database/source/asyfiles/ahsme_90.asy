settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7)+fontsize(8));size(250);path p=origin--(5,0)--(5,3)--(0,3)--cycle;path q=(5,19)--(6,19)--(6,20)--(5,20)--cycle;int i,j;for(i=0; i<5; i=i+1) {for(j=0; j<6; j=j+1) {draw(shift(6*i, 4*j)*p);}}clip((4,2)--(25,2)--(25,21)--(4,21)--cycle);fill(q^^shift(18,-16)*q^^shift(18,-12)*q, black);label("A", (6,19), SE);label("B", (23,4), NW);label("C", (23,8), NW);draw((26,11.5)--(30,11.5), Arrows(5));draw((28,9.5)--(28,13.5), Arrows(5));label("N", (28,13.5), N);label("W", (26,11.5), W);label("E", (30,11.5), E);label("S", (28,9.5), S);