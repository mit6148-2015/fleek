settings.outformat="svg"

unitsize(4mm);defaultpen(linewidth(.8pt));int i;real r=5, R=6;path t=r*dir(0)--r*dir(20)--R*dir(20)--R*dir(0);for(i=0; i<9; ++i){draw(rotate(20*i)*t);}draw((-r,0)--(R+1,0));draw((-R,0)--(-R-1,0));