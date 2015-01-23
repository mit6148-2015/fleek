settings.outformat="svg"

unitsize(7);defaultpen(linewidth(.8pt)+fontsize(10pt));pair A,B,C,D,E;A=(0,0); B=(20,0); C=(36/5,48/5); D=(10,0); E=(10,75/10);draw(A--B--C--cycle); draw(D--E);label("$A$",A,SW); label("$B$",B,SE); label("$C$",C,N); label("$D$",D,S); label("$E$",E,NE);draw(rightanglemark(B,D,E,30));