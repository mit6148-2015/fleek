settings.outformat="svg";
import olympiad;
unitsize(15);

for (int a = 0; a < 6; ++a){for (int b = 0; b < 6; ++b){dot((4*a,3*b));}}draw((0,0)--(20,0)--(20,15)--(0,15)--cycle);draw((0,0)--(16,12));draw((0,0)--(16,9));label(rotate(30)*"Bjorn",(12,6.75),SE);label(rotate(37)*"Alberto",(11,8.25),NW);label("$0$",(0,0),S);label("$1$",(4,0),S);label("$2$",(8,0),S);label("$3$",(12,0),S);label("$4$",(16,0),S);label("$5$",(20,0),S);label("$0$",(0,0),W);label("$15$",(0,3),W);label("$30$",(0,6),W);label("$45$",(0,9),W);label("$60$",(0,12),W);label("$75$",(0,15),W);label("H",(6,-2),S);label("O",(8,-2),S);label("U",(10,-2),S);label("R",(12,-2),S);label("S",(14,-2),S);label("M",(-4,11),N);label("I",(-4,9),N);label("L",(-4,7),N);label("E",(-4,5),N);label("S",(-4,3),N);