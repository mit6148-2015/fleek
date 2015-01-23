settings.outformat="svg"

path card=((0,0)--(0,3)--(2,3)--(2,0)--cycle);draw(card, linewidth(1));draw(shift(2.5,0)*card, linewidth(1));draw(shift(5,0)*card, linewidth(1));label("$44$", (1,1.5));label("$59$", shift(2.5,0)*(1,1.5));label("$38$", shift(5,0)*(1,1.5));