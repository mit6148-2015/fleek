settings.outformat="svg"

defaultpen(linewidth(0.7));path p=origin--(0,1)--(1,1)--(1,2)--(2,2)--(2,3);draw(p^^(2,3)--(4,3)^^shift(2,0)*p^^(2,0)--origin);draw(shift(1,0)*p, dashed);label("$x$", (0.3,0.5), E);label("$A$", (1.3,0.5), E);label("$B$", (1.3,1.5), E);label("$C$", (2.3,1.5), E);label("$D$", (2.3,2.5), E);label("$E$", (3.3,2.5), E);