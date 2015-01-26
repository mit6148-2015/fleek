settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(1.5cm);defaultpen(.8);pair A = (0,0), B = (3,0), C = (1.4, 2), D = B + 0.4*(C-B), Ep = A + 0.3*(C-A);pair F = intersectionpoint( A--D, B--Ep );draw( A -- B -- C -- cycle );draw( A -- D );draw( B -- Ep );filldraw( D -- F -- Ep -- C -- cycle, mediumgray, black );label("$7$",(1.25,0.2));label("$7$",(2.2,0.45));label("$3$",(0.45,0.35));