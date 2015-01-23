settings.outformat="svg"

fill(circle((4,0),4),grey);fill((0,0)--(8,0)--(8,-4)--(0,-4)--cycle,white);fill(circle((7,0),1),white);fill(circle((3,0),3),white);draw((0,0)--(8,0),black+linewidth(1));draw((6,0)--(6,sqrt(12)),black+linewidth(1));MP("A", (0,0), W);  MP("B", (8,0), E);  MP("C", (6,0), S); MP("D",(6,sqrt(12)), N);