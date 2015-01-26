settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(.8cm);pen p = linewidth(.8pt);draw(shift(-2,0)*unitsquare,p);label("1",(-1.5,0.5));draw(shift(-1,0)*unitsquare,p);label("2",(-0.5,0.5));label("32",(0.5,0.5));draw(shift(1,0)*unitsquare,p);label("16",(1.5,0.5));draw(shift(0,1)*unitsquare,p);label("4",(0.5,1.5));draw(shift(0,-1)*unitsquare,p);label("8",(0.5,-0.5));