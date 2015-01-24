settings.outformat="svg";
import olympiad;

unitsize(2cm);defaultpen(linewidth(.8pt));pair A = (0,0);pair C = (2,0);pair B = dir(57.5)*2;pair E = waypoint(C--A,0.25);pair D = waypoint(C--B,0.25);pair T = intersectionpoint(D--A,E--B);label("$B$",B,NW);label("$A$",A,SW);label("$C$",C,SE);label("$D$",D,NE);label("$E$",E,S);label("$T$",T,2*W+N);draw(A--B--C--cycle);draw(A--D);draw(B--E);