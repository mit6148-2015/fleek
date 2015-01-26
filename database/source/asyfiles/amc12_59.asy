settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(2mm);defaultpen(linewidth(.8pt)+fontsize(10pt));dotfactor=4;pair B=(0,0), A=(-10,0), C=20*dir(50);draw(A--B--C);draw(A--C,linetype("4 4"));dot(A);dot(B);dot(C);label("$10$",midpoint(A--B),S);label("$20$",midpoint(B--C),SE);label("$A$",A,SW);label("$B$",B,SE);label("$C$",C,NE);