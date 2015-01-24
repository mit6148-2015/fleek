settings.outformat="svg";
import olympiad;

unitsize(150);pair A,B,C,D,E,F,G,H,J,K;A=(1,0); B=(0,0); C=(0,1); D=(1,1);draw(A--B--C--D--A);E=(2-sqrt(3),0); F=(2-sqrt(3),1);draw(E--F);G=(1,sqrt(3)/2); H=(2.5-sqrt(3),1);K=(2-sqrt(3),1-sqrt(3)/2); J=(0.5,0);draw(G--H--K--J--G);label("$A$",A,SE);label("$B$",B,SW);label("$C$",C,NW);label("$D$",D,NE);label("$E$",E,S);label("$F$",F,N);label("$G$",G,E);label("$H$",H,N);label("$K$",K,W);label("$J$",J,S);