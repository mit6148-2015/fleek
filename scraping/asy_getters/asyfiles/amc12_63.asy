settings.outformat="svg";
import olympiad;

unitsize(5mm);defaultpen(linewidth(0.8pt)+fontsize(10pt));pair A=(0,3), B=(8,3), C=(8,2), D=(0,2), Ep=(0,4), F=(4,4), G=(4,0), H=(0,0);fill(shift(0,2)*xscale(4)*unitsquare,grey);draw(Ep--F--G--H--cycle);draw(A--B--C--D);label("$A$",A,W);label("$B$",B,E);label("$C$",C,E);label("$D$",D,W);label("$E$",Ep,NW);label("$F$",F,NE);label("$G$",G,SE);label("$H$",H,SW);