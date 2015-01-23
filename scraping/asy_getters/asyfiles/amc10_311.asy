settings.outformat="svg"

size(90); defaultpen(linewidth(0.7));filldraw((0,0)--(2,0)--(2,2)--(0,2)--cycle,gray(0.5));filldraw(arc((1,0),1,180,0, CCW)--cycle,gray(0.7));filldraw(arc((0,1),1,90,270)--cycle,gray(0.7));filldraw(arc((1,2),1,0,180)--cycle,gray(0.7));filldraw(arc((2,1),1,270,90, CCW)--cycle,gray(0.7));