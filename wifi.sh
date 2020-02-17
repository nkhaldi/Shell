#!/bin/bash

perl -e 'print "\033[36m"'
echo "polinux" | sudo -S modprobe -rv rtl8723be
echo ""
sudo modprobe -v rtl8723be ant_sel=2
