settings.outformat="svg";
import olympiad;
unitsize(15);

size(250);defaultpen(linewidth(0.55));pair A=(-6,0), B=origin, C=(0,6), D=(0,12);pair ac=C+2.828*dir(45),ca=A+2.828*dir(225),ad=D+2.828*dir(A--D),da=A+2.828*dir(D--A),ab=(2.828,0),ba=(-6-2.828, 0);fill(A--C--D--cycle, gray);draw(ba--ab);draw(ac--ca);draw(ad--da);draw((0,-1)--(0,15));draw((1/3, -1)--(1/3, 15));int i;for(i=1; i<15; i=i+1) {draw((-1/10, i)--(13/30, i));}label("$A$", A, SE);label("$B$", B, SE);label("$C$", C, SE);label("$D$", D, SE);label("$3$", (1/3,3), E);label("$3$", (1/3,9), E);label("$3$", (-3,0), S);label("Main", (-3,0), N);label(rotate(45)*"Aspen", A--C, SE);label(rotate(63.43494882)*"Brown", A--D, NW);