reset
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
f(x)=a*exp(-(x-u)**2/(2*sigma**2))
g(x)=a1*exp(-(x-u1)**2/(2*sigma1**2))
plot 'kadm' with l lt 1 lw 1 notitle
#fit [5200:5500] f(x) 'kadm' via u,sigma,a
#fit [6000:6200] g(x) 'kadm' via u1,sigma1,a1
#replot f(x),g(x)

