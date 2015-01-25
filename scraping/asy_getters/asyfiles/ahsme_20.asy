settings.outformat="svg";
import olympiad;
unitsize(15);

size(150);defaultpen(linewidth(0.8)+fontsize(10));pair A=(5,12),B=origin,C=(10,0),D=(5/3,4),E=(10-5*.45,12*.45),F=(6,0);draw(A--B--C--cycle^^D--E--F--cycle);draw(anglemark(E,D,A,1,45)^^anglemark(F,E,C,1,45)^^anglemark(D,F,B,1,45));label("$b$",(D.x+.2,D.y+.25),dir(30));label("$c$",(E.x,E.y-.4),S);label("$a$",(F.x-.4,F.y+.1),dir(150));label("$A$",A,N);label("$B$",B,S);label("$C$",C,S);label("$D$",D,dir(150));label("$E$",E,dir(60));label("$F$",F,S);