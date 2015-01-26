settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(.8pt));draw(origin--(0,3)--(4,3)--(4,0)--cycle);draw((0,1)--(4,1));draw((2,0)--midpoint((0,1)--(4,1)));real r = 4/3;draw((r,3)--foot((r,3),(0,1),(4,1)));draw((2r,3)--foot((2r,3),(0,1),(4,1)));