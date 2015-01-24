settings.outformat="svg";
import olympiad;

unitsize(2cm);defaultpen(linewidth(.8pt)+fontsize(10pt));pair B=dir(80), A=dir(220), C=dir(320), O=(0,0);draw(unitcircle);draw(A--B--C--O--A--C);draw(O--B);draw(anglemark(C,O,A,2));label("$A$",A,SW);label("$B$",B,NNE);label("$C$",C,SE);label("$O$",O,S);label("$140^{\circ}$",O,NW,fontsize(8pt));label("$120^{\circ}$",O,ENE,fontsize(8pt));