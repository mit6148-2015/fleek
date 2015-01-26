settings.outformat="svg";
import olympiad;
unitsize(15);

draw((0,0)--(18,0)--(18,12)--(0,12)--cycle);draw((0,6)--(18,6));for(int a=6; a<12; ++a) {  draw((1.5a,0)--(1.5a,6)); }fill((15,0)--(18,0)--(18,6)--(15,6)--cycle,black);label("0",(0,0),W);label("9",(9,0),S);label("18",(18,0),S);label("6",(0,6),W);label("12",(0,12),W);