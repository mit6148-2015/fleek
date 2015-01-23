settings.outformat="svg"

unitsize(2cm);defaultpen(linewidth(.8pt));dotfactor=4;pair D=(0,0), C=(sqrt(3),0), B=(sqrt(3),1), A=(0,1), P=(sqrt(3)/3,1);pair[] dotted={A,B,C,D,P};draw(A--B--C--D--cycle);draw(B--D--P);dot(dotted);label("$A$",A,NW);label("$B$",B,NE);label("$C$",C,SE);label("$D$",D,SW);label("$P$",P,N);