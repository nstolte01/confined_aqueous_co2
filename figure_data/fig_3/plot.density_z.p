set term epscairo enhanced size 8.5,8.5 font "arial,22"
set output "density_z.eps"

set border lw 3

SIDE   = 0.18
DY     = 0.33
DX     = 0.33
BOT    = 0.1
XSPLIT = 0.12
YSPLIT = 0.12
MX     = 13.0317 / 2.0

set multiplot

set xlabel "z (Å)" offset 0,0.1 font "arial,34"
set xtics 2 offset 0,0.2 font "arial, 30" 
set mxtics 2
set ytics 0.05 font "arial, 30" format "%g"
set mytics 2
unset key

set yrange [0:0.25]

# Graphene, 5 CO2, 1000 K

LIM = 4.5
TX = LIM * (DX / MX)
EX = ((MX - LIM) * (DX / MX)) / 2.0

set lmargin at screen SIDE + EX
set rmargin at screen SIDE + TX + EX
set bmargin at screen BOT + DY + YSPLIT
set tmargin at screen BOT + DY*2.0 + YSPLIT

set ylabel "Number density\n(atoms Å^{-3})" offset -3,0 font "arial,34"

set label 1 at graph 0.09,0.92 "a" front font "Arial-Bold,34"

set xrange [-1*LIM:LIM]

plot 54.927/1000.0 w l lw 4 dashtype 2 lc "#000000" notitle,\
 "a.dat" u 1:2 w l lw 4 lc "#000000" title "O_{sol}",\
 "" u 1:4 w l lw 4 lc "#0080FF" title "C"

# Graphene, 5 CO2, 1400 K

LIM = 4.6
TX = LIM * (DX / MX)
EX = ((MX - LIM) * (DX / MX)) / 2.0

set lmargin at screen SIDE + DX + XSPLIT + EX
set rmargin at screen SIDE + DX + XSPLIT + EX + TX
set bmargin at screen BOT + DY + YSPLIT
set tmargin at screen BOT + DY*2.0 + YSPLIT

unset ylabel

set label 1 "b" front 

set xrange [-1.0*LIM:LIM]

plot 51.094/1000.0 w l lw 4 dashtype 2 lc "#000000" notitle,\
 "b.dat" u 1:2 w l lw 4 lc "#000000" title "O_{sol}",\
 "" u 1:4 w l lw 4 lc "#0080FF" title "C"

LIM = 12.7736/2.0
TX = LIM * (DX / MX)
EX = ((MX - LIM) * (DX / MX)) / 2.0

set lmargin at screen SIDE + EX 
set rmargin at screen SIDE + EX + TX
set bmargin at screen BOT
set tmargin at screen BOT + DY

set label 1 "c" front 

set ylabel "Number density\n(atoms Å^{-3})" offset -3,0 font "arial,34"
set ytics 0.05 format "%g" font "arial, 30"
set mytics 2

set xrange [-1.0*LIM:LIM]

plot 54.927/1000.0 w l lw 4 dashtype 2 lc "#000000" notitle,\
 "c.dat" u 1:6 w l lw 4 lc "#FF9933" title "O_{SiO_2}",\
 "" u 1:2 w l lw 4 lc "#000000" title "O_{sol}",\
 "" u 1:4 w l lw 4 lc "#0080FF" title "C"

# Stishovite, 5 CO2, 1400 K

LIM = 13.0417/2.0
TX = LIM * (DX / MX)
EX = ((MX - LIM) * (DX / MX)) / 2.0

set lmargin at screen SIDE + DX + XSPLIT + EX
set rmargin at screen SIDE + DX + XSPLIT + EX + TX
set bmargin at screen BOT
set tmargin at screen BOT + DY

unset ylabel

set label 1 "d" front

set xrange [-1.0*LIM:LIM]

plot 51.094/1000.0 w l lw 4 dashtype 2 lc "#000000" notitle,\
 "d.dat" u 1:6 w l lw 4 lc "#FF9933" title "O_{SiO_2}",\
 "" u 1:2 w l lw 4 lc "#000000" title "O_{sol}",\
 "" u 1:4 w l lw 4 lc "#0080FF" title "C"

# Key

unset ylabel
unset xlabel
unset xtics
unset ytics
unset border
unset label 1

set tmargin at screen 1.0
set lmargin at screen 0.0
set bmargin at screen BOT + DY*2.0 + YSPLIT 
set rmargin at screen SIDE + DX*2.0 + XSPLIT 

set key font ",34"
set key horizontal reverse Left at screen 1.03,0.97
set key width 1.8

set yrange [0:1]
set xrange [0:1]

plot 500 w l lw 4 lc "#000000" title "O_{sol}",\
 500 w l lw 4 lc "#FF9933" title "O_{SiO_2}",\
 500 w l lw 4 lc "#0080FF" title "C"
