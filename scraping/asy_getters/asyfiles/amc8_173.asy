settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(1));draw(unitcircle);draw((1,0)--(-1,0));draw((0,1)--(0,-1));draw(shift(3,0)*unitcircle);draw(shift(3,0)*(origin--dir(90)));draw(shift(3,0)*(origin--dir(210)));draw(shift(3,0)*(origin--dir(330)));draw(0.7*dir(200)--0.7*dir(20), linewidth(0.7), EndArrow(7));draw(shift(3,0)*(0.7*dir(180+65)--0.7*dir(65)), linewidth(0.7), EndArrow(7));label("$1$", (-0.45,0.1), N);label("$4$", (-0.45,-0.1), S);label("$3$", (0.45,-0.1), S);label("$2$", (0.45,0.1), N);label("$1$", shift(3,0)*(-0.25,0.1), NW);label("$2$", shift(3,0)*(0.25,0.1), NE);label("$3$", shift(3,0)*(0,-0.3), S);label("$A$", (0,-1), S);label("$B$", (3,-1), S);