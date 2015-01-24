settings.outformat="svg";
import olympiad;

unitsize(2.5cm);defaultpen(fontsize(10pt)+linewidth(.8pt));dotfactor=3;pair O=(0,0), C=(-1/3.0), B=(1,0), A=(-1,0);pair D=dir(aCos(C.x)), E=(-D.x,-D.y);draw(A--B--D--cycle);draw(D--E--C);draw(unitcircle,white);drawline(D,C);dot(O);clip(unitcircle);draw(unitcircle);label("$E$",E,SSE);label("$B$",B,E);label("$A$",A,W);label("$D$",D,NNW);label("$C$",C,SW);draw(rightanglemark(D,C,B,2));