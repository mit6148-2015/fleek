settings.outformat="svg";
import olympiad;
unitsize(15);

picture corner;draw(corner,(5,0)--(35,0));draw(corner,(0,-5)--(0,-35));for (int i=0; i<3; ++i){	for (int j=0; j>-2; --j)	{		if ((i-j)<3)		{			add(corner,(50i,50j));		}	}}draw((5,-100)--(45,-100));draw((155,0)--(185,0),dotted+linewidth(2));draw((105,-50)--(135,-50),dotted+linewidth(2));draw((100,-55)--(100,-85),dotted+linewidth(2));draw((55,-100)--(85,-100),dotted+linewidth(2));draw((50,-105)--(50,-135),dotted+linewidth(2));draw((0,-105)--(0,-135),dotted+linewidth(2));