settings.outformat="svg";
import olympiad;

import math;unitsize(5mm);defaultpen(fontsize(9pt)+Helvetica()+linewidth(0.7));pair O=(0,0);pair A=(0,sqrt(17));pair B=(sqrt(17),0);pair C=shift(sqrt(17),0)*(sqrt(34)*dir(75));pair D=(xpart(C),8);pair E=(8,ypart(C));draw(O--(0,8));draw(O--(8,0));draw(O--C);draw(A--C--B);draw(D--C--E);label("$\sqrt{17}$",(0,2),W);label("$\sqrt{17}$",(2,0),S);label("cut",midpoint(A--C),NNW);label("cut",midpoint(B--C),ESE);label("fold",midpoint(C--D),W);label("fold",midpoint(C--E),S);label("$30^\circ$",shift(-0.6,-0.6)*C,WSW);label("$30^\circ$",shift(-1.2,-1.2)*C,SSE);