export CLICOLOR=1

export LSCOLORS=GxFxCxDxBxegedabagaced

export TERM="xterm-color"
PS1='\[\033[0;33m\]\u\[\033[0m\]@\[\033[0;32m\]\h\[\033[0m\]:\[\033[0;34m\]\w\[\033[0m\]\$ '

alias gs="git status -sb"
alias gsm="gs | head -n 1 ; gs | grep \"^ M\" ; gs | grep \"^M\""
alias gllm="git lg | head -n 15"
alias ll="ls -la"
alias ga-mod="gs | grep \"^ M\" | cut -d\" \" -f3 | xargs git add"
alias rmb="find . -name \"*~\" | xargs rm"
alias rmorig="find . -name \"*.orig\" | xargs rm"
alias sync_time="sudo ntpdate ntp.ubuntu.com"
alias remove_none_images="sudo docker images | grep none | tr -s \" \" | cut -d\" \" -f3 | xargs -I{} sudo docker rmi -f {}"

export EDITOR=emacs
export GOPATH=~/go/
export GOROOT=~/go
export TERM=screen
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin

function tmuxa {
    tmux attach -t $1
}
