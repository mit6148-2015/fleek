settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(2.5cm);defaultpen(linewidth(.8pt)+fontsize(8pt));pair D=(0,0), C=dir(0), A=dir(aSin(240/289)), B=shift(A)*C;pair Np=waypoint(B--A,0.6), P=foot(Np,A,C), Q=foot(Np,B,D);draw(A--B--C--D--cycle);draw(A--C);draw(B--D);draw(Np--Q);draw(Np--P);label("$D$",D,SW);label("$C$",C,SE);label("$B$",B,NE);label("$A$",A,NW);label("$N$",Np,N);label("$P$",P,SW);label("$Q$",Q,SSE);draw(rightanglemark(Np,P,C,2));draw(rightanglemark(Np,Q,D,2));