settings.outformat="svg";
import olympiad;
unitsize(15);

pair A,B,C,D,E,F,R,S,T,X,Y,Z;dotfactor = 2;unitsize(.1cm);A = (0,0);B = (0,18);C = (0,36);// don't look hereD = (12*2.236, 36);E = (12*2.236, 18);F = (12*2.236, 0);draw(A--B--C--D--E--F--cycle);dot(" ",A,NW);dot(" ",B,NW);dot(" ",C,NW);dot(" ",D,NW);dot(" ",E,NW);dot(" ",F,NW);//don't look hereR = (12*2.236 +22,0);S = (12*2.236 + 22 - 13.4164,12);T = (12*2.236 + 22,24);X = (12*4.472+ 22,24);Y = (12*4.472+ 22 + 13.4164,12);Z = (12*4.472+ 22,0);draw(R--S--T--X--Y--Z--cycle);dot(" ",R,NW);dot(" ",S,NW);dot(" ",T,NW);dot(" ",X,NW);dot(" ",Y,NW);dot(" ",Z,NW);// sqrt180 = 13.4164// sqrt5 = 2.236