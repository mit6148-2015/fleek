settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(.8pt)+fontsize(10pt));dotfactor=4;draw((0,0)--(8,0)--(0,5)--cycle);label("C",(0,0),SW);label("A",(8,0),SE);label("M",(0,5),N);dot((0,3.5));label("B",(0,3.5),W);label("$x$",(0,4.25),W);label("$h$",(0,1),W);label("$d$",(4,0),S);