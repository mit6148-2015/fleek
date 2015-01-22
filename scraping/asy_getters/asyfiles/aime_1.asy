settings.outformat="svg";
import olympiad;

size(150); defaultpen(linewidth(0.65)+fontsize(11));real r=10;pair O=(0,0),A=r*dir(45),B=(A.x,A.y-r),C;path P=circle(O,r);C=intersectionpoint(B--(B.x+r,B.y),P);draw(Arc(O, r, 45, 360-17.0312));draw(A--B--C);dot(A); dot(B); dot(C);label("$A$",A,NE);label("$B$",B,S);label("$C$",C,SE);