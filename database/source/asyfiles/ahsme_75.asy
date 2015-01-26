settings.outformat="svg";
import olympiad;
unitsize(15);

//Holy crap, CSE5 is freaking amazing!import cse5;pathpen=black;pointpen=black;dotfactor=3;pair A=(1,2),B=(2,0),C=(0,0);D(CR(A,1.5));D(CR(B,1.5));D(CR(C,1.5));D(MP("$A$",A));D(MP("$B$",B));D(MP("$C$",C));pair[] BB,CC;CC=IPs(CR(A,1.5),CR(B,1.5));BB=IPs(CR(A,1.5),CR(C,1.5));D(BB[0]--CC[1]);MP("$B'$",BB[0],NW);MP("$C'$",CC[1],NE);//Credit to TheMaskedMagician for the diagram