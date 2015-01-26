settings.outformat="svg";
import olympiad;
unitsize(15);

pair a = (0,0),b= (6,0),c=(0,1),d=(6,1);transform t = rotate(-45,(3,.5));pair e = t*a,f=t*b,g=t*c,h=t*d;pair i = intersectionpoint(a--b,e--f),j=intersectionpoint(a--b,g--h),k=intersectionpoint(c--d,e--f),l=intersectionpoint(c--d,g--h);draw(a--b^^c--d^^e--f^^g--h);filldraw(i--j--l--k--cycle,blue);label("$\alpha$",i+(-.5,.2));//commented out labeling because it doesn't look right.//path lbl1 = (a+(.5,.2))--(c+(.5,-.2));//draw(lbl1);//label("$1$",lbl1);