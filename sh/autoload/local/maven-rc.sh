export M2_HOME=~/app/maven
export PATH=$M2_HOME/bin:$PATH

# Shows various information about updates (dependencies, plugins)
alias mvn-update-info="mvn versions:display-dependency-updates versions:display-plugin-updates versions:display-property-updates"
