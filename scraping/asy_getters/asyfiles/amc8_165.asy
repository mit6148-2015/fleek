settings.outformat="svg"

defaultpen(fontsize(7));size(80);draw((0,16)--origin--(16,0), linewidth(0.9));label("distance traveled", (8,0), S);label(rotate(90)*"distance to X", (0,8), W);draw(Arc((4,10), 4, 0, 180)^^(8,10)--(16,12));