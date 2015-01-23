settings.outformat="svg"

pair A,B,C,D,M,N;A = (0,0);B = (0,3);C = (3,3);D = (3,0);M = (0,1);N = (1,0);draw(A--B--C--D--cycle);draw(M--C--N);label("$A$",A,SW);label("$M$",M,W);label("$B$",B,NW);label("$C$",C,NE);label("$D$",D,SE);label("$N$",N,S);