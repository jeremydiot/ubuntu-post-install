alias alias.show='cat ~/.bash_aliases'

alias apt.upgrade='sudo apt-get update && sudo apt-get upgrade && sudo snap refresh'
alias apt.clean='sudo apt-get autoremove --purge && sudo apt-get clean'
alias apt.remove='sudo apt-get remove --purge'
alias docker.stop='docker stop $(docker ps -a -q)'
alias docker.rm='docker rm $(docker ps -a -q)'