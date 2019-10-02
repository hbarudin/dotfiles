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
alias goback="git checkout -"
alias branchesbydate="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

function gri() {
  git rebase -i HEAD~${1:?Missing number}
}

# Nomad Health things

export GITHUB_ACCESS_TOKEN='85da48f5c7f958557392dcd3f73df6ca6175ac70'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/hannahbarudin/google-cloud-sdk/path.bash.inc' ]; then . '/Users/hannahbarudin/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/hannahbarudin/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/hannahbarudin/google-cloud-sdk/completion.bash.inc'; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
