settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(6mm);defaultpen(fontsize(10pt)+linewidth(.8pt));dotfactor=3;pair O=(0,0);pair A=(-2*sqrt(2),0);pair B=(2*sqrt(2),0);pair G=shift(0,2)*A;pair F=shift(0,2)*B;pair C=shift(A)*scale(2)*dir(45);pair D=shift(B)*scale(2)*dir(135);pair X=A+2*dir(-60);pair Y=B+2*dir(240);path P=C--O--D--Arc(B,2,135,90)--G--Arc(A,2,90,45)--cycle;fill(P,gray);draw(Circle(A,2));draw(Circle(B,2));dot(A);label("$A$",A,W);dot(B);label("$B$",B,E);dot(C);label("$C$",C,W);dot(D);label("$D$",D,E);dot(G);label("$E$",G,N);dot(F);label("$F$",F,N);dot(O);label("$O$",O,S);draw(G--F);draw(C--O--D);draw(A--B);draw(A--X);draw(B--Y);label("$2$",midpoint(A--X),SW);label("$2$",midpoint(B--Y),SE);