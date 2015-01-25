settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7)+fontsize(10));pair A=origin, B=(14,0), C=(10,6);draw(A--B--C--cycle);label("$A$", A, SW);label("$B$", B, SE);label("$C$", C, N);label("$a$", B--C, dir(B--C)*dir(-90));label("$b$", A--C, dir(C--A)*dir(-90));label("$c$", A--B, dir(A--B)*dir(-90));