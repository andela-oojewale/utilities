export ZSH=/Users/Mattwal/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

export PATH="/usr/local/bin:/Users/Mattwal/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

DISABLE_AUTO_UPDATE="true"
source $ZSH/oh-my-zsh.sh

alias cdp='cd ~/Documents/workspace/projects'
alias b='bundle'
alias migrate='rake db:migrate'
alias seed='rake db:seed'
alias rs='bundle exec rspec spec'
alias cdj='cd ~/Documents/workspace/jajascreept'

function cpd() {
 cd ~/Documents/workspace/projects/$1
}

function cpj() {
 cd ~/Documents/workspace/jajascreept/$1
}
