settings.outformat="svg";
import olympiad;

pair A=origin, B=(14,0), C=(9,12), D=foot(A, B,C), E=foot(B, A, C), F=foot(C, A, B), H=orthocenter(A, B, C);draw(F--C--A--B--C^^A--D^^B--E);label("$A$", A, SW);label("$B$", B, SE);label("$C$", C, N);label("84", centroid(H, C, E), fontsize(9.5));label("35", centroid(H, B, D), fontsize(9.5));label("30", centroid(H, F, B), fontsize(9.5));label("40", centroid(H, A, F), fontsize(9.5));