export CLICOLOR=1

export LSCOLORS=GxFxCxDxBxegedabagaced

export TERM="xterm-color"
PS1='\[\033[0;33m\]\u\[\033[0m\]@\[\033[0;32m\]\h\[\033[0m\]:\[\033[0;34m\]\w\[\033[0m\]\$ '

alias copy_git_token="cat ~/.git_token | pbcopy"
alias gs="git status -sb"
alias gsm="gs | head -n 1 ; gs | grep \"^ M\" ; gs | grep \"^M\""
alias gllm="git lg | head -n 15"
alias ll="ls -la"
alias ga-mod="gs | grep \"^ M\" | cut -d\" \" -f3 | xargs git add"
alias rmb="find . -name \"*~\" | xargs rm"
alias rmorig="find . -name \"*.orig\" | xargs rm"
alias sync_time="sudo ntpdate ntp.ubuntu.com"
alias remove_none_images="sudo docker images | grep none | tr -s \" \" | cut -d\" \" -f3 | xargs -I{} sudo docker rmi -f {}"
function delete_pods {
  kubectl get pods | grep $1 | cut -d" " -f1 | xargs -P8 -I{} kubectl delete pods {}
}

export EDITOR=emacs
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export TERM=screen

function tmuxa {
    tmux attach -t $1
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tchen/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/tchen/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tchen/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/tchen/Downloads/google-cloud-sdk/completion.bash.inc'; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
