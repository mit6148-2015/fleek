settings.outformat="svg"

import graph;draw((0,8)..(-4,4)..(0,0)--(0,8));draw((0,0)..(7.5,-7.5)..(15,0)--(0,0));real theta = aTan(8/15);draw(arc((15/2,4),17/2,-theta,180-theta));draw((0,8)--(15,0));label("$A$", (0,8), NW);label("$B$", (0,0), SW);label("$C$", (15,0), SE);