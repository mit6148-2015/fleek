settings.outformat="svg"

defaultpen(linewidth(.8pt));unitsize(2cm);pair O = origin;pair C = (-1,0);pair D = (1,0);pair E = (0,1);pair A = dir(-135);pair B = dir(-60);draw(Circle(O,1));draw(C--E--D--cycle);draw(A--O--B--cycle);label("$A$",A,SW);label("$C$",C,W);label("$E$",E,N);label("$D$",D,NE);label("$B$",B,SE);label("$O$",O,N);