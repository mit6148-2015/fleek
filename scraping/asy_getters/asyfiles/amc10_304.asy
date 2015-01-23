settings.outformat="svg"

defaultpen(linewidth(.8pt)+fontsize(8pt));pair B = (0,0);pair A = 2*dir(60);pair C = (2,0);pair D = (4,0);pair M = midpoint(A--C);label("$A$",A,NW);label("$B$",B,SW);label("$C$",C, SE);label("$M$",M,NE);label("$D$",D,SE);draw(A--B--C--cycle);draw(C--D--M--cycle);