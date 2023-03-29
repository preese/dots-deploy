# If not running interactively, don't do anything
[ -z "$PS1" ] && return


#-------------------------------------------------------------
# Source global definitions (if any)
#-------------------------------------------------------------


if [ -f /etc/bashrc ]; then
      . /etc/bashrc   # --> Read /etc/bashrc, if present.
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging featu  re:
# export SYSTEMD_PAGER=

#-------------------------------------------------------------
# Some settings
#-------------------------------------------------------------

ulimit -S -c 0      # Don't want coredumps.
set -o notify
set -o noclobber
set -o ignoreeof

# Enable options:
shopt -s cdspell
shopt -s cdable_vars
shopt -s checkhash
shopt -s checkwinsize
shopt -s sourcepath
shopt -s no_empty_cmd_completion
shopt -s cmdhist
shopt -s histappend histreedit histverify
shopt -s extglob       # Necessary for programmable completion.

#-------------------
# Personnal Aliases
#-------------------

alias sups="ssh -NT -L 1234:trident.stanford.edu:443 networker@srn-dm.stanford.edu"
alias hpr="ssh -NT -L 1235:ps-100g-hpr02.stanford.edu:9090 networker@srn-dm.stanford.edu"
alias dn="sudo dnf -y "
alias ip4="ip -4 -br a"
alias ip="ip -c"
alias tmuxx=zellij
alias cat='bat -P'
alias more=bat
alias m=bat
export LESS='--quit-if-one-screen --ignore-case --status-column --LONG-PROMPT --RAW-CONTROL-CHARS --HILITE-UNREAD --tabs=4 --no-init --window=-4'
# export LESS="--RAW-CONTROL-CHARS --file-size --LONG-PROMPT"
#alias rm='rm -i'
#alias cp='cp -i'
#alias mv='mv -i'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'
alias ky='ssh-keygen -R '

alias h='history'
alias j='jobs -l'
alias which='type -a'

# Pretty-print of some PATH variables:
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'


alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'

## get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

alias mount='mount |column -t'


if [ -f /usr/bin/vim ]; then
      alias vi=vim
fi

alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'

alias ports='ss -tulanp'
alias psg='ps -ef | grep -i $1'
alias nsg='ss -natp | grep -i $1'

#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls).
#-------------------------------------------------------------
TREE_IGNORE="cache|log|logs|node_modules|vendor"

alias ls=' exa --group-directories-first'
alias la=' ls -al'
alias laa=' ls -alg'
alias lx='ls --sort=extension'         #  Sort by extension.
alias lk='ls --sort=size'         #  Sort by size, biggest last.
alias lt='ls --sort=changed'         #  Sort by date, most recent last.
alias lu='ls --sort=accessed'        #  Sort by/show access time,most recent last.

# append a session's history on shell exit
export HISTFILESIZE=
export HISTSIZE=
export HISTCONTROL=ignoreboth
export HISTTIMEFORMAT="[%F %T] "
shopt -s histappend

export PROMPT_COMMAND="history -a; history -c; history -r"
# Add color and previous proces state to prompt
PS1='$(if [ $? -eq 0 ]; then  echo "\[\033[01;32m\]✔ "; else echo "\[\033[01;31m\]✗ "; fi)\[\e[32m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\] \[\e[33m\]\w\[\e[m\] \\$ '
