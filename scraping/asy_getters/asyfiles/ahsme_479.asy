settings.outformat="svg"

size(175);defaultpen(linewidth(0.8));real r=50, a=4,b=2.5,c=6.25;pair A=origin,B=c*dir(r),D=(a,0),C=shift(b*dir(r))*D;draw(A--B--C--D--cycle);label("$A$",A,SW);label("$B$",B,N);label("$C$",C,E);label("$D$",D,S);label("$a$",D/2,N);label("$b$",(C+D)/2,NW);//Credit to djmathman for the diagram