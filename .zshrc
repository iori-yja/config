# Created by newuser for 4.3.6

autoload -U compinit
compinit

autoload colors
colors

#autoload predict-on
#predict-on

bindkey -e

# historical backward/forward search with linehead string binded to ^P/^N
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

## Command history configuration
HISTFILE=~/.zsh_history
HISTSIZE=100000000
SAVEHIST=100000000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data


export PAGER='lv'
export EDITOR='vim'
export RI='--format ansi'

# auto directory pushd that you can get dirs list by cd -[tab]
setopt auto_pushd

# command correct edition before each completion attempt
#setopt correct

# compacked complete list display
setopt list_packed

# no beep sound when complete list displayed
setopt nolistbeep

preexec () {
    if [ $SHLVL -eq 2 ]
    then
	echo -ne "k${2%% *}\\"
    fi
}

[ -f ~/.zshrc.include ] && source ~/.zshrc.include

#alias grep="grep -n"
alias l='ls'
alias e='emacs'
alias sc='screen -r -RR'
alias ri='ri --format ansi'

function tmr() {
    if [ `tmux list-sessions | grep -v attached | wc -l` = 0 ]; then
	tmux;
    else
	tmux attach
    fi
}


function sudo() {
    echo "[38;5;200m"
    /usr/bin/sudo $*
    echo "[m"
}

function cd() {
    builtin cd $*
    l
}


[[ $EMACS = t ]] && unsetopt zle
