settings.outformat="svg";
import olympiad;

size(200);defaultpen(linewidth(0.7));defaultpen(fontsize(8));draw(origin--(0,250));int i;for(i=0; i<6; i=i+1) {draw((0,50*i)--(5,50*i));}filldraw((25,0)--(75,0)--(75,150)--(25,150)--cycle, gray, black);filldraw((75,0)--(125,0)--(125,100)--(75,100)--cycle, gray, black);filldraw((125,0)--(175,0)--(175,150)--(125,150)--cycle, gray, black);filldraw((225,0)--(175,0)--(175,250)--(225,250)--cycle, gray, black);label("$50$", (0,50), W);label("$100$", (0,100), W);label("$150$", (0,150), W);label("$200$", (0,200), W);label("$250$", (0,250), W);label(rotate(90)*"Lasagna", (50,0), S);label(rotate(90)*"Manicotti", (100,0), S);label(rotate(90)*"Ravioli", (150,0), S);label(rotate(90)*"Spaghetti", (200,0), S);label(rotate(90)*"$\mbox{Number of People}$", (-40,140), W);