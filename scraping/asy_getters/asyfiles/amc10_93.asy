settings.outformat="svg";
import olympiad;

import graph;size(6cm);pen dps = linewidth(0.7) + fontsize(8); defaultpen(dps);pair B = (0,0);pair C = (1,0);pair A = rotate(60,B)*C;pair E = rotate(270,A)*B;pair D = rotate(270,E)*A;pair F = rotate(90,A)*C;pair G = rotate(90,F)*A;pair I = rotate(270,B)*C;pair H = rotate(270,I)*B;draw(A--B--C--cycle);draw(A--E--D--B);draw(A--F--G--C);draw(B--I--H--C);draw(E--F);draw(D--I);draw(I--H);draw(H--G);label("$A$",A,N);label("$B$",B,SW);label("$C$",C,SE);label("$D$",D,W);label("$E$",E,W);label("$F$",F,E);label("$G$",G,E);label("$H$",H,SE);label("$I$",I,SW);