ioplot
======

Graph of Disk IO using Percona pt-diskstats and GNUplot

#Requirements
wget percona.com/get/pt-diskstats
yum install gnuplot

#Usage
pt-diskstats --show-timestamps --devices sda$ --columns 'rd_s|rd_rt|rd_cnc|wr_s|wr_rt|wr_cnc'|grep -v '#' > diskstats.out
ioplot.sh /path/to/diskstats.out
