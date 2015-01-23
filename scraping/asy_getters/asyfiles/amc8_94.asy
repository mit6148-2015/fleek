settings.outformat="svg"

pair A,B,C,D,EE;A = (0,0); B = (2,2); C = (4,0); D = (7,-3); EE = (10,0);fill(arc((2,0),A,C,CW)--arc((7,0),C,EE,CCW)--arc((5,0),EE,A,CCW)--cycle,gray);draw(arc((2,0),A,C,CW)--arc((7,0),C,EE,CCW));draw(circle((5,0),5));dot(A); dot(B); dot(C); dot(D); dot(EE);label("$A$",A,W);label("$B$",B,N);label("$C$",C,E);label("$D$",D,N);label("$E$",EE,W);