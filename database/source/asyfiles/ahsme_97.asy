settings.outformat="svg";
import olympiad;
unitsize(15);

int i,j;for(i=0; i<4; i=i+1) {label(string(16*i+1), (2*1,-2*i));label(string(16*i+3), (2*2,-2*i));label(string(16*i+5), (2*3,-2*i));label(string(16*i+7), (2*4,-2*i));}for(i=0; i<3; i=i+1) {for(j=0; j<4; j=j+1) {label(string(16*i+15-2*j), (2*j,-2*i-1));}}dot((0,-7)^^(0,-9)^^(2*4,-8)^^(2*4,-10));for(i=-10; i<-6; i=i+1) {for(j=1; j<4; j=j+1) {dot((2*j,i));}}