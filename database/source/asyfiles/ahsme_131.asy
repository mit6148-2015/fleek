settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(fontsize(10pt)+linewidth(.8pt));pair O=origin, Q=(0,-3sqrt(2)), P=(0,-6sqrt(2)), A=(-4/3,3.77-6sqrt(2)), B=(-8/3,7.54-6sqrt(2)), C=(4/3,3.77-6sqrt(2)), D=(8/3,7.54-6sqrt(2));draw(Arc(O,2sqrt(2),0,360));draw(Arc(Q,sqrt(2),0,360));dot(A);dot(B);dot(C);dot(D);dot(P);draw(B--A--P--C--D);label("$A$",A,dir(A));label("$B$",B,dir(B));label("$A'$",C,dir(C));label("$B'$",D,dir(D));label("$P$",P,S);