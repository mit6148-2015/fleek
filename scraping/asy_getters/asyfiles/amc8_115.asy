settings.outformat="svg";
import olympiad;

pair A,C,T,R;C = (0,0); T = (2,0); A = (1,sqrt(5+sqrt(20))); R = (3/2 - sqrt(5)/2,1.175570);draw(C--A--T--cycle);draw(T--R);label("$A$",A,N);label("$T$",T,SE);label("$C$",C,SW);label("$R$",R,NW);