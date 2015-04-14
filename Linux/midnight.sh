#!/bin/bash
#######################################
# Name: Midnight.sh
# Author: Kenneth & Chandan
# Platform: Any Linux Distro
# Tested on: Arch Linux, Fedora, Ubuntu
# 
# Purpose: To perfom troll applications to change settings/ open content
#		- Open 50 Webpages of Tastyblacks.com
#######################################

for ((i=1;i<=100;i++))
do
 xdg-open http://www.tastyblacks.com
done

echo You Have been trolled

