settings.outformat="svg"

unitsize(3mm);defaultpen(linewidth(.8pt)+fontsize(8pt));pair D=(0,0), Ep=(4,0), A=(9,0), B=(9,8), H=(3,8), C=(0,8), G=(-6,20), F=(-6,0);draw(D--A--B--C--D--F--G--Ep);draw(A--G);label("$F$",F,W);label("$G$",G,W);label("$C$",C,WSW);label("$H$",H,NNE);label("$6$",(6,8),N);label("$B$",B,NE);label("$A$",A,SW);label("$E$",Ep,S);label("$4$",(2,0),S);label("$D$",D,S);