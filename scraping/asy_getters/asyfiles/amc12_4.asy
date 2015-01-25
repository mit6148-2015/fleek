settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(2cm);defaultpen(fontsize(8pt)+linewidth(.8pt));dotfactor=3;pair O=(0,.375);pair A=(-.5,0);pair B=(.5,0);pair C=shift(-.5,0)*dir(60);draw(Arc(A,1,0,60));draw(Arc(B,1,120,180));draw(A--B);draw(Circle(O,.375));dot(A);dot(B);dot(C);label("$A$",A,SW);label("$B$",B,SE);label("$C$",C,N);