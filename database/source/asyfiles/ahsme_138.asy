settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(fontsize(10pt)+linewidth(.8pt));pair A=(-1,0), B=(1,0), D=(0,-1), C=(0,0), E=(1-sqrt(2),-sqrt(2)), F=(-1+sqrt(2),-sqrt(2));fill(Arc((1,0),2,180,225)--Arc((0,-1),(2-sqrt(2)),225,315)--Arc((-1,0),2,315,360)--Arc((0,0),1,360,180)--cycle,mediumgray);draw(A--B^^C--D^^A--F^^B--E);draw(Arc((1,0),2,180,225)--Arc((0,-1),(2-sqrt(2)),225,315)--Arc((-1,0),2,315,360)--Arc((0,0),1,360,180));label("$A$",A,N);label("$B$",B,N);label("$C$",C,N);label("$D$",(-0.1,-.7));label("$E$",E,SW);label("$F$",F,SE);