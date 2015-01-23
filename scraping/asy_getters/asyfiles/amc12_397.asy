settings.outformat="svg"

unitsize(5mm);defaultpen(linewidth(.8pt)+fontsize(10pt));pair C=(0,0), B=(12,0), A=(0,5), M=(0,4), Np=(4,0);pair K=foot(Np,A,B), J=foot(M,A,B);draw(A--B--C--cycle);draw(M--J);draw(Np--K);label("$C$",C,SW);label("$A$",A,NW);label("$B$",B,SE);label("$N$",Np,S);label("$M$",M,W);label("$J$",J,NE);label("$K$",K,NE);