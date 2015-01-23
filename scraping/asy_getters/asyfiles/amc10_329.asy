settings.outformat="svg"

unitsize(5mm);defaultpen(linewidth(.8pt)+fontsize(8pt));dotfactor=4;pair B=(0,0), C=(sqrt(28),0), A=(0,sqrt(21));pair D=foot(B,A,C);pair[] ps={B,C,A,D};draw(A--B--C--cycle);draw(B--D);draw(rightanglemark(B,D,C));dot(ps);label("$A$",A,NW);label("$B$",B,SW);label("$C$",C,SE);label("$D$",D,NE);label("$3$",midpoint(A--D),NE);label("$4$",midpoint(D--C),NE);