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
