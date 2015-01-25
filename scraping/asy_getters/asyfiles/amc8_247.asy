settings.outformat="svg";
import olympiad;
unitsize(15);

pair A,B,C,D;A=(3,20);B=(35,20);C=(47,0);D=(0,0);draw(A--B--C--D--cycle);dot((0,0));dot((3,20));dot((35,20));dot((47,0));label("A",A,N);label("B",B,N);label("C",C,S);label("D",D,S);draw((19,20)--(19,0));dot((19,20));dot((19,0));draw((19,3)--(22,3)--(22,0));label("12",(21,10),E);label("50",(19,22),N);label("15",(1,10),W);label("20",(41,12),E);