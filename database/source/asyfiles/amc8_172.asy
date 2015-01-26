settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(1));real x=sqrt(3)/2;path p=rotate(30)*polygon(6);filldraw(p^^shift(0,3)*p^^shift(4x,0)*p^^shift(3x,1.5)*p^^shift(2x,3)*p^^shift(-4x,0)*p^^shift(-3x,1.5)*p^^shift(-2x,3)*p^^shift(3x,-1.5)*p^^shift(-3x,-1.5)*p^^shift(2x,-3)*p^^shift(-2x,-3)*p^^shift(0,-3)*p, black, black);draw(shift(2x,0)*p^^shift(-2x,0)*p^^shift(x,1.5)*p^^shift(-x,1.5)*p^^shift(x,-1.5)*p^^shift(-x,-1.5)*p);