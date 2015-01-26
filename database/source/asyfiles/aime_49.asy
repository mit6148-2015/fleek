settings.outformat="svg";
import olympiad;
unitsize(15);

size(200);defaultpen(linewidth(0.8)+fontsize(10.6));pair A = (0,sqrt(850));pair B = (0,0);pair C = (sqrt(850),0);pair D = (sqrt(850),sqrt(850));draw(A--B--C--D--cycle);dotfactor = 3;dot("$A$",A,dir(135));dot("$B$",B,dir(215));dot("$C$",C,dir(305));dot("$D$",D,dir(45));pair H = ((2sqrt(850)-sqrt(120))/6,sqrt(850));pair F = ((2sqrt(850)+sqrt(306)+7)/6,0);dot("$H$",H,dir(90));dot("$F$",F,dir(270));draw(H--F);pair E = (0,(sqrt(850)-6)/2);pair G = (sqrt(850),(sqrt(850)+sqrt(100))/2);dot("$E$",E,dir(180));dot("$G$",G,dir(0));draw(E--G);pair P = extension(H,F,E,G);dot("$P$",P,dir(60));label("$w$", (H+E)/2,fontsize(15));label("$x$", (E+F)/2,fontsize(15));label("$y$", (G+F)/2,fontsize(15));label("$z$", (H+G)/2,fontsize(15));label("$w:x:y:z=269:275:405:411$",(sqrt(850)/2,-4.5),fontsize(11));