settings.outformat="svg"

unitsize(2cm);defaultpen(fontsize(8)+linewidth(0.8));pair A=(-0.5,0.5), B=(0.5,0.5), C=(0.5,-0.5), D=(-0.5,-0.5);pair K=(0,1.366), L=(1.366,0), M=(0,-1.366), N=(-1.366,0);draw(A--N--K--A--B--K--L--B--C--L--M--C--D--M--N--D--A);label("$A$",A,SE);label("$B$",B,SW);label("$C$",C,NW);label("$D$",D,NE);label("$K$",K,NNW);label("$L$",L,E);label("$M$",M,S);label("$N$",N,W);