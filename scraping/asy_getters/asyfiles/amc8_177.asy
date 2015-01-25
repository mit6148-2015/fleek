settings.outformat="svg";
import olympiad;
unitsize(15);

size(80);defaultpen(linewidth(0.8));draw((16,0)--origin--(0,16));draw(origin--(2.7,8)--(3,9)^^(11,9)--(14,0));draw(Arc((4,9), 1, 0, 180));draw(Arc((10,9), 1, 0, 180));draw(Arc((7,9), 2, 180,360));label("time", (8,0), S);label(rotate(90)*"distance", (0,8), W);