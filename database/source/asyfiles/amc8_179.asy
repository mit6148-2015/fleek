settings.outformat="svg";
import olympiad;
unitsize(15);

size(80);defaultpen(linewidth(0.8));draw((16,0)--origin--(0,16));draw(origin--(3,6)--(7,6)--(10,12)--(14,12));label("time", (8,0), S);label(rotate(90)*"distance", (0,8), W);