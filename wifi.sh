#!/bin/bash

cat ~/.password | sudo -S echo
perl -E 'say "\033[35m*** RESTARTING WIFI ***\033[0m"'
sudo modprobe -rv rtl8723be
sudo modprobe -v rtl8723be ant_sel=2
perl -E 'say "\033[32m*** WIFI RESTARTED ***\033[0m"'
