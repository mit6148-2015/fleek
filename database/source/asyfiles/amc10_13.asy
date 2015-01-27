settings.outformat="svg";
import olympiad;
unitsize(5);

pair A,B,C,D;A=(0,0);B=(52,0);C=(38,20);D=(5,20);dot(A);dot(B);dot(C);dot(D);draw(A--B--C--D--cycle);label("$A$",A,S);label("$B$",B,S);label("$C$",C,N);label("$D$",D,N);label("52",(A+B)/2,S);label("39",(C+D)/2,N);label("12",(B+C)/2,E);label("5",(D+A)/2,W);