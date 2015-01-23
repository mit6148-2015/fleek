settings.outformat="svg"

size(2.5inch);pair A, B, C, E, F, G;A = (0,3);B = (-1,0);C = (3,0);E = (0,0);F = (1,2);G = intersectionpoint(B--F,A--E);draw(A--B--C--cycle);draw(A--E);draw(B--F);label("$A$",A,N);label("$B$",B,W);label("$C$",C,dir(0));label("$E$",E,S);label("$F$",F,NE);label("$G$",G,SE);//Credit to chezbgone2 for the diagram