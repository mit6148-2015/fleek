settings.outformat="svg";
import olympiad;
unitsize(15);

draw((0,0)--(6.5,0)--(6.5,4.5)--(0,4.5)--cycle);draw((2.5,1.5)--(0,0));draw((2.5,1.5)--(0,4.5));draw((2.5,1.5)--(6.5,4.5));draw((2.5,1.5)--(6.5,0),linetype("8 8"));label("$A$",(0,0),dir(-135));label("$B$",(6.5,0),dir(-45));label("$C$",(6.5,4.5),dir(45));label("$D$",(0,4.5),dir(135));label("$P$",(2.5,1.5),dir(-90));label("$3$",(1.25,0.75),dir(120));label("$4$",(1.25,3),dir(35));label("$5$",(4.5,3),dir(120));//Credit to bobthesmartypants for the diagram