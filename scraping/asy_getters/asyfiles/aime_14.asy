settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(fontsize(10));pair A=origin, B=(14,0), C=(9,12), D=midpoint(B--C), E=midpoint(A--C), F=midpoint(A--B), P=centroid(A,B,C);draw(D--A--B--C--A^^B--E^^C--F);dot(A^^B^^C^^P);label("$a$", P--A, dir(-90)*dir(P--A));label("$b$", P--B, dir(90)*dir(P--B));label("$c$", P--C, dir(90)*dir(P--C));label("$d$", P--D, dir(90)*dir(P--D));label("$d$", P--E, dir(-90)*dir(P--E));label("$d$", P--F, dir(-90)*dir(P--F));label("$A$", A, SW);label("$B$", B, SE);label("$C$", C, N);label("$P$", P, 1.8*dir(285));