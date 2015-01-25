settings.outformat="svg";
import olympiad;
unitsize(15);

size(300,300);defaultpen(fontsize(10pt)+linewidth(.8pt));dotfactor=4;pair P1=(-7,-4), P2=(-2,6), P3=(0,0), P4=(1,6), P5=(5,-6);real[] xticks={-7,-6,-5,-4,-3,-2,-1,1,2,3,4,5,6};real[] yticks={-6,-5,-4,-3,-2,-1,1,2,3,4,5,6};draw(P1--P2--P3--P4--P5);dot("(-7, -4)",P1);dot("(-2, 6)",P2,LeftSide);dot("(1, 6)",P4);dot("(5, -6)",P5);xaxis("$x$",-7.5,7,Ticks(xticks),EndArrow(6));yaxis("$y$",-6.5,7,Ticks(yticks),EndArrow(6));