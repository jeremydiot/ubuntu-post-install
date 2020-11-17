alias alias.show='cat ~/.bash_aliases'

alias apt.update='sudo apt-get update && sudo apt-get upgrade && sudo snap refresh'
alias docker.stop='docker stop $(docker ps -a -q)'
alias docker.rm='docker rm $(docker ps -a -q)'