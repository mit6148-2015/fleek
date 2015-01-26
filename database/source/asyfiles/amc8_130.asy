settings.outformat="svg";
import olympiad;
unitsize(15);

real[] r={6, 8, 4, 2, 5};int i;for(i=0; i<5; i=i+1) {filldraw((4i,0)--(4i+3,0)--(4i+3,2r[i])--(4i,2r[i])--cycle, black, black);}draw(origin--(19,0)--(19,16)--(0,16)--cycle, linewidth(0.9));for(i=1; i<8; i=i+1) {draw((0,2i)--(19,2i));}label("$0$", (0,2*0), W);label("$1$", (0,2*1), W);label("$2$", (0,2*2), W);label("$3$", (0,2*3), W);label("$4$", (0,2*4), W);label("$5$", (0,2*5), W);label("$6$", (0,2*6), W);label("$7$", (0,2*7), W);label("$8$", (0,2*8), W);label("$A$", (0*4+1.5, 0), S);label("$B$", (1*4+1.5, 0), S);label("$C$", (2*4+1.5, 0), S);label("$D$", (3*4+1.5, 0), S);label("$E$", (4*4+1.5, 0), S);label("SWEET TOOTH", (9.5,18), N);label("Kinds of candy", (9.5,-2), S);label(rotate(90)*"Number of students", (-2,8), W);