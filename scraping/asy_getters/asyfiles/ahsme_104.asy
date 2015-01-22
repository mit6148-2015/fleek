settings.outformat="svg";
import olympiad;

defaultpen(fontsize(10pt)+linewidth(.8pt));pair A=(0,-1), E=(0,1), C=(0,0), D=dir(10), F=dir(190), B=(-1/sin(10*pi/180))*dir(10);fill(Arc((0,0),1,10,90)--C--D--cycle,mediumgray);fill(Arc((0,0),1,190,270)--B--F--cycle,mediumgray);draw(unitcircle);draw(A--B--D^^A--E);label("$A$",A,S);label("$B$",B,W);label("$C$",C,SE);label("$\theta$",C,SW);label("$D$",D,NE);label("$E$",E,N);