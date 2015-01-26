settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(2.2mm);defaultpen(linewidth(.8pt)+fontsize(8pt));dotfactor=4;pair A=(0,0), D=8*dir(330), C=8*dir(210), B=7*dir(90);pair Ep=(0,4-27/5);pair[] dotted={A,B,C,D,Ep};draw(Circle(A,10));draw(Circle(B,3));draw(Circle(C,2));draw(Circle(D,2));draw(Circle(Ep,27/5));dot(dotted);label("$E$",Ep,E);label("$A$",A,W);label("$B$",B,W);label("$C$",C,W);label("$D$",D,E);