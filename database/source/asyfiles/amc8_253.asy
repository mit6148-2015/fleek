settings.outformat="svg";
import olympiad;
unitsize(15);

import three;size(3inch);currentprojection=orthographic(-8,15,15);triple A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P;A = (0,0,0);B = (0,10,0);C = (12,10,0);D = (12,0,0);E = (0,0,5);F = (0,10,5);G = (12,10,5);H = (12,0,5);I = (1,1,1);J = (1,9,1);K = (11,9,1);L = (11,1,1);M = (1,1,5);N = (1,9,5);O = (11,9,5);P = (11,1,5);//outside box fardraw(surface(A--B--C--D--cycle),white,nolight);draw(A--B--C--D--cycle);draw(surface(E--A--D--H--cycle),white,nolight);draw(E--A--D--H--cycle);draw(surface(D--C--G--H--cycle),white,nolight);draw(D--C--G--H--cycle);//inside box fardraw(surface(I--J--K--L--cycle),white,nolight);draw(I--J--K--L--cycle);draw(surface(I--L--P--M--cycle),white,nolight);draw(I--L--P--M--cycle);draw(surface(L--K--O--P--cycle),white,nolight);draw(L--K--O--P--cycle);//inside box neardraw(surface(I--J--N--M--cycle),white,nolight);draw(I--J--N--M--cycle);draw(surface(J--K--O--N--cycle),white,nolight);draw(J--K--O--N--cycle);//outside box neardraw(surface(A--B--F--E--cycle),white,nolight);draw(A--B--F--E--cycle);draw(surface(B--C--G--F--cycle),white,nolight);draw(B--C--G--F--cycle);//topdraw(surface(E--H--P--M--cycle),white,nolight);draw(surface(E--M--N--F--cycle),white,nolight);draw(surface(F--N--O--G--cycle),white,nolight);draw(surface(O--G--H--P--cycle),white,nolight);draw(M--N--O--P--cycle);draw(E--F--G--H--cycle);label("10",(A--B),SE);label("12",(C--B),SW);label("5",(F--B),W);