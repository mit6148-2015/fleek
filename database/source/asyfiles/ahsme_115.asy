settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7)+fontsize(10));pair A=(0,1), B=(0,-1), C=(2,-1), D=(2,1), E=(1,-1), F=(1,1), G=(.8,.6);pair X=(4,sqrt(5)), Y=(4,-sqrt(5)), Z=(4+2/sqrt(5),-sqrt(5)), W=(4+2/sqrt(5),sqrt(5)), T=(4,0), U=(4+2/sqrt(5),-4/sqrt(5)), V=(4+2/sqrt(5),1/sqrt(5));draw(A--B--C--D--A^^B--F^^E--D^^A--G^^rightanglemark(A,G,F));draw(X--Y--Z--W--X^^T--V--X^^Y--U);label("A", A, NW);label("B", B, SW);label("C", C, SE);label("D", D, NE);label("E", E, S);label("F", F, N);label("G", G, E);label("X", X, NW);label("Y", Y, SW);label("Z", Z, SE);label("W", W, NE);