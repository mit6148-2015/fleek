settings.outformat="svg";
import olympiad;
unitsize(15);

import graph;unitsize(14mm);defaultpen(linewidth(.8pt)+fontsize(8pt));dashed=linetype("4 4");dotfactor=3;pair A=(-2,0), B=(2,0);fill(Arc((0,0),2,0,180)--cycle,mediumgray);fill(Arc((-1,0),1,0,180)--cycle,white);fill(Arc((0,0),1,0,180)--cycle,white);fill(Arc((1,0),1,0,180)--cycle,white);draw(Arc((-1,0),1,60,180));draw(Arc((0,0),1,0,60),dashed);draw(Arc((0,0),1,60,120));draw(Arc((0,0),1,120,180),dashed);draw(Arc((1,0),1,0,120));draw(Arc((0,0),2,0,180)--cycle);dot((0,0));dot((-1,0));dot((1,0));draw((-2,-0.1)--(-2,-0.3),gray);draw((-1,-0.1)--(-1,-0.3),gray);draw((1,-0.1)--(1,-0.3),gray);draw((2,-0.1)--(2,-0.3),gray);label("$A$",A,W);label("$B$",B,E);label("1",(-1.5,-0.1),S);label("2",(0,-0.1),S);label("1",(1.5,-0.1),S);