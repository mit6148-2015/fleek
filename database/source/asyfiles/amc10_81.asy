settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(10mm);defaultpen(linewidth(.8pt)+fontsize(10pt));dotfactor=4;pair A=(0,0), B=(5,0), C=(1.8,2.4), D=(5-4sqrt(3)/3,0), E=(5-4sqrt(3)/3,sqrt(3));pair[] ps={A,B,C,D,E};draw(A--B--C--cycle);draw(E--D);draw(rightanglemark(E,D,B));dot(ps);label("$A$",A,SW);label("$B$",B,SE);label("$C$",C,N);label("$D$",D,S);label("$E$",E,NE);label("$3$",midpoint(A--C),NW);label("$4$",midpoint(C--B),NE);label("$5$",midpoint(A--B),SW);