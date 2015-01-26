settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(0.25inch);defaultpen(linewidth(0.7));int i, j;for(i = 0; i < 4; ++i)	for(j = 0; j < 4; ++j)		dot(((real)i, (real)j));