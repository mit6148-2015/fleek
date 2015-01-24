settings.outformat="svg";
import olympiad;

unitsize(12);draw((1,1)--(23,1));draw((0,5)--(23,5));draw((0,9)--(23,9));draw((0,13)--(23,13));for(int a=0; a<6; ++a) {  draw((4a+2,0)--(4a+2,14)); }label("Tues.",(4,14),N); label("Wed.",(8,14),N); label("Thurs.",(12,14),N);label("Fri.",(16,14),N); label("Sat.",(20,14),N);label("C",(12,10.3),N); label("$\textbf{A}$",(16,10.3),N); label("Q",(12,6.3),N);label("S",(4,2.3),N); label("$\textbf{B}$",(8,2.3),N); label("P",(12,2.3),N);label("T",(16,2.3),N); label("R",(20,2.3),N);