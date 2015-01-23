settings.outformat="svg"

defaultpen(fontsize(10pt)+linewidth(.8pt));pair C=origin, A=(0,3), B=(4,0), D=(7.2,12.6), E=(7.2,0);draw(A--C--B--A--D--B--E--D);label("$A$",A,W);label("$B$",B,S);label("$C$",C,SW);label("$D$",D,NE);label("$E$",E,SE);