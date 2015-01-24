settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.8));path p=unitsquare;draw(p^^shift(0,1)*p^^shift(1,0)*p);draw(shift(4,0)*p^^shift(5,0)*p^^shift(5,1)*p);label("FRONT", (1,0), S);label("SIDE", (5,0), S);