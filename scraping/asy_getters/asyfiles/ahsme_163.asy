settings.outformat="svg";
import olympiad;
unitsize(15);

int i;for(i=0; i<8; i=i+1) {dot((i,0)^^(i,5));}for(i=1; i<5; i=i+1) {dot((0,i)^^(7,i));}draw(origin--(7,0)--(7,5)--(0,5)--cycle, linewidth(0.8));pair P=(3.5, 2.5);draw((0,4)--P--(0,3)^^(2,0)--P--(3,0));label("$B$", (2.3,0), NE);label("$A$", (0,3.7), SE);