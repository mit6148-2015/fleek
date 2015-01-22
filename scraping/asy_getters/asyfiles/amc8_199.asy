settings.outformat="svg";
import olympiad;

size(100);draw((0,0)--(2,4)--(4,0)--(6,4)--cycle--(4,0),linewidth(1));label("$A$", (0,0), SW);label("$B$", (2,4), N);label("$C$", (4,0), SE);label("$D$", shift(0.2,0.1)*intersectionpoint((0,0)--(6,4),(2,4)--(4,0)), N);label("$E$", (6,4), NE);