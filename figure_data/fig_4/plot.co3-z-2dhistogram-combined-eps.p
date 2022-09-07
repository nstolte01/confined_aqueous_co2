set term epscairo enhanced size 15,15 font "arial,22"
set output "co3-z-2dhistogram-eps.eps" 
set multiplot

set border lw 8

SIDE   = 0.12
DY     = 0.35
DX     = 0.33
BOT    = 0.1
XSPLIT = 0.04
YSPLIT = 0.12
MX     = 5.0 

set xlabel "z (Å)" offset 0,-1.7 font "arial,54"
set xtics 2 offset 0,-0.7 font "arial, 50" 
set mxtics 2
set ytics 30.0 offset -1,0 font "arial, 50" format "%g°"
set mytics 3
unset key

set tics scale 2

set yrange [0:90.0]

set cbrange [0:0.05]
set cbtics 0.01 font "arial, 50"
set colorbox user origin 0.85,BOT+DY+YSPLIT size 0.04,DY

set palette defined (0 "#FFFFFF", 1 "#FFFFFF")
set style fill transparent solid 0.0

set pm3d map
unset grid

# Graphene, 5 CO2, 1000 K

LIM = 4.6

TX = LIM * (DX / MX)
EX = ((MX - LIM) * (DX / MX)) / 2.0

set lmargin at screen SIDE + EX 
set rmargin at screen SIDE + TX + EX
set bmargin at screen BOT + YSPLIT + DY
set tmargin at screen BOT + DY*2.0 + YSPLIT

set ylabel "{/Symbol a}" offset -8,0 font "arial,54"

set xrange [-1.0*LIM:LIM]

splot (x-5)/(12-5)

# Graphene, 5 CO2, 1400 K

LIM = 4.6
TX = LIM * (DX / MX)
EX = ((MX - LIM) * (DX / MX)) / 2.0

unset colorbox

set lmargin at screen SIDE + XSPLIT + DX + EX  
set rmargin at screen SIDE + XSPLIT + DX + EX + TX
set bmargin at screen BOT + YSPLIT + DY
set tmargin at screen BOT + DY*2.0 + YSPLIT

unset pm3d 
unset ylabel
set ytics format ""
set xlabel "z (Å)" offset 0,-2.0 font "arial,54"

set xrange [-1.0*LIM:LIM]
set xtics 2 offset 0,-1.0 font "arial, 50" 

plot 500

# Stishovite, 5 CO2, 1000 K

LIM = 4.6
TX = LIM * (DX / MX)
EX = ((MX - LIM) * (DX / MX)) / 2.0

set lmargin at screen SIDE + EX 
set rmargin at screen SIDE + EX + TX 
set bmargin at screen BOT
set tmargin at screen BOT + DY

set ytics 30.0 offset -1,0 font "arial, 50" format "%g°"
set ylabel "{/Symbol a}" offset -8,0 font "arial,54"

set xrange [-1.0*LIM:LIM]

plot 500

# Stishovite, 5 CO2, 1400 K

LIM = 4.6
TX = LIM * (DX / MX)
EX = ((MX - LIM) * (DX / MX)) / 2.0

set lmargin at screen SIDE + DX + XSPLIT + EX
set rmargin at screen SIDE + DX + XSPLIT + EX + TX
set bmargin at screen BOT
set tmargin at screen BOT + DY

#set label 1 "d" front

unset ylabel
set ytics format ""

set xrange [-1.0*LIM:LIM]

plot 500

