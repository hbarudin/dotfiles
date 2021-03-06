# Life things
eval "$(rbenv init -)"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH="${JAVA_HOME}/bin:${PATH}"

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -f ~/.secrets ]] && . ~/.secrets

export PATH="$HOME/.rbenv/bin:$HOME/bin:$PATH"

export CLICOLOR=1
source "$HOME/bin/git-completion.bash"
alias grep="grep --color=auto"
alias up="cd .."
alias findfile="git ls-files | grep -i"
alias findbranch="git b | grep -i "
alias crep="clear; git grep -i"
alias dotfiles="cd ~/Development/dotfiles"

alias gst="git status"
alias gco="git checkout"
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

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then . "$HOME/google-cloud-sdk/path.bash.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]; then . "$HOME/google-cloud-sdk/completion.bash.inc"; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

export NOMAD_FLASK_PATH="~/Development/nomad-flask"
alias nomad="cd $NOMAD_FLASK_PATH"
alias nomad-start="nomad && docker-compose up -d web && yarn assets-watch"
alias nomad-start-admin="nomad && docker-compose up -d web && yarn admin-assets-watch"
alias nomad-stop="cd $NOMAD_FLASK_PATH && docker-compose stop"
