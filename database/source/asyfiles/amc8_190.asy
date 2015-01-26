settings.outformat="svg";
import olympiad;
unitsize(15);

size(100);draw(circle((0,0),1),linewidth(1));draw((0,0.75)--(0,1.25),linewidth(1));draw((0,-0.75)--(0,-1.25),linewidth(1));draw((0.75,0)--(1.25,0),linewidth(1));draw((-0.75,0)--(-1.25,0),linewidth(1));label("$N$",(0,1.25), N);label("$W$",(-1.25,0), W);label("$E$",(1.25,0), E);label("$S$",(0,-1.25), S);draw((0,0)--(-0.5,0),EndArrow);