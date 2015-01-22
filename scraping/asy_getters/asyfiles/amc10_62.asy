settings.outformat="svg";
import olympiad;

defaultpen(fontsize(10pt)+linewidth(.8pt));real s = (60/37);pair A = (0,0);pair C = (5,0);pair B = dir(60)*3;pair W = waypoint(B--A,(1/3));pair X = foot(W,A,C);pair Y = (X.x + s, X.y);pair Z = (W.x + s, W.y);label("$A$",A,SW);label("$B$",B,NW);label("$C$",C,SE);label("$W$",W,NW);label("$X$",X,S);label("$Y$",Y,S);label("$Z$",Z,NE);draw(A--B--C--cycle);draw(X--W--Z--Y);