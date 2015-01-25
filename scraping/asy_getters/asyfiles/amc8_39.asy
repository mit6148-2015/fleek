settings.outformat="svg";
import olympiad;
unitsize(15);

unitsize(5.5);fill((0,0)--(-4,-2)--(4,-2)--cycle,black);draw((-12,2)--(-12,0)--(12,0)--(12,2));draw(ellipse((-12,5),8,3)); draw(ellipse((12,5),8,3));label("$\Delta \hspace{2 mm}\Delta \hspace{2 mm}\Delta \hspace{2 mm}\diamondsuit $",(-12,6.5),S);label("$\bullet \hspace{2 mm}\bullet \hspace{2 mm}\bullet \hspace{2 mm} \bullet $",(12,5.2),N);label("$\bullet \hspace{2 mm}\bullet \hspace{2 mm}\bullet \hspace{2 mm}\bullet \hspace{2 mm}\bullet $",(12,5.2),S);fill((44,0)--(40,-2)--(48,-2)--cycle,black);draw((34,2)--(34,0)--(54,0)--(54,2));draw(ellipse((34,5),6,3)); draw(ellipse((54,5),6,3));label("$\Delta $",(34,6.5),S); label("$\bullet \hspace{2 mm}\diamondsuit $",(54,6.5),S);