settings.outformat="svg";
import olympiad;
unitsize(15);

size(200);pair A=(-2,0),B,C=(-1,0),D=(1,0),EE,O=(0,0);draw(arc(O,1, 0, 180));EE=midpoint(arc(O,1, 0, 90));draw(A--EE);draw(A--D);B=intersectionpoint(arc(O,1, 180, 0),EE--A);draw(O--EE);label("$A$",A,W);label("$B$",B,NW);label("$C$",C,S);label("$D$",D,E);label("$E$",EE,NE);label("$O$",O,S);label("$45^\circ$",(0.25,0.1),fontsize(10pt));//Credit to TheMaskedMagician for the diagram