settings.outformat="svg";
import olympiad;

pair A,B,C,D;A = (0,8); B = (9,8); C = (9,0); D = (0,0);draw(A--B--C--D--A--(9,4)--(4.5,0)--cycle);label("$A$",A,NW);label("$B$",B,NE);label("$C$",C,SE);label("$D$",D,SW);