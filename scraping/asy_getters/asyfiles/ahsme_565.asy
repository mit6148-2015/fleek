settings.outformat="svg"

size(200);defaultpen(linewidth(0.8));pair A=origin,B=(16,0),C=(26,10*sqrt(3)),D=(10,10*sqrt(3)),E=(0,10*sqrt(3));draw(A--B--C--E--B--A--D);label("$A$",A,S);label("$B$",B,S);label("$C$",C,N);label("$D$",D,N);label("$E$",E,N);label("$F$",extension(A,D,B,E),W);label("$4$",(D+E)/2,N);label("$16$",(8,0),S);label("$10$",(B+C)/2,SE);