settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(7mm);defaultpen(linewidth(.8pt)+fontsize(10pt));dotfactor=4;real r=3;pair A=(-3cos(80),-3sin(80));pair D=(3cos(80),3sin(80)), C=(-3cos(80),3sin(80));pair O=(0,0), E=(-3,0), B=(3,0);path outer=Circle(O,r);draw(outer);draw(E--B);draw(E--A);draw(B--A);draw(E--D);draw(C--D);draw(B--C);pair[] ps={A,B,C,D,E,O};dot(ps);label("$A$",A,N);label("$B$",B,NE);label("$C$",C,S);label("$D$",D,S);label("$E$",E,NW);label("$$",O,N);