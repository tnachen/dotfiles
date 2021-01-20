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

