#!/bin/sh

if [ $# -ne 1 ]; then
   echo "Usage: $0 filename"
   exit 1
fi

gnuplot <<EOF
   set term pngcairo size 1024, 768
   set out "diskstats.png"
   set title "pt-diskstats"
   set xdata time
   set timefmt "%H:%M:%S"
   set xlabel "Time"
   set ylabel "IOPS per second"
   set format x "%H:%M"
   plot "$1" using 1:3 title "r/s" with lines lc rgb "blue", "$1" using 1:6 title "w/s" with lines lc rgb "red"
EOF
