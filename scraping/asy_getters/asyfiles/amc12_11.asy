settings.outformat="svg";
import olympiad;

import math;unitsize(4mm);defaultpen(fontsize(8pt)+linewidth(0.7));dotfactor=4; pair A=(10,0);pair C=(0,0);pair B=(0,10.0/sqrt(3));pair P=(2,2);pair D=extension(A,C,B,P);draw(A--C--B--cycle);draw(B--D);dot(P);label("A",A,S);label("D",D,S);label("C",C,S);label("P",P,NE);label("B",B,N);