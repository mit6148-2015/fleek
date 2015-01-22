settings.outformat="svg";
import olympiad;

unitsize(2.5cm);defaultpen(linewidth(.8pt)+fontsize(10pt));dotfactor=4;pair[] dotted={(0,0),(0,1),(1,1),(1,0),(1/6,0),(1/6,1),(1/2,1/2),(1,1/2)};draw(unitsquare);draw((1/6,0)--(1/2,1/2)--(1/6,1));draw((1/2,1/2)--(1,1/2));dot(dotted);label("$x$",midpoint((1/6,1)--(1,1)),N);