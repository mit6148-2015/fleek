settings.outformat="svg";
import olympiad;
unitsize(15);

size(150);import patterns;pair D=(0,0),C=(1,-1),B=(2.5,-0.2),A=(1,2),AA,BB,CC,DD,P,Q,aux;add("hatch",hatch());//AA=new A and etc.draw(rotate(100,D)*(A--B--C--D--cycle));AA=rotate(100,D)*A;BB=rotate(100,D)*D;CC=rotate(100,D)*C;DD=rotate(100,D)*B;aux=midpoint(AA--BB);draw(BB--DD);P=midpoint(AA--aux);aux=midpoint(CC--DD);Q=midpoint(CC--aux);draw(AA--CC,dashed);dot(P);dot(Q);fill(DD--BB--CC--cycle,pattern("hatch"));label("$A$",AA,W);label("$B$",BB,S);label("$C$",CC,E);label("$D$",DD,N);label("$P$",P,S);label("$Q$",Q,E);//Credit to TheMaskedMagician for the diagram