settings.outformat="svg";
import olympiad;
unitsize(15);

draw((-2,1)--(2,1)--(2,-1)--(-2,-1)--cycle);draw((0,0)--(0,-1)--(-2,-1)--(-2,0)--cycle);label("$F$",(0,0),E);label("$A$",(-2,1),W);label("$B$",(2,1),E);label("$C$", (2,-1),E);label("$D$",(-2,-1),WSW);label("$E$",(-2,0),W);label("$G$",(0,-1),S);//Credit to TheMaskedMagician for the diagram