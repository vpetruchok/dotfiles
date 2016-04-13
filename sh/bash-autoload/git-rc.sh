# From http://anders.janmyr.com/2012/11/configure-git-like-boss.html

# `g` is a shortcut for git, it defaults to `git s` (status) if no argument is given.
function g() {
	local cmd=${1-s}
	shift
	git $cmd "$@"
}


