settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(fontsize(10pt)+linewidth(.8pt));pair A=(-1,0), B=(1,0), E=(0,-.4), C=(.6,-.8), D=(-.6,-.8), E=(0,-.8/(1.6));draw(unitcircle);draw(A--B--D--C--A);draw(Arc(E,.2,155,205));label("$A$",A,W);label("$B$",B,C);label("$C$",C,C);label("$D$",D,W);label("$\alpha$",E-(.2,0),W);label("$E$",E,N);