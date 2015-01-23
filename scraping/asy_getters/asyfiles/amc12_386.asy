settings.outformat="svg"

unitsize(2cm);pair A=dir(306);pair B=dir(234);pair C=dir(162);pair D=dir(90);pair E=dir(18);draw(A--B--C--D--E--cycle,linewidth(.8pt));draw(E--rotate(60,D)*E--D--rotate(60,C)*D--C--rotate(60,B)*C--B--rotate(60,A)*B--A--rotate(60,E)*A--cycle,linetype("4 4"));label("$A$",A,SE);label("$B$",B,SW);label("$C$",C,WNW);label("$D$",D,N);label("$E$",E,ENE);