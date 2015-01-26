settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(0.4 cm); defaultpen(linewidth(0.7) + fontsize(11));pair A, B, C, D;pair[] O;O[1] = (6,0);O[2] = (12,0);A = (32/6,8*sqrt(2)/6);B = (32/6,-8*sqrt(2)/6);C = 2*B;D = 2*A;draw(Circle(O[1],2));draw(Circle(O[2],4));draw((0.7*A)--(1.2*D));draw((0.7*B)--(1.2*C));draw(O[1]--O[2]);draw(A--O[1]);draw(B--O[1]);draw(C--O[2]);draw(D--O[2]);label("$A$", A, NW);label("$B$", B, SW);label("$C$", C, SW);label("$D$", D, NW);dot("$O$", O[1], SE);dot("$P$", O[2], SE);label("$2$", (A + O[1])/2, E);label("$4$", (D + O[2])/2, E);