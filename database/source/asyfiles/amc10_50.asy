settings.outformat="svg";
import olympiad;
unitsize(15);

defaultpen(linewidth(0.8));real r=sqrt(50), s=sqrt(10);draw(Arc(origin, r, 0, 180));draw((r,0)--(-r,0), dashed);draw((s,0)--(s,2*s)--(-s,2*s)--(-s,0));