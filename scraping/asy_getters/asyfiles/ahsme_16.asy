settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(.8pt));unitsize(2cm);pair A = origin;pair B = (1,0);pair C = (2,0);pair D = (3,0);pair E = (1.25,1.75);draw(A--D--E--cycle);draw(E--B);draw(E--C);label("$A$",A,SW);label("$B$",B,S);label("$C$",C,S);label("$D$",D,SE);label("$E$",E,N);label("$y$",E,3SW + 3S);label("$w$",E,7S + E);label("$b$",E,3SE + 4S + E);label("$x$",A,NE);label("$z$",B,NW);label("$m$",B,NE);label("$n$",C,NW);label("$c$",C,NE);label("$a$",D,NW+W);