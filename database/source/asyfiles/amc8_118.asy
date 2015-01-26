settings.outformat="svg";
import olympiad;
unitsize(15);

pair A,B,C,D;A = (0,0);B = (-5,5);C = (0,10);D = (5,5);draw(arc((-5,0),A,B,CCW));draw(arc((0,5),B,D,CW));draw(arc((5,0),D,A,CCW));label("$A$",A,S);label("$B$",B,W);label("$C$",C,N);label("$D$",D,E);