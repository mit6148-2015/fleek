settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(3mm);defaultpen(linewidth(.8pt)+fontsize(10pt));pair D=(0,0), C=(3,0), A=(-3,0), B=(0, 8), Ep=(6,0);draw(A--B--Ep--cycle);draw(D--B--C);label("$A$",A,S);label("$D$",D,S);label("$C$",C,S);label("$E$",Ep,S);label("$B$",B,N);