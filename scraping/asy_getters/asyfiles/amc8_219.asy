settings.outformat="svg";
import olympiad;
unitsize(15);

size((150));draw((10,0)..(0,10)..(-10,0)..(0,-10)..cycle);draw((20,0)..(0,20)..(-20,0)..(0,-20)..cycle);draw((20,0)--(-20,0));draw((0,20)--(0,-20));draw((-2,21.5)..(-15.4, 15.4)..(-22,0), EndArrow);draw((-18,1)--(-12, 1), EndArrow);draw((-12,0)..(-8.3,-8.3)..(0,-12), EndArrow);draw((1,-9)--(1,9), EndArrow);draw((0,12)..(8.3, 8.3)..(12,0), EndArrow);draw((12,-1)--(18,-1), EndArrow);label("$A$", (0,20), N);label("$K$", (20,0), E);