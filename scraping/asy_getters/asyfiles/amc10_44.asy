settings.outformat="svg";
import olympiad;

defaultpen(linewidth(0.7));size(7cm);D((0,0)--(16,0)--(16,-16)--(0,-16)--cycle, black);D((16,-8)--(24,-8), black);label('Dog', (24, -8), SE);label('I', (8,-8), (0,0));MP('8', (16,-4), W);MP('8', (16,-12),W);MP('8', (20,-8), N);label('Rope', (20,-8),S);D((0,-20)--(16,-20)--(16,-36)--(0,-36)--cycle, black);D((16,-24)--(24,-24), black);label("II", (8,-28), (0,0));MP('4', (16,-22), W);MP('8', (20,-24), N);label("Dog",(24,-24),SE);label("Rope", (20,-24), S);dot((24,-24)^^(24,-8));