settings.outformat="svg";
import olympiad;
unitsize(15);

draw((0,0)--(36,0)--(36,24)--(0,24)--cycle);draw((0,4)--(36,4));draw((0,8)--(36,8));draw((0,12)--(36,12));draw((0,16)--(36,16));draw((0,20)--(36,20));fill((4,0)--(8,0)--(8,20)--(4,20)--cycle, black);fill((12,0)--(16,0)--(16,12)--(12,12)--cycle, black);fill((20,0)--(24,0)--(24,8)--(20,8)--cycle, black);fill((28,0)--(32,0)--(32,24)--(28,24)--cycle, black);label("\$120", (0,24), W);label("\$80", (0,16), W);label("\$40", (0,8), W);label("Jan", (6,0), S);label("Feb", (14,0), S);label("Mar", (22,0), S);label("Apr", (30,0), S);