#!/bin/sh

win=$(wmctrl -l | grep ' - GVIM'| head -n 1)

if [ -z "$win" ]; then 
	gvim
else
	$(wmctrl -ia $win)
fi    
