
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/leshanchen/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/leshanchen/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/leshanchen/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/leshanchen/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


  export HOMEBREW_PIP_INDEX_URL=https://pypi.mirrors.ustc.edu.cn/simple #ckbrew
  export HOMEBREW_API_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles/api  #ckbrew
  export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles #ckbrew
  eval $(/usr/local/Homebrew/bin/brew shellenv) #ckbrew

marco () {
    marcopath=$(pwd)
}

polo () {
    cd "$marcopath"
}

tcoshell () {
    touch "$1".sh
    chmod 755 "$1".sh
    open "$1".sh
}

PS1='\$ '

# given a process's pid, wait until it finishes.
# argument: pid
pidwait () {
    a=0
    while [[ "$a" -eq 0 ]]
    do
        kill -0 "$1"
        a=$?
        sleep 5
    done	
    # echo "process completed"
}

alias vvc="vim vocab.txt"

mcd () {
    mkdir "$1"
    cd "$1"|| exit
}

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
export PATH="/usr/local/opt/util-linux/bin:$PATH"
export PATH="/usr/local/opt/util-linux/sbin:$PATH"



[[ -f ~/.bashrc ]] && . ~/.bashrc # ghcup-env

alias rm="rm -I"

co() { g++ -std=c++17 -O2 -o "${1%.*}" $1 -Wall; }
run() { co $1 && ./${1%.*} & fg; }

alias cdcs="cd ~/James/CS"


export PATH="/usr/local/opt/openjdk@8/bin:$PATH"

alias pgpath="/Users/leshanchen/James/CS/lab-work/2024.12_cardinality_estimation/datasets/postgres-local/"

export PATH="/usr/local/Cellar/postgresql@14/bin:$PATH"
