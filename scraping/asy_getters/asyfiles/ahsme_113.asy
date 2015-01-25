settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7)+fontsize(10));pair A=(0,0), B=(16,0), C=(16,16), D=(0,16), E=(32,0), F=(48,0), G=(48,16), H=(32,16), I=(0,8), J=(10,8), K=(10,16), L=(32,6), M=(40,6), N=(40,16);draw(A--B--C--D--A^^E--F--G--H--E^^I--J--K^^L--M--N);label("S", (18,8));label("S", (50,8));label("Figure 1", (A+B)/2, S);label("Figure 2", (E+F)/2, S);label("10'", (I+J)/2, S);label("8'", (12,12));label("8'", (L+M)/2, S);label("10'", (42,11));label("table", (5,12));label("table", (36,11));