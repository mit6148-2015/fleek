settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.7));pointpen=black; pathpen=black;size(7cm);pair A,B,C,D,E,F,G,H,W,X,Y,Z;A=(0,2); B=(1,2); C=(2,2); D=(3,2);H=(0,0); G=(1,0); F=(2,0); E=(3,0);D('A',A, N); D('B',B,N); D('C',C,N); D('D',D,N); D('E',E,NE); D('F',F,NE); D('G',G,NW); D('H',H,NW);D(A--F); D(B--E); D(D--G); D(C--H);Z=IP(A--F, C--H); Y=IP(A--F, D--G); X=IP(B--E,D--G); W=IP(B--E,C--H);D('W',W,N); D('X',X,plain.E); D('Y',Y,S); D('Z',Z,plain.W);D(A--D--E--H--cycle);