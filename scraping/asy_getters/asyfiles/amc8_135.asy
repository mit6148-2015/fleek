settings.outformat="svg";
import olympiad;
unitsize(15);

size(330);int i,j,k;for(i=0;i<5; i=i+1) {for(j=0;j<5;j=j+1) {for(k=0;k<5;k=k+1) {dot((6i+j, k));}}}draw((0,0)--(4,0)--(3,1)--(3,3)--(2,3)--(2,1)--(1,1)--cycle);draw(shift(6,0)*((0,0)--(4,0)--(4,1)--(3,1)--(3,2)--(2,1)--(1,1)--(0,2)--cycle));draw(shift(12,0)*((0,1)--(1,0)--(3,2)--(3,3)--(1,1)--(1,3)--(0,4)--cycle));draw(shift(18,0)*((0,1)--(2,1)--(3,0)--(3,3)--(2,2)--(1,3)--(1,2)--(0,2)--cycle));draw(shift(24,0)*((1,0)--(2,1)--(2,3)--(3,2)--(3,4)--(0,4)--(1,3)--cycle));label("$A$", (0*6+2, 0), S);label("$B$", (1*6+2, 0), S);label("$C$", (2*6+2, 0), S);label("$D$", (3*6+2, 0), S);label("$E$", (4*6+2, 0), S);