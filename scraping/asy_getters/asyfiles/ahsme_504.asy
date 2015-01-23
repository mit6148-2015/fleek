settings.outformat="svg"

size(120);real t = 2/sqrt(3);real x = 1 + sqrt(3);pair A = t*dir(90), D = x*A;pair B = t*dir(210), E = x*B;pair C = t*dir(330), F = x*C;draw(D--E--F--cycle);draw(Circle(A, 1));draw(Circle(B, 1));draw(Circle(C, 1));//Credit to MSTang for the diagram