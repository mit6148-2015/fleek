settings.outformat="svg";
import olympiad;

defaultpen(linewidth(1));for ( int x = 0; x < 5; ++x ){    draw((0,x)--(4,x));    draw((x,0)--(x,4));}fill((1,0)--(2,0)--(2,1)--(1,1)--cycle);fill((0,3)--(1,3)--(1,4)--(0,4)--cycle);fill((2,3)--(4,3)--(4,4)--(2,4)--cycle);fill((3,1)--(4,1)--(4,2)--(3,2)--cycle);label("$A$", (0, 4), NW);label("$B$", (4, 4), NE);label("$C$", (4, 0), SE);label("$D$", (0, 0), SW);