settings.outformat="svg";
import olympiad;

unitsize(12);fill((2,0)--(2,9)--(3,9)--(3,0)--cycle,lightgray);draw((3,0)--(3,9)--(2,9)--(2,0));draw((2,7)--(1,7)--(1,0));draw((2,8)--(3,8));draw((2,7)--(3,7));for (int a = 1; a <= 6; ++a){    draw((1,a)--(3,a));}fill((5,0)--(5,3)--(6,3)--(6,0)--cycle,lightgray);draw((6,0)--(6,3)--(5,3)--(5,0));draw((5,3)--(5,5)--(4,5)--(4,0));draw((4,4)--(5,4));draw((4,3)--(5,3));draw((4,2)--(6,2));draw((4,1)--(6,1));fill((8,0)--(8,6)--(9,6)--(9,0)--cycle,lightgray);draw((9,0)--(9,6)--(8,6)--(8,0));draw((8,6)--(8,9)--(7,9)--(7,0));draw((7,8)--(8,8));draw((7,7)--(8,7));draw((7,6)--(8,6));for (int a = 1; a <= 5; ++a){    draw((7,a)--(9,a));}fill((11,0)--(11,12)--(12,12)--(12,0)--cycle,lightgray);draw((12,0)--(12,12)--(11,12)--(11,0));draw((11,9)--(10,9)--(10,0));draw((11,11)--(12,11));draw((11,10)--(12,10));draw((11,9)--(12,9));for (int a = 1; a <= 8; ++a){    draw((10,a)--(12,a));}fill((14,0)--(14,10)--(15,10)--(15,0)--cycle,lightgray);draw((15,0)--(15,10)--(14,10)--(14,0));draw((14,8)--(13,8)--(13,0));draw((14,9)--(15,9));draw((14,8)--(15,8));for (int a = 1; a <= 7; ++a){    draw((13,a)--(15,a));}draw((16,0)--(0,0)--(0,13),black);label("Jan",(2,0),S); label("Feb",(5,0),S);label("Mar",(8,0),S);label("Apr",(11,0),S);label("May",(14,0),S);label("$\textbf{MONTHLY SALES}$",(8,14),N);label("S",(0,8),W);label("A",(0,7),W);label("L",(0,6),W);label("E",(0,5),W);label("S",(0,4),W);draw((4,12.5)--(4,13.5)--(5,13.5)--(5,12.5)--cycle);label("Drums",(4,13),W);fill((15,12.5)--(15,13.5)--(16,13.5)--(16,12.5)--cycle,lightgray);draw((15,12.5)--(15,13.5)--(16,13.5)--(16,12.5)--cycle);label("Bugles",(15,13),W);