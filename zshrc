# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=10000
setopt appendhistory autocd extendedglob notify
unsetopt beep nomatch
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
setopt auto_remove_slash
setopt hist_verify
setopt inc_append_history
setopt hist_ignore_dups
setopt hist_expire_dups_first
setopt correctall

source zshrc_aliases

# files associations
alias -s pdf="evince"

#vim open files found in search by name in tabs 
vif(){vim -p $(find -name $1)}

# two aliases to autobuild latex documents
mylatexpdf(){
[ $(ls -t |head -n1 |grep ".tex") ] && pdflatex "$1" 2>/dev/null;
};

myxelatexpdf(){
[ $(ls -t |head -n1 |grep ".tex") ] && xelatex "$1" 2>/dev/null;
};

# automate some actions when watch won't cut it
doer(){
while true; do $@; sleep 1; done;
}

# avoid duplicate params completion in cp, mv, rm
zstyle ':completion:*:rm:*' ignore-line yes
zstyle ':completion:*:mv:*' ignore-line yes
zstyle ':completion:*:cp:*' ignore-line yes

zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                           /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

bindkey ";5C" forward-word
bindkey ";5D" backward-word
bindkey "5C" forward-word
bindkey "5D" backward-word

export PYTHONPATH=~/kivy/

# zgitinit and prompt_wunjo_setup must be somewhere in your $fpath, see README for more.

setopt promptsubst

# Load the prompt theme system
autoload -U promptinit
promptinit

# VCS stuff
source ~/.zsh/zshrc_vcs_info


function set_prompt {
    prompt=""
    prompt+="%(?.. exited %1v
    )"
    prompt+="[%T] "
    prompt+="%F{grey}${vcs_info_msg_0_}%F{reset}
"
    prompt+=" %F{red}%n%F{blue}@%F{green}%U%M%u%f:%~%F{yellow}$%f "

    RPROMPT=""
}

function precmd {
   vcs_info
   set_prompt
}

