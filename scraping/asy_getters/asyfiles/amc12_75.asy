settings.outformat="svg";
import olympiad;

unitsize(.4cm);defaultpen(linewidth(.8pt)+fontsize(14pt));dotfactor=2;pair A,B,C,D;C = (0,0);B = (0,4);A = (3,4);D = (12.8,-2.8);draw(C--B--A--D--cycle);draw(rightanglemark(C,B,A,20));dot("$A$",A,N);dot("$B$",B,NW);dot("$C$",C,SW);dot("$D$",D,E);