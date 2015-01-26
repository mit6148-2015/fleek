settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(fontsize(10));real r=sqrt(22);pair B=origin, A=16*dir(60), C=(16,0), D=(10-r,0), E=(10+r,0), F=C+1*dir(120), G=C+14*dir(120), H=13*dir(60), J=6*dir(60), O=circumcenter(G,H,J);dot(A^^B^^C^^D^^E^^F^^G^^H^^J);draw(Circle(O, abs(O-D))^^A--B--C--cycle, linewidth(0.7));label("$A$", A, N);label("$B$", B, dir(210));label("$C$", C, dir(330));label("$D$", D, SW);label("$E$", E, SE);label("$F$", F, dir(170));label("$G$", G, dir(250));label("$H$", H, SE);label("$J$", J, dir(0));label("2", A--G, dir(30));label("13", F--G, dir(180+30));label("1", F--C, dir(30));label("7", H--J, dir(-30));