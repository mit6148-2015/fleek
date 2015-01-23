settings.outformat="svg"

unitsize(75);pathpen = black; pointpen=black;pair A = MP("A", D((0,0)), dir(200));pair B = MP("B", D((2,0)), dir(-20));pair C = MP("C", D((1/2,1)), dir(100));pair D = MP("D", D(midpoint(B--C)), dir(30));pair E = MP("E", D(midpoint(A--B)), dir(-90));pair P = MP("P", D(IP(A--D, C--E)), dir(150)*2.013);draw(A--B--C--cycle);draw(A--D--E--C);