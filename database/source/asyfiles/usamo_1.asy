settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(7mm);defaultpen(linewidth(.7pt)+fontsize(10pt));pair C=(0,0), B=4*dir(5);pair A=intersectionpoints(Circle(C,5), Circle(B,6))[0];pair Oc=scale(sqrt(3)/3)*rotate(30)*(B-A)+A;pair Ob=scale(sqrt(3)/3)*rotate(30)*(A-C)+C;pair D=intersectionpoints(Circle(Ob,length(Ob-C)), Circle(Oc,length(Oc-B)))[1];real s=length(A-D)+length(B-D)+length(C-D);pair P=(6,0), Q=P+(s,0), R=rotate(60)*(s,0)+P;pair M=intersectionpoints(Circle(P,length(B-C)), Circle(Q,length(A-C)))[0];draw(A--B--C--A--D--B);draw(D--C);label("$B$",B,SE);label("$C$",C,SW);label("$A$",A,N);label("$D$",D,NE);label("$a$",midpoint(B--C),S);label("$b$",midpoint(A--C),WNW);label("$c$",midpoint(A--B),NE);label("$u$",midpoint(A--D),E);label("$v$",midpoint(B--D),N);label("$w$",midpoint(C--D),NNW);draw(P--Q--R--P--M--Q);draw(M--R);label("$P$",P,SW);label("$Q$",Q,SE);label("$R$",R,N);label("$M$",M,NW);label("$x$",midpoint(P--R),NW);label("$x$",midpoint(P--Q),S);label("$x$",midpoint(Q--R),NE);label("$c$",midpoint(R--M),ESE);label("$a$",midpoint(P--M),NW);label("$b$",midpoint(Q--M),NE);