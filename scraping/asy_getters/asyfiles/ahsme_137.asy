settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.7)+fontsize(10));pair A=dir(90-2*36), B=dir(90-36), C=dir(90), D=dir(90+36), E=dir(90+2*36);pair F=2*dir(90-1.5*36), G=2*dir(90-0.5*36), H=2*dir(90+0.5*36), I=2*dir(90+1.5*36);draw(A--F--B--G--C--H--D--I--E);label("$B_2$", B, -0.3*dir(B));label("$B_1$", C, -0.3*dir(C));label("$B_n$", D, -0.3*dir(D));label("$A_3$", F, dir(F));label("$A_2$", G, dir(G));label("$A_1$", H, dir(H));label("$A_n$", I, dir(I));