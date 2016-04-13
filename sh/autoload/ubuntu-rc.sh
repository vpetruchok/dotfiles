function s() {
  /usr/bin/apt-cache search "$1" | grep "$1" 
}
alias show="/usr/bin/apt-cache show"
alias i="sudo /usr/bin/apt-get install"
