alias l='ls -alhF'
alias la='ls -AFh'
alias ll='ls -lhF'
alias gst='git status'
alias vi=vim

# taobao npm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"

# proxy
function corp_proxy_on() {
	export http_proxy=""
	export https_proxy=""
}

function corp_proxy_off() {
	unset http_proxy;
	unset https_proxy;
}

function self_proxy_on() {
    export all_proxy="socks5://127.0.0.1:1080"
}

function self_proxy_off() {
    unset all_proxy;
}

# vim config
export CLICOLOR=1
export TERM=xterm-256color
export GOPATH="${HOME}/devspace/gopath"
export GOBIN="${GOPATH}/bin"

# git commands completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
   . $(brew --prefix)/etc/bash_completion
fi

# get git branch
RED="\033[0;33;31m"
GREEN="\033[0;33;32m"
ORANGE="\033[0;33;49m"
YELLOW="\033[0;33;33m"
BLUE="\033[0;33;34m"
PURPLE="\033[0;33;35m"
RESET="\033[m"
function parse_git_branch {
    log=$(git status -sb 2> /dev/null)

    OLD_IFS="$IFS"
    IFS=$(echo -e "\n\b")
    arr=($log)
    IFS="$OLD_IFS"

    git_branch="${arr[0]:3}"

    if [ ${#git_branch} -gt 0 ]; then
        if [ ${#arr[@]} -gt 1 ]; then
            git_branch="${RED}($git_branch)${RESET}"
        else
            git_branch="${GREEN}($git_branch)${RESET}"
        fi
    fi
    echo -e ${git_branch}
}


export PS1="\u@\h \[\033[01;36m\]\W\[\033[01;32m\] \$(parse_git_branch)\[\033[00m\] \n\$ "

export PATH="${PATH}:${GOBIN}"
