settings.outformat="svg"

size(80);defaultpen(linewidth(0.8));defaultpen(fontsize(8));draw(origin--(3,0)--(3,4)--cycle);draw(rightanglemark((3,4),(3,0), origin));label("3 in", (1.5,0), S);label("4 in", (3,2), E);