settings.outformat="svg";
import olympiad;
unitsize(15);

import graph;unitsize(1 cm);pair[] O;O[1] = (0,0);O[2] = 0.6*dir(270);O[3] = 0.6*dir(270 + 360/5);O[4] = 0.6*dir(270 + 2*360/5);O[5] = 0.6*dir(270 + 3*360/5);O[6] = 0.6*dir(270 + 4*360/5);O[7] = 1.2*dir(90);O[8] = 1.2*dir(90 + 360/5);O[9] = 1.2*dir(90 + 2*360/5);O[10] = 1.2*dir(90 + 3*360/5);O[11] = 1.2*dir(90 + 4*360/5);O[12] = 2*dir(270);O[13] = 2*dir(270 + 360/5);O[14] = 2*dir(270 + 2*360/5);O[15] = 2*dir(270 + 3*360/5);O[16] = 2*dir(270 + 4*360/5);draw(O[1]--O[2]);draw(O[1]--O[3]);draw(O[1]--O[4]);draw(O[1]--O[5]);draw(O[1]--O[6]);draw(O[7]--O[5]--O[8]--O[6]--O[9]--O[2]--O[10]--O[3]--O[11]--O[4]--cycle);draw(O[12]--O[10]--O[13]--O[11]--O[14]--O[7]--O[15]--O[8]--O[16]--O[9]--cycle);draw(O[12]--O[13]--O[14]--O[15]--O[16]--cycle);for(int i = 1; i <= 16; ++i) {  filldraw(Circle(O[i],0.2),white,black);}