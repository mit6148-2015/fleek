settings.outformat="svg";
import olympiad;
unitsize(15);

size(180);pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps);real s=1/2,m=5/6,l=1;pair A=origin,B=(l,0),C=rotate(60)*l,D=(s,0),E=rotate(60)*s,F=m,G=rotate(60)*m;draw(A--B--C--cycle^^D--E^^F--G);dot(A^^B^^C^^D^^E^^F^^G);label("$A$",A,SW);label("$B$",B,SE);label("$C$",C,N);label("$D$",D,S);label("$E$",E,NW);label("$F$",F,S);label("$G$",G,NW);