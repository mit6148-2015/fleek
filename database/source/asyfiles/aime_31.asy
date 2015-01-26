settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7)+fontsize(10));pair A=origin, B=(25,0), C=(25,70/3), D=(0,70/3), E=(8,0), F=(22,70/3), Bp=reflect(E,F)*B, Cp=reflect(E,F)*C;draw(F--D--A--E);draw(E--B--C--F, linetype("4 4"));filldraw(E--F--Cp--Bp--cycle, white, black);pair point=( 12.5, 35/3 );label("$A$", A, dir(point--A));label("$B$", B, dir(point--B));label("$C$", C, dir(point--C));label("$D$", D, dir(point--D));label("$E$", E, dir(point--E));label("$F$", F, dir(point--F));label("$B^\prime$", Bp, dir(point--Bp));label("$C^\prime$", Cp, dir(point--Cp));