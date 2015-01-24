settings.outformat="svg";
import olympiad;

/*Using regular asymptote, this diagram would take 30 min to make. Using cse5, this takes 5 minutes. Conclusion? CSE5 IS THE BEST PACKAGE EVER CREATED!!!!*/size(200);import cse5;pathpen=black;anglefontpen=black;pointpen=black;anglepen=black;dotfactor=3;pair A=(0,0),B=(0.5,0.5*sqrt(3)),C=(3,0),D=(1.7,0),EE;EE=(B+C)/2;D(MP("$A$",A,W)--MP("$B$",B,N)--MP("$C$",C,E)--cycle);D(MP("$E$",EE,N)--MP("$D$",D,S));D(D);D(EE);MA("80^\circ",8,D,EE,C,0.1);MA("20^\circ",8,EE,C,D,0.3,2,shift(1,3)*C);draw(arc(shift(-0.1,0.05)*C,0.25,100,180),arrow =ArcArrow());MA("100^\circ",8,A,B,C,0.1,0);MA("60^\circ",8,C,A,B,0.1,0);//Credit to TheMaskedMagician for the diagram