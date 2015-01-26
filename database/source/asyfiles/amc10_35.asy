settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(.8pt)+fontsize(10pt));dotfactor=4;pair B = (0,1);pair A = (0,-1);label("$B$",B,NW);label("$A$",A,2S);draw(Circle(A,2));draw(Circle(B,2));fill((-sqrt(3),0)..B..(sqrt(3),0)--cycle,gray);fill((-sqrt(3),0)..A..(sqrt(3),0)--cycle,gray);draw((-sqrt(3),0)..B..(sqrt(3),0));draw((-sqrt(3),0)..A..(sqrt(3),0));path circ = Circle(origin,1);fill(circ,white);draw(circ);dot(A);dot(B);pair A1 = B + dir(45)*2;pair A2 = dir(45);pair A3 = dir(-135)*2 + A;draw(B--A1,EndArrow(HookHead,2));draw(origin--A2,EndArrow(HookHead,2));draw(A--A3,EndArrow(HookHead,2)); label("$2$",midpoint(B--A1),NW);label("$1$",midpoint(origin--A2),NW);label("$2$",midpoint(A--A3),NW);