settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(20);draw((0,0)--(1,0)--(1,3)--(0,3)--cycle); draw((1,0)--(1+9*sqrt(3)/2,9/2)--(1+9*sqrt(3)/2,15/2)--(1+5*sqrt(3)/2,11/2)--(1+5*sqrt(3)/2,9/2)--(1+2*sqrt(3),4)--(1+2*sqrt(3),5)--(1,3));draw((0,3)--(2*sqrt(3),5)--(1+2*sqrt(3),5));draw((1+9*sqrt(3)/2,15/2)--(9*sqrt(3)/2,15/2)--(5*sqrt(3)/2,11/2)--(5*sqrt(3)/2,5));draw((1+5*sqrt(3)/2,9/2)--(1+2*sqrt(3),9/2)); draw((1+5*sqrt(3)/2,11/2)--(5*sqrt(3)/2,11/2));label("$1'$",(.5,0),S); label("$3'$",(1,1.5),E); label("$9'$",(1+9*sqrt(3)/4,9/4),S);label("$1'$",(1+9*sqrt(3)/4,17/4),S); label("$1'$",(1+5*sqrt(3)/2,5),E);label("$1'$",(1/2+5*sqrt(3)/2,11/2),S);