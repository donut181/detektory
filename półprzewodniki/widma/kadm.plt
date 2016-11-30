reset
set xrange [5200:5500]
#set label font "Heleveltica,20"
set xlabel 'zliczenia'
set xlabel 'numer kanału'
f(x)=a*exp(-(x-u)**2/(2*sigma**2))
fit [5200:5500] f(x) 'gaus' via u,sigma,a
plot 'gaus' with l lt 1 lw 1 notitle
replot f(x)
