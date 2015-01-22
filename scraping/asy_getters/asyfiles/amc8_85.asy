settings.outformat="svg";
import olympiad;

pair O,P,Q,R,T;O = (0,0); P = (2,0); Q = (2,2); R = (0,2); T = (-4,0);draw((-5,0)--(3,0)); draw((0,-1)--(0,3));draw(P--Q--R);draw((-0.2,-0.8)--(0,-1)--(0.2,-0.8));draw((-0.2,2.8)--(0,3)--(0.2,2.8));draw((-4.8,-0.2)--(-5,0)--(-4.8,0.2));draw((2.8,-0.2)--(3,0)--(2.8,0.2));draw(Q--T);label("$O$",O,SW);label("$P$",P,S);label("$Q$",Q,NE);label("$R$",R,W);label("$T$",T,S);