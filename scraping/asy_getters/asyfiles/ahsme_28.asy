settings.outformat="svg";
import olympiad;
unitsize(15);

import math;defaultpen(fontsize(11pt));pair A = (0,0), B = (1,3), C = (5,0), P = (1.5,1);pair X = extension(B,C,A,P), Y = extension(A,C,B,P), Z = extension(A,B,C,P);draw(A--B--C--cycle);draw(A--X);draw(B--Y);draw(C--Z);dot(P);dot(A);dot(B);dot(C);label("$A$",A,dir(210));label("$B$",B,dir(90));label("$C$",C,dir(-30));label("$A'$",X,dir(-100));label("$B'$",Y,dir(65));label("$C'$",Z,dir(20));label("$P$",P,dir(70));label("$a$",X,dir(80));label("$b$",Y,dir(-90));label("$c$",Z,dir(110));//Credit to bobthesmartypants for the diagram