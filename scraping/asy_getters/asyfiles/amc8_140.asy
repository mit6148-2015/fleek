settings.outformat="svg"

real r=22.61986495;pair A=origin, B=(12,0), C=(12,5);draw(A--B--C--cycle);markscalefactor=0.1;draw(rightanglemark(C, B, A));draw(scale(12)*shift(0,-1)*unitsquare);draw(scale(5)*shift(12/5,0)*unitsquare);draw(scale(13)*rotate(r)*unitsquare);pair P=shift(0,-1)*(13/sqrt(2) * dir(r+45)), Q=(14.5,1.2), R=(6, -7);label("169", P, N);label("25", Q, N);label("144", R, N);