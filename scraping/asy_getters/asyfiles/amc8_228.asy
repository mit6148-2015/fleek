settings.outformat="svg"

defaultpen(linewidth(0.6));pair O=origin, A=(0,1), B=A+1*dir(60), C=(1,1), D=(1,0), E=D+1*dir(-72), F=E+1*dir(-144), G=O+1*dir(-108);draw(O--A--B--C--D--E--F--G--cycle);draw(O--D, dashed);draw(A--C, dashed);