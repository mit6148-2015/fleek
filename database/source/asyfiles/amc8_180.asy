settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.8));size(200);pair A=(0,8), B=(10,8), C=(10,0), D=origin;pair E=(4,8), F=(10,3), G=(6,0), H=(0,5);pair I=H+4*dir(H--E);pair J=foot(I, F, G);draw(A--B--C--D--cycle);draw(E--F--G--H--cycle);draw(I--J);draw(rightanglemark(H,I,J));draw(rightanglemark(F,J,I));label("$A$", A, dir((5,4)--A));label("$B$", B, dir((5,4)--B));label("$C$", C, dir((5,4)--C));label("$D$", D, dir((5,4)--D));label("$E$", E, dir((5,4)--E));label("$F$", F, dir((5,4)--F));label("$G$", G, dir((5,4)--G));label("$H$", H, dir((5,4)--H));label("$d$", I--J, SW);label("3", H--A, W);label("4", E--A, N);label("6", E--B, N);label("5", F--B, dir(1));label("3", F--C, dir(1));label("5", H--D, W);label("4", C--G, S);label("6", D--G, S);