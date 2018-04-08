set xlabel "dx"
set ylabel "error"
set logscale xy
m="./data.dat"
set terminal qt size 1200, 700
set nokey
set grid
set title 'Integration Error - arctan(x)'
plot m using 2:1 with linespoints
set term png
set output "arctan.png"
replot
set term x11
