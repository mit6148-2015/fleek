settings.outformat="svg";
import olympiad;
unitsize(15);

import math;unitsize(8mm);defaultpen(linewidth(1pt)+fontsize(6pt));dashed=linetype("4 4")+linewidth(.8pt);draw((-2,-2.5)--(-2,2.5)--(2.5,2.5)--(2.5,-2.5)--cycle,white);label("$-1$",(-1,0),SW);label("$1$",(1,0),SW);label("$2$",(2,0),SW);label("$1$",(0,1),NE);label("$2$",(0,2),NE);label("$-1$",(0,-1),SW);label("$-2$",(0,-2),SW);drawline((0,0),(1,0));drawline((0,0),(0,1));drawline((0,0.8),(1.8,0));drawline((1,0),(1,1),dashed);drawline((2,0),(2,1),dashed);drawline((-1,0),(-1,1),dashed);drawline((0,1),(1,1),dashed);drawline((0,2),(1,2),dashed);drawline((0,-1),(1,-1),dashed);drawline((0,-2),(1,-2),dashed);