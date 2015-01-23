settings.outformat="svg"

defaultpen(fontsize(10pt)+linewidth(.8pt));pair O=origin, A=(-1/sqrt(2),1/sqrt(2)), B=(-1/sqrt(2),-1), C=(1/sqrt(2),-1), D=(1/sqrt(2),-1/sqrt(2));draw(unitcircle);dot(O);draw(A--B--C--D--A);label("$A$",A,dir(A));label("$B$",B,dir(B));label("$C$",C,dir(C));label("$D$",D,dir(D));label("$O$",O,N);