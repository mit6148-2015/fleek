settings.outformat="svg";
import olympiad;

size(100);draw((0,0)--(1,0)--(1,1)--(0,1)--cycle);draw((0,1)--(1,0));draw((0,0)--(.5,sqrt(3)/2)--(1,0));label("$A$",(0,0),SW);label("$B$",(1,0),SE);label("$C$",(1,1),NE);label("$D$",(0,1),NW);label("$E$",(.5,sqrt(3)/2),E);label("$F$",intersectionpoint((0,0)--(.5,sqrt(3)/2),(0,1)--(1,0)),2W);//Credit to chezbgone2 for the diagram