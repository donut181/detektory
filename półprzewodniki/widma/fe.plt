reset
set zrange [:600]
set yrange [:2000]
set label font "Heleveltica,20"
set xlabel 'U_{bias} [V]'
set ylabel 'numer kanału'
set zlabel 'zliczenia'

splot 'fe' using ($1*20+40):2:3 with l lt 1 lw 1 notitle

