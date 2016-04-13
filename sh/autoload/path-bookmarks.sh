#!/bin/sh

# from http://blog.toddwerth.com/entries/show/4
# I got the following from, and mod'd it: http://www.macosxhints.com/article.php?story=20020716005123797
#    The following aliases (save & show) are for saving frequently used directories
#    You can save a directory using an abbreviation of your choosing. Eg. save ms
#    You can subsequently move to one of the saved directories by using cd with
#    the abbreviation you chose. Eg. cd ms  (Note that no '$' is necessary.)

if [ ! -f ~/.path-bookmarks ]; then 
  touch ~/.path-bookmarks
fi

pathsave() {
	for f in "$@"; do
		echo "alias :$f"=\"cd `pwd`\" >> ~/.path-bookmarks;
	done
	source ~/.path-bookmarks ; 
} 

alias pathshow='cat ~/.path-bookmarks'
alias pathedit='vi ~/.path-bookmarks'
source ~/.path-bookmarks

alias sopaths="source ~/.path-bookmarks"
alias sopath="source ~/.path-bookmarks"
