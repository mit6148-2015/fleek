settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.7)+fontsize(11));pair A=origin, B=(2,0), C=(3, sqrt(3)), D=(1, sqrt(3)), E=(1, 1/sqrt(3)), F=(2, 2/sqrt(3));pair point=(3/2, sqrt(3)/2);draw(B--C--D--A--B--F--D--E--B);label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$D$", D, dir(point--D));label("$E$", E, dir(point--E));label("$F$", F, dir(point--F));