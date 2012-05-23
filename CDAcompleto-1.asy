if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="CDAcompleto-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import graph;
size(13cm,4cm);
scale(false);
xlimits(-10,10);
ylimits(-0.5,1.5);
crop();
real f(real x) {return (x != 0.0) ? (sin(x))/x : 0.0;}
path g=graph(f,-10,-0.001,operator ..)--(-0.001,0)--(-10,0)--cycle;
path h=graph(f,0.001,10,operator ..)--(10,0)--(0.001,0)--cycle;
filldraw(g,palegreen);
filldraw(h,palegreen);
xaxis("$x$");
yaxis("$y$");
draw(graph(f,-10,-0.001));
draw(graph(f,0.001,10));
label("$\frac{\sin(x)}{x}$", (1,0.8), NE);
viewportsize=(369.88582pt,0);
