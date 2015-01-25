settings.outformat="svg";
import olympiad;
unitsize(15);

/* AMC8 2003 #21 Problem */size(4inch,2inch);draw((0,0)--(31,0)--(16,8)--(6,8)--cycle);draw((11,8)--(11,0), linetype("8 4"));draw((11,1)--(12,1)--(12,0));label("$A$", (0,0), SW);label("$D$", (31,0), SE);label("$B$", (6,8), NW);label("$C$", (16,8), NE);label("10", (3,5), W);label("8", (11,4), E);label("17", (22.5,5), E);