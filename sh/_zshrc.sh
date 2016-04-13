function load-scripts() {
  for f in $(find "$1" -name "*.sh"); do
		if [ -f $f ]; then
				source $f
		fi
  done
}

load-scripts ~/etc/sh/autoload/
load-scripts ~/etc/sh/zsh-autoload/
