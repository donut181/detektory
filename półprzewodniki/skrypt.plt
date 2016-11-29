#!/usr/bin/gnuplot --persist
reset
set terminal epslatex color
set output "charakterystyka1.tex"

set nokey
set style fill solid border -1
set boxwidth 1.
set xlabel 'U[V]'
set ylabel 'częstość zliczeń J[imp/100s]'
set xrange [:1710]
plot "charakterystyka1.dat" every ::0::3 u 1:2 w p, "charakterystyka1.dat" every ::4::31 u 1:2 w p, "charakterystyka1.dat" every ::32::47 u 1:2 w p,0.533*x+897 w l

set format y "%g"
set xrange [*:1383]
set yrange [-500:*]
set output "charakterystyka2.tex"
plot "charakterystyka2.dat" every ::0::1 u 1:2 w p, "charakterystyka2.dat" every ::2::5 u 1:2 w p, "charakterystyka2.dat" every ::6::7 u 1:2 w p,286*x-364047 w l

set key box inside right top
set xrange [*:1630]
set yrange [0:1.05]
set output "czas_martwy1.tex"
set ylabel 't[ms]'
plot "czas_martwy1.dat" u 1:2 w lp title "1 detektor", "czas_martwy2.dat" u 1:2 w lp title "2 detektor"
#
#unset log y
#set output "I_U_chuda_anoda_do_500.tex"
#plot "chuda_anoda.dat" every ::0::25 u 1:4 w p, 4.89348e-12 w l
#
#set output "prad_ciemny.tex"
#plot "prad_ciemny.dat" u 1:2 w p, 5.1488e-15*x
#
#set output "A.tex"
#set key box inside left top
#set log y
#set ylabel '$A$'
#plot "gruba_anoda.dat" u 1:3 w p title "1 detektor", "chuda_anoda.dat" u 1:3 w p title "2 detektor"
