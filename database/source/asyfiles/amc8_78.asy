settings.outformat="svg";
import olympiad;
unitsize(15);

dot((0,0)); label("$E$",(0,0),SW);dot(dir(85)); label("$A$",dir(85),NW);dot((4,0)); label("$D$",(4,0),SE);dot((4.05677,0.648898)); label("$C$",(4.05677,0.648898),NE);draw((0,0)--dir(85)--(4.05677,0.648898)--(4,0)--cycle);dot((2,2)); label("$B$",(2,2),N);draw((0,0)--(2,2)--(4,0));pair [] x = intersectionpoints((0,0)--(2,2)--(4,0),dir(85)--(4.05677,0.648898));dot(x[0]); dot(x[1]);label("$F$",x[0],SE);label("$G$",x[1],SW);