settings.outformat="svg";
import olympiad;
unitsize(15);

size(200);dotfactor=3;pair A=(0,0),B=(1,0),C=(2,0),D=(3,0),X=(1.2,0.7);draw(A--D);dot(A);dot(B);dot(C);dot(D);draw(arc((0.4,0.4),0.4,180,110),arrow = Arrow(TeXHead));draw(arc((2.6,0.4),0.4,0,70),arrow = Arrow(TeXHead));draw(B--X,dotted);draw(C--X,dotted);label("$A$",A,SW);label("$B$",B,S);label("$C$",C,S);label("$D$",D,S);label("x",X,fontsize(5pt));//Credit to TheMaskedMagician for the diagram