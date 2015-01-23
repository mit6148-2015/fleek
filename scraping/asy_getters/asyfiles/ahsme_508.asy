settings.outformat="svg"

size(100);real a=4, b=3;//import cse5;pathpen=black;pair A=(a,0), B=(0,b), C=(0,0);D(MP("A",A)--MP("B",B,N)--MP("C",C,SW)--cycle);pair X=IP(B--A,(0,0)--(b,a));D(CP((X+C)/2,C));D(MP("R",IP(CP((X+C)/2,C),B--C),NW)--MP("Q",IP(CP((X+C)/2,C),A--C+(0.1,0))));//Credit to chezbgone2 for the diagram