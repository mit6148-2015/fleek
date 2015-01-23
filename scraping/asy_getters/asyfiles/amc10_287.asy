settings.outformat="svg"

unitsize(4mm);defaultpen(linewidth(.8pt)+fontsize(10pt));pair A=(0,0), B=(4,0), C=(4,6), Ep=(0,8);pair D=extension(A,C,Ep,B);draw(A--C--B--A--Ep--B);label("$A$",A,SW);label("$B$",B,SE);label("$C$",C,N);label("$E$",Ep,N);label("$D$",D,2.5*N);label("$4$",midpoint(A--B),S);label("$6$",midpoint(B--C),E);label("$8$",(0,3),W);