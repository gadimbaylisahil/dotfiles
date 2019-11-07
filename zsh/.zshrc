# If you come from bash you might have to change your $PATH.

export PATH=$HOME/bin:/usr/local/bin:$PATH

#Fix for unknown terminal type in remote connections
export TERM=xterm-256color

#Rbenv shims
eval "$(rbenv init -)"
PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"

# Path to your oh-my-zsh installation.
export ZSH="/home/sgadimbayli/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys"

DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=30

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nano'
fi

rssh(){
  eval "$(ssh-agent)"
  ssh-add
  ssh-add -l
}

# Compilation flags

# export ARCHFLAGS="-arch x86_64"

# Functions
clean_git_branches(){
  git branch | grep -v "develop\|master" | xargs git branch -D
}

# Aliases
alias zshconfig="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"

alias grh="git reset --hard"
alias gcp="git cherry-pick"

alias gi="git init"
alias gs="git status"
alias gsh="git show"
alias gcfd="git clean -f -d"

alias giff="git diff"

alias ga="git add"
alias gaa="git add ."

alias gpl="git pull"

alias gps="git push"
alias gpf="git push --force-with-lease"
alias gpu="git push --set-upstream origin"

alias grs="git reset"
alias grhh="git reset --hard HEAD"
alias grsh="git reset --soft HEAD"

alias gr="git rebase"
alias gri="git rebase -i"

alias gcm="git commit -m"
alias gmd="git merge origin/develop"
alias gmm="git merge origin/master"

alias gl="git log"
alias gref="git reflog"

alias gb="git branch"
alias gco="git checkout"
alias gcob="git checkout -b"

alias gash="git stash"
alias gop="git stash pop"
alias gapp="git stash apply"

alias be="bundle exec"
alias bi="bundle install"
alias bus="bundle update --source"

alias rmn="rm -rf node_modules"
alias yi="yarn install"

