settings.outformat="svg";
import olympiad;
unitsize(15);

import olympiad;pair F,R,S,D;F=origin; R=5*dir(aCos(9/16));S=(7.5,0);D=4*dir(aCos(9/16)+aCos(1/8));label("$F$",F,SW);label("$R$",R,N); label("$S$",S,SE); label("$D$",D,W);label("$7\frac{1}{2}$",(F+S)/2.5,SE);label("$4$",midpoint(F--D),SW);label("$5$",midpoint(F--R),W);label("$6$",midpoint(D--R),N);draw(F--D--R--F--S--R); markscalefactor=0.1;draw(anglemark(S,F,R)); draw(anglemark(F,D,R));//Credit to throwaway1489 for the diagram