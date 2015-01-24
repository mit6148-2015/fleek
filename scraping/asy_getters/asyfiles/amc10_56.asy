settings.outformat="svg";
import olympiad;

unitsize(13mm);defaultpen(linewidth(.8pt)+fontsize(10pt));dotfactor=4;pair A=(1,3), B=(2,3), C=(2,2), D=(3,2), Ep=(3,1), F=(2,1), G=(2,0), H=(1,0), I=(1,1), J=(0,1), K=(0,2), L=(1,2);pair M=intersectionpoints(A--G,H--C)[0];draw(A--B--C--D--Ep--F--G--H--I--J--K--L--cycle);draw(A--G);draw(H--C);dot(M);label("$A$",A,NW);label("$B$",B,NE);label("$C$",C,NE);label("$D$",D,NE);label("$E$",Ep,SE);label("$F$",F,SE);label("$G$",G,SE);label("$H$",H,SW);label("$I$",I,SW);label("$J$",J,SW);label("$K$",K,NW);label("$L$",L,NW);label("$M$",M,W);