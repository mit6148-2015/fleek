settings.outformat="svg";
import olympiad;
unitsize(15);

draw((0,0)--(6,0)--(6,6)--cycle);draw((3,0)--(3,3)--(6,3));draw((4.5,3)--(4.5,4.5)--(6,4.5));draw((5.25,4.5)--(5.25,5.25)--(6,5.25));fill((3,0)--(6,0)--(6,3)--cycle,black);fill((4.5,3)--(6,3)--(6,4.5)--cycle,black);fill((5.25,4.5)--(6,4.5)--(6,5.25)--cycle,black);label("$A$",(0,0),SW);label("$B$",(3,0),S);label("$C$",(6,0),SE);label("$D$",(6,3),E);label("$E$",(6,4.5),E);label("$F$",(6,5.25),E);label("$G$",(6,6),NE);label("$H$",(5.25,5.25),NW);label("$I$",(4.5,4.5),NW);label("$J$",(3,3),NW);label("$K$",(4.5,3),S);label("$L$",(5.25,4.5),S);