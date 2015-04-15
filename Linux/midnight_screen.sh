#!/bin/bash
##################################################################################################################
# Name: Midnight.sh
# Author: Kenneth & Chandan
# Platform: Any Linux Distro
# Tested on: Arch Linux, Fedora, Ubuntu
# 
# Purpose: To perfom troll applications to change settings/ open content
#               - Drop Screen Brightness to zero
# DISCLAIMER: WE ASSUME NO RESPONSIBILITY FOR ANY DAMAGE TO A COMPUTER THAT THIS MAY CAUSE
#		PLEASE FOR THE LOVE OF GOD DO NOT PRESS Q/q WHILE BRIGHTNESS IS 0.0 
#################################################################################################################
echo "Output is: $(xrandr)"
echo 
echo "This is a troll script to edit screen brightness! USE AT YOUR OWN RISK!!!"
echo "The options for this script are"
echo "	-'L' or 'l' for LVDS1 display type"
echo "	-'E' or 'e' for eDP1 display type"
echo "	-'restore' to restore LVDS1 display" # KNOW THESE TWO! They will be used to recover your display
echo "	-'restore1' to restore eDP1 display" # KNOW THESE TWO! It will save your friends computer
echo "	-'Q' or 'q' to exit" 

while true; do
    read -p "Enter a display adapter type: " yn
    case $yn in
        [Ll]* ) x="LVDS1"; xrandr --output $x --brightness 0.1;; #reduce brightness to 10% this is low changing to 0.0 will turn the screen off 
        [Ee]* ) x="eDP1"; xrandr --output $x --brightness 0.1;;
	[restore] ) x="LVDS1"; xrandr --output $x --brightness 1.0;;# restore default screen brightness
	[restore1]* ) x="eDP1"; xrandr --output $x --brightness 1.0;;
	[Qq]* ) exit;;
        * ) echo "Please Enter a Valid display type.";;
    esac
done
