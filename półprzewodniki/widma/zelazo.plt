reset
set terminal epslatex color
set output "zelazo.tex"
#set xrange [5200:5500]
#set label font "Heleveltica,20"
set xlabel 'zliczenia'
set ylabel 'numer kanału'
sigma=90
u=5300
a=250
sigma1=40
u1=6100
a1=50
plot 'zelazo' with l lt 1 lw 1 notitle

