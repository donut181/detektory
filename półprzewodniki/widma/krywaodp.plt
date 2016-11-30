reset
set ylabel "Energia [keV]"
set xlabel "Numer kanału"
#set yrange [0:140]
#set xrange [0:800]
#plot 'krywaodp' using 2:1 notitle
f(x)=a*x+b
fit  f(x) 'krywaodp' using 1:3 via a,b
plot  f(x) title 'fit' lt rgb "black"
replot "krywaodp" index 0 using 1:3 title "^{57}Co" 
replot "krywaodp" index 1 using 1:3 title "^{241}Am"
%set style line 1 pointtype 7 
%replot '+' using (0):(f(0)):(sprintf('En(kanał 0)=%.2f', b))\
%    with labels offset char 1,-0.2 left textcolor rgb 'black' \
%     point linestyle 1 notitle
