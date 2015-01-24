settings.outformat="svg";
import olympiad;

unitsize(8mm);defaultpen(linewidth(.8pt));dotfactor=4;draw(Circle((2,0),2));draw(Circle((0,4),4));clip(scale(4)*unitsquare);draw(scale(4)*unitsquare);filldraw(Circle((2,0),0.07));filldraw(Circle((3.2,1.6),0.07));label("$A$",(0,4),NW);label("$B$",(4,4),NE);label("$C$",(4,0),SE);label("$D$",(0,0),SW);label("$M$",(2,0),S);label("$P$",(3.2,1.6),N);