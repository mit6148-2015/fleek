settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(3mm);defaultpen(linewidth(.8pt)+fontsize(8pt));dotfactor=4;pair A=(0,0), Ep=7*dir(105), B=3*dir(0);pair D=Ep+B;pair C=intersectionpoints(Circle(D,6),Circle(B,4))[1];pair[] ds={A,B,C,D,Ep};dot(ds);draw(B--C--D--Ep--A);draw((6,6)..(8,4)..(8,3),EndArrow(3));xaxis("$x$",-8,14,EndArrow(3));label("$E$",Ep,NW);label("$D$",D,NE);label("$C$",C,E);label("$B$",B+(.2,.1),ENE);label("$A$",A+(-.1,.1),WNW);label("$(0,0)$",A,S);label("$3$",midpoint(A--B),N);label("$4$",midpoint(B--C),NW);label("$6$",midpoint(C--D),NE);label("$3$",midpoint(D--Ep),S);label("$7$",midpoint(Ep--A),W);