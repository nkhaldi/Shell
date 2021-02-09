#!/bin/bash

cat /home/narek/.pass/.password | sudo -S echo
perl -E 'say "\033[35m*** RESTARTING WIFI ***\033[0m"'
sudo modprobe -rv rtl8723be
sudo modprobe -v rtl8723be ant_sel=1
perl -E 'say "\033[32m*** WIFI RESTARTED ***\033[0m"'
