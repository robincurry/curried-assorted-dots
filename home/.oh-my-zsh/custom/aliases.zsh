alias a="alias | less"
alias cl="clear"


#######
# git #
#######
alias gb='git branch -a -v'
compdef _git gb=git-branch
alias gs='git status'
compdef _git gs=git-status
alias gc='git checkout'
compdef _git gc=git-checkout


############
# Postgres #
############
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgtail='tail -f /usr/local/var/postgres/server.log'

#########
# Redis #
#########
alias redisstart="redis-server `brew --prefix`/etc/redis.conf"

#########
# OTHER #
#########
alias djstart="bundle exec ./script/delayed_job -i 30 --min-priority 30 --max-priority 30 start"
alias djstop="bundle exec ./script/delayed_job stop"
alias thislan="ipconfig getifaddr en1"
alias yourlan="curl -s http://checkip.dyndns.org | sed 's/[a-zA-Z/<> :]//g'"

function laststatus { return $? }
function result_image {
  if [ $? -eq 0 ];then
    return '/users/robincurry/.watchr/passed.png'
  else
    return '/users/robincurry/.watchr/failed.png'
  fi
}

alias -g G="2>&1 | tee /dev/tty | tail -3| growlnotify -w -s -n ruby-growl --image \"/users/robincurry/.watchr/${${?/0/passed}/*[0-9]/failed}.png\""
