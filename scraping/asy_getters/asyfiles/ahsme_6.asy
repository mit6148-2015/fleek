settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(1.2cm);defaultpen(linewidth(.8pt)+fontsize(8pt));dotfactor=3;pair O1=(0,0), O2=(3,0), Sp=(-2,0), R=(2,0), T=(4,0);pair A=O1+2*dir(60), B=O2+dir(85);pair Pa=rotate(90,A)*O1, Pb=rotate(-90,B)*O2;pair P=extension(A,Pa,B,Pb);pair[] dots={Sp,R,T,A,B,P};draw(P--P+5*(A-P));draw(P--P+5*(B-P));clip((-2,0)--(-2,2.5)--(4,2.5)--(4,0)--cycle);draw(Arc(O1,2,0,180)--cycle);draw(Arc(O2,1,0,180)--cycle);dot(dots);label("$S$",Sp,S);label("$R$",R,S);label("$T$",T,S);label("$A$",A,NE);label("$B$",B,N);label("$P$",P,NNE);label("$a$",midpoint(Arc(O1,2,0,60)),SW);label("$b$",midpoint(Arc(O2,1,85,180)),SE);label("$c$",midpoint(Arc(O1,2,60,180)),SE);label("$d$",midpoint(Arc(O2,1,0,85)),SW);