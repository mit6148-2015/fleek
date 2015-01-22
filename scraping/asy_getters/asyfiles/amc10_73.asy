settings.outformat="svg";
import olympiad;

unitsize(2cm);defaultpen(linewidth(.8pt)+fontsize(8pt));dotfactor=4;pair C=(0,0), Ep=dir(35), D=dir(-35), B=dir(145);pair A=intersectionpoints(Circle(B,1),C--(-1*Ep))[0];pair[] ds={A,B,C,D,Ep};dot(ds);draw(A--Ep--D--B--cycle);label("$A$",A,SW);label("$B$",B,NW);label("$C$",C,N);label("$E$",Ep,E);label("$D$",D,E);