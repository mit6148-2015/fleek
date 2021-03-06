settings.outformat="svg";
import olympiad;
unitsize(15);

size(150);defaultpen(linewidth(0.8)+fontsize(10));real e=350,c=55;pair O=origin,E=dir(e),C=dir(c),B=dir(180+c),D=dir(180+e), rot=rotate(90,B)*O,A=extension(E,D,B,rot);path tangent=A--B;pair P=waypoint(tangent,abs(A-D)/abs(A-B));draw(unitcircle^^C--B--A--E);dot(A^^B^^C^^D^^E^^P,linewidth(2));label("$O$",O,dir(290));label("$A$",A,N);label("$B$",B,SW);label("$C$",C,NE);label("$D$",D,dir(120));label("$E$",E,SE);label("$P$",P,SW);