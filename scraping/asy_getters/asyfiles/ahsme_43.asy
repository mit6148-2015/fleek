settings.outformat="svg";
import olympiad;

size(2.5inch);pair A = (-2,0), B = 2dir(150), D = (2,0), C;draw(A..(0,2)..D--cycle);C = intersectionpoint(A..(0,2)..D,Circle(B,arclength(A--B)));draw(A--B--C--D--cycle);label("$A$",A,W);label("$B$",B,NW);label("$C$",C,N);label("$D$",D,E);label("$4$",A--D,S);label("$1$",A--B,E);label("$1$",B--C,SE);//Credit to chezbgone2 for the diagram