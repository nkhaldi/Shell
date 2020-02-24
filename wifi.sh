#!/bin/bash

perl -e 'print "\033[36m"'
echo ~/.password | sudo -S modprobe -rv rtl8723be
sudo modprobe -v rtl8723be ant_sel=2
