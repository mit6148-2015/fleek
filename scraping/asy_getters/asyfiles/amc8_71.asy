settings.outformat="svg"

pair A,B,C,D,EE;A = origin; B = (2,0); C = (5,0); EE = (1.5,3); D = (1.75,1.5);draw(A--C--D); draw(B--EE--A);dot(A); dot(B); dot(C); dot(D); dot(EE);label("$A$",A,SW);label("$B$",B,S);label("$C$",C,SE);label("$D$",D,NE);label("$E$",EE,N);