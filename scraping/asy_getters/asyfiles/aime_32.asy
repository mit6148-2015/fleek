settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.7)+fontsize(10));for(int i=0; i<4; i=i+1) {fill((2*i,0)--(2*i+1,0)--(2*i+1,6)--(2*i,6)--cycle, mediumgray);}pair A=(1/3,4), B=A+7.5*dir(-17), C=A+7*dir(10);draw(B--A--C);fill((7.3,0)--(7.8,0)--(7.8,6)--(7.3,6)--cycle, white);clip(B--A--C--cycle);for(int i=0; i<9; i=i+1) {draw((i,1)--(i,6));}label("$\mathcal{A}$", A+0.2*dir(-17), S);label("$\mathcal{B}$", A+2.3*dir(-17), S);label("$\mathcal{C}$", A+4.4*dir(-17), S);label("$\mathcal{D}$", A+6.5*dir(-17), S);