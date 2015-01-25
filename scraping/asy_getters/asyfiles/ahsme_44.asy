settings.outformat="svg";
import olympiad;
unitsize(15);

draw(unitsquare);draw((0,0)--(.4,1)^^(0,.6)--(1,.2));label("D",(0,1),NW);label("E",(.4,1),N);label("C",(1,1),NE);label("P",(0,.6),W);label("M",(.25,.55),E);label("Q",(1,.2),E);label("A",(0,0),SW);label("B",(1,0),SE);//Credit to Zimbalono for the diagram