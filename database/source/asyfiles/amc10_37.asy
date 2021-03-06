settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(1.5cm);defaultpen(linewidth(.8pt)+fontsize(12pt));pair O=(0,0), A=dir(0), B=dir(60), C=dir(120), D=dir(180);pair E=B+C;draw(D--E--B--O--C--B--A,linetype("4 4"));draw(Arc(O,1,0,60),linewidth(1.2pt));draw(Arc(O,1,120,180),linewidth(1.2pt));draw(Arc(C,1,0,60),linewidth(1.2pt));draw(Arc(B,1,120,180),linewidth(1.2pt));draw(A--D,linewidth(1.2pt));draw(O--dir(40),EndArrow(HookHead,4));draw(O--dir(140),EndArrow(HookHead,4));draw(C--C+dir(40),EndArrow(HookHead,4));draw(B--B+dir(140),EndArrow(HookHead,4));label("2",O,S);draw((0.1,-0.12)--(1,-0.12),EndArrow(HookHead,4),EndBar);draw((-0.1,-0.12)--(-1,-0.12),EndArrow(HookHead,4),EndBar);