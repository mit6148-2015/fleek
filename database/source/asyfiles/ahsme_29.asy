settings.outformat="svg";
import olympiad;
unitsize(15);

size(200);defaultpen(linewidth(0.8)+fontsize(12pt));pair A=origin,B=(15,0),C=(5,9),O=incenter(A,B,C),Op=circumcenter(A,B,C);path incirc = incircle(A,B,C),circumcirc = circumcircle(A,B,C),line=A--3*O;pair D[]=intersectionpoints(circumcirc,line);draw(A--B--C--A--D[0]^^incirc^^circumcirc);dot(O^^Op,linewidth(4));label("$A$",A,dir(185));label("$B$",B,dir(355));label("$C$",C,dir(95));label("$D$",D[0],dir(O--D[0]));label("$O$",O,NW);label("$O'$",Op,E);