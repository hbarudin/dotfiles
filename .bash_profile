# Adaptly things
eval "$(rbenv init -)"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH="${JAVA_HOME}/bin:${PATH}"
[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.secrets ]] && . ~/.secrets

alias rails="envdir /Users/hbarudin/Google\ Drive/Engineering/Technology/env rails"
alias bundle="envdir /Users/hbarudin/Google\ Drive/Engineering/Technology/env bundle"
alias rake="envdir /Users/hbarudin/Google\ Drive/Engineering/Technology/env bundle"
alias lein="envdir /Users/hbarudin/Google\ Drive/Engineering/Technology/env lein"
alias bone="cd /Users/hbarudin/Development/adaptly-bone"
alias clj="cd /Users/hbarudin/Development/adaptly-clj"

export PATH="$HOME/.rbenv/bin:$HOME/bin:$PATH"

export GOOGLE_DRIVE="/Users/hbarudin/Google Drive/Engineering/Technology/env"

# Life things
export CLICOLOR=1
source "/Users/hbarudin/bin/git-completion.bash"
alias grep="grep --color=auto"
alias up="cd .."
alias findfile="git ls-files | grep -i"
alias findbranch="git b | grep -i "
alias crep="clear; git grep -i"
alias dotfiles="cd ~/Development/dotfiles"

alias gst="git status"
alias grhh="git reset --hard head"
alias gpdr="git push --dry-run"
alias gpfdr="git push --force --dry-run"
alias grom="git rebase origin/master"
alias branchesbydate="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

function gri() {
  git rebase -i HEAD~${1:?Missing number}
}
