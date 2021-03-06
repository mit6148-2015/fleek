settings.outformat="svg";
import olympiad;
unitsize(15);

import olympiad;unitsize(1cm);defaultpen(fontsize(8pt)+linewidth(.8pt));labelmargin=0.2;dotfactor=3;pair O=(0,0);pair A=(1,0);pair B=(1,1.5);pair D=bisectorpoint(A,B,O);pair C=extension(B,D,O,A);draw(Circle(O,1));draw(O--A--B--cycle);draw(B--C);label("$O$",O,SW);dot(O);label("$\theta$",(0.1,0.05),ENE);dot(C);label("$C$",C,S);dot(A);label("$A$",A,E);dot(B);label("$B$",B,E);