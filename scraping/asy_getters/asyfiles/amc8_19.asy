settings.outformat="svg";
import olympiad;

unitsize(36);pair A,B,C,D;A=3*dir(160); B=origin; C=3*dir(110); D=3*dir(20);draw((1.5,0)..(0,1.5)..(-1.5,0));draw((2.5,0)..(0,2.5)..(-2.5,0)--cycle);draw(A--B); draw(C--B); draw(D--B);label("O",(-2.5,0),W);label("A",A,W);label("B",B,S);label("C",C,W);label("D",D,E);label("0",(-1.8,0),W);label("20",(-1.7,.5),NW);label("160",(1.6,.5),NE);label("180",(1.7,0),E);