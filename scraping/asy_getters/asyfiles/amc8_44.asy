settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(24);pair A,B,C,D;A=(-1,0); B=(0,2); C=(4,2); D=(3,0); draw(A--B--C--D); draw((0,-1)--(0,3)); draw((-2,0)--(6,0));draw((-.25,2.75)--(0,3)--(.25,2.75)); draw((5.75,.25)--(6,0)--(5.75,-.25));dot(origin); dot(A); dot(B); dot(C); dot(D); label("$y$",(0,3),N); label("$x$",(6,0),E);label("$(0,0)$",origin,SE); label("$D (3,0)$",D,SE); label("$C (4,2)$",C,NE);label("$A$",A,SW); label("$B$",B,NW);