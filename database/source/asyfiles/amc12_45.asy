settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(2.5mm);defaultpen(fontsize(10pt)+linewidth(.8pt));dotfactor=3;pair A=(0,0), Ep=(5,0), B=(5+40/3,0);pair M=midpoint(A--Ep);pair C=intersectionpoints(Circle(M,2.5),Circle(A,3))[1];pair D=B+8*dir(180+degrees(C));dot(A);dot(C);dot(B);dot(D);draw(C--D);draw(A--B);draw(Circle(A,3));draw(Circle(B,8));label("$A$",A,W);label("$B$",B,E);label("$C$",C,SE);label("$E$",Ep,SSE);label("$D$",D,NW);