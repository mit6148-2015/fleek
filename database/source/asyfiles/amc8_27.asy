settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(18);for (int a=1; a<13; ++a) {  draw((a,0)--(a,.5)); }for (int b=1; b<6; ++b) {  draw((-.5,2b)--(0,2b)); }draw((0,0)--(0,12));draw((0,0)--(14,0));draw((0,0)--(1,.9)--(2,1.9)--(3,2.6)--(4,4.3)--(5,4.5)--(6,5.7)--(7,8.2)--(8,9.4)--(9,9.8)--(10,10.1)--(11,10.2)--(12,10.5));label("J",(.5,0),S); label("F",(1.5,0),S); label("M",(2.5,0),S); label("A",(3.5,0),S);label("M",(4.5,0),S); label("J",(5.5,0),S); label("J",(6.5,0),S); label("A",(7.5,0),S);label("S",(8.5,0),S); label("O",(9.5,0),S); label("N",(10.5,0),S); label("D",(11.5,0),S);label("month F=February",(16,0),S);label("$1$",(-.6,2),W); label("$2$",(-.6,4),W); label("$3$",(-.6,6),W);label("$4$",(-.6,8),W); label("$5$",(-.6,10),W);label("dollars in millions",(0,11.9),N);