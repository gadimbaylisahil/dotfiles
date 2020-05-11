export PATH=$HOME/bin:/usr/local/bin:$PATH

#Fix for unknown terminal type in remote connections
export TERM=xterm-256color

#Rbenv shims
eval "$(rbenv init -)"
PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"

# Path to your oh-my-zsh installation.
export ZSH="/home/sgadimbayli/.oh-my-zsh"

#Elixir
export PATH="$PATH:/path/to/elixir/bin"
export ERL_AFLAGS="-kernel_shell_history_enabled"
ZSH_THEME="ys"

DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=30

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

plugins=(
git
zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags

# export ARCHFLAGS="-arch x86_64"

# Functions
clean_git_branches(){
  git branch | grep -v "develop\|master" | xargs git branch -D
}

rssh(){
  eval "$(ssh-agent)"
  ssh-add
  ssh-add -l
}

clean_orphan_packages() {
  pacman -Rns $(pacman -Qtdq)	
}

automatic_high_fidelity_in_sound_devices() {
  pactl list sinks short
}

sync_time {
  sudo ntpdate 1.ro.pool.ntp.org
}

# Aliases
alias zshconfig="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"

alias kk="kill -9"
alias cl="clear"
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

alias brs="bin/rails s"
alias bru="bundle exec rubocop"
