#!/bin/sh

win=$(wmctrl -l | grep " - Google Chrome"| head -n 1)

if [ -z "$win" ]; then 
	google-chrome
else
	$(wmctrl -ia $win)
fi    
