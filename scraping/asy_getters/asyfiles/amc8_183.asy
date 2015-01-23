settings.outformat="svg"

draw((0,0)--(17,0));draw(rotate(301, (17,0))*(0,0)--(17,0));picture p;draw(p, (0,0)--(0,10));draw(p, rotate(115, (0,10))*(0,0)--(0,10));add(rotate(3)*p);draw((0,0)--(8.25,14.5), linetype("8 8"));label("$A$", (8.25, 14.5), N);label("$B$", (-0.25, 10), W);label("$C$", (0,0), SW);label("$D$", (17, 0), E);