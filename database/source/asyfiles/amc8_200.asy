settings.outformat="svg";
import olympiad;
unitsize(15);

path cell=((0,0)--(1,0)--(1,1)--(0,1)--cycle);path sw=((0,0)--(1,sqrt(3)));path se=((5,0)--(4,sqrt(3)));draw(cell, linewidth(1));draw(shift(2,0)*cell, linewidth(1));draw(shift(4,0)*cell, linewidth(1));draw(shift(1,3)*cell, linewidth(1));draw(shift(3,3)*cell, linewidth(1));draw(shift(2,6)*cell, linewidth(1));draw(shift(0.45,1.125)*sw, EndArrow);draw(shift(2.45,1.125)*sw, EndArrow);draw(shift(1.45,4.125)*sw, EndArrow);draw(shift(-0.45,1.125)*se, EndArrow);draw(shift(-2.45,1.125)*se, EndArrow);draw(shift(-1.45,4.125)*se, EndArrow);label("$+$", (1.5,1.5));label("$+$", (3.5,1.5));label("$+$", (2.5,4.5));