settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(.6pt)+fontsize(12pt));dotfactor=4;draw((0,0)--(0,2));draw((0,0)--(1,0));draw((1,0)--(1,2));draw((0,1)--(2,1));draw((0,0)--(1,2));draw((0,2)--(2,1));draw((0,2)--(2,2));draw((2,1)--(2,2));label("$A$",(0,2),NW);label("$B$",(1,2),N);label("$C$",(4/5,1.55),W);dot((0,2));dot((1,2));dot((4/5,1.6));dot((2,1));dot((0,0));