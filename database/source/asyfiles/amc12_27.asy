settings.outformat="svg";
import olympiad;
unitsize(15);

import graph;unitsize(1.5cm);defaultpen(linewidth(.8pt)+fontsize(8pt));dotfactor=3;real y(real x){return (x-1)*(x+1)*(x-2);}path bounds=(-1.5,-1)--(1.5,-1)--(1.5,2.5)--(-1.5,2.5)--cycle;pair[] points={(-1,0),(0,2),(1,0)};draw(bounds,white);draw(graph(y,-1.5,1.5));drawline((0,0),(1,0));drawline((0,0),(0,1));dot(points);label("$(-1,0)$",(-1,0),SE);label("$(1,0)$",(1,0),SW);label("$(0,2)$",(0,2),NE);clip(bounds);