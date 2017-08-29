# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/mattwal/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Gopath
export GOPATH="/Users/mattwal/Documents/olaide/workspace/go"
export PATH=$GOPATH/bin:$PATH

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Postgres
# export PATH=/Applications/Postgres.app/Contents/MacOS/bin:$PATH
export PGHOST=localhost

# For dvm
[[ -s "$(brew --prefix dvm)/dvm.sh" ]] && source "$(brew --prefix dvm)/dvm.sh"

# Androidsdk
export ANDROID_HOME="/Users/mattwal/Library/Android/sdk"
export PATH=$ANDROID_HOME/tools/bin:$PATH

# Yarn
# export PATH="$PATH:/opt/yarn-0.24.6/bin"
# export PATH="$PATH:`yarn global bin`"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias b='bundle'
alias be='bundle exec'
alias migrate='bundle exec rake db:migrate'
alias seed='bundle exec rake db:seed'
alias rs='bundle exec rspec spec'

function cdp() {
 cd ~/Documents/olaide/workspace/projects/$1
}

function cdj() {
 cd ~/Documents/olaide/workspace/jajascreept/$1
}

function cdpy() {
 cd ~/Documents/olaide/workspace/python/$1
}

function cdms() {
 cd ~/Documents/olaide/workspace/microservices/$1
}

function cdg() {
 cd ~/Documents/olaide/workspace/go/$1
}

function git_delete_merged_branch() {
  printf "\n"
  echo 'DELETING MERGED BRANCHES'
  ref=$(command git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d )
  echo '################################################################################'
  echo 'DELETED MERGED BRANCHES'
  printf "\n"
  echo ${ref}
  echo '################################################################################'
}
export PATH="/usr/local/opt/curl/bin:$PATH"
