eval "$(rbenv init -)"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH="${JAVA_HOME}/bin:${PATH}"

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -f ~/.secrets ]] && . ~/.secrets

source "/Users/hbarudin/bin/git-completion.bash"

export PATH="$HOME/.rbenv/bin:$HOME/bin:$PATH"

export GOOGLE_DRIVE="/Users/hbarudin/Google Drive/Engineering/Technology/env"

alias grep="grep --color=auto"
alias up="cd .."
alias bone="cd ~/adaptly/adaptly-bone"
alias clj="cd ~/adaptly/adaptly-clj"
alias findfile="git ls-files | grep -i"
alias findbranch="git b | grep -i "
alias crep="clear; git grep -i"

alias rails="envdir /Users/hbarudin/Google\ Drive/Engineering/Technology/env rails"
alias bundle="envdir /Users/hbarudin/Google\ Drive/Engineering/Technology/env bundle"
alias rake="envdir /Users/hbarudin/Google\ Drive/Engineering/Technology/env bundle"
alias lein="envdir /Users/hbarudin/Google\ Drive/Engineering/Technology/env lein"

alias gst="git status"
alias grhh="git reset --hard head"
alias gpdr="git push --dry-run"
alias gpfdr="git push --force --dry-run"

function be() {
  [[ -f scripts/dev_start.sh ]] && ./scripts/dev_start.sh bundle exec $@ || bundle exec $@
}
function bers() {
  [[ -f scripts/dev_start.sh ]] && ./scripts/dev_start.sh || be rails s
}
function berc() {
  be rails c
}

function gri() {
  git rebase -i HEAD~${1:?Missing number}
}
