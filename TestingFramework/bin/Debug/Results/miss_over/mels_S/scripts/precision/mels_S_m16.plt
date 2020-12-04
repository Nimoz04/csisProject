set terminal png size 12*30,720
set output "recovery/plots/mels_S_m16.png"

set xrange [0:0+30]
set xtics 0,25
#set log y

set key above width -1 vertical maxrows 2 
set tmargin 2.5

set arrow from 0,0 to 730,0 nohead

set xlabel "data point"
set ylabel "value" offset 1.5 

plot\
	'recovery/values/reference.txt' index 0 using 1:2 title 'real' with linespoints lt 1 dt 3 lw 3 pt 5 lc rgbcolor "black" pointsize 1, \
	'recovery/values/16/trmf16.txt' index 0 using 1:2 title 'trmf' with linespoints lt 8 dt 2 lw 3 pt 9 lc rgbcolor "orange" pointsize 1.2, \
	'recovery/values/16/softimp16.txt' index 0 using 1:2 title 'softimp' with linespoints lt 8 dt 2 lw 3 pt 5 lc rgbcolor "dark-violet" pointsize 1.2, \
	'recovery/values/16/cdrec16_k3.txt' index 0 using 1:2 title 'cdrec\_k3' with linespoints lt 8 lw 3 pt 7 lc rgbcolor "cyan" pointsize 1.2, \
	'recovery/values/16/dynammo16.txt' index 0 using 1:2 title 'dynammo' with linespoints lt 8 dt 2 lw 3 pt 4 lc rgbcolor "red" pointsize 1.2, \
	'recovery/values/16/grouse16.txt' index 0 using 1:2 title 'grouse' with linespoints lt 8 dt 3 lw 3 pt 5 lc rgbcolor "cyan" pointsize 2, \
	'recovery/values/16/stmvl16.txt' index 0 using 1:2 title 'stmvl' with linespoints lt 8 dt 2 lw 3 pt 8 lc rgbcolor "green" pointsize 1.2, \

