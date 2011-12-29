# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=10000
setopt appendhistory autocd extendedglob notify
unsetopt beep nomatch
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gaby/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
setopt auto_remove_slash
setopt hist_verify
setopt inc_append_history
setopt hist_ignore_dups
setopt hist_expire_dups_first
setopt correctall

prompt="[%T]
%F{red}%n%F{blue}@%F{green}%U%M%u%f:%~%F{yellow}$%f "

#my aliases
alias ls='ls --classify --tabsize=0 --literal --color=auto --show-control-chars --human-readable'
alias ls='ls --color=auto'
alias mpf='mplayer /tmp/F*'
alias ll='ls -l'
alias grep='grep --color=auto'
alias ngrep='grep -n'
alias sc='screen'
alias sr='sc -r'
alias sx='sc -x'
alias mplayer='mplayer -vo x11 -zoom'
alias bt='btdownloadcurses --max_upload_rate 10'
alias vis='vim -S'
alias vibashrc='vim ~/.bashrc && . ~/.bashrc'
alias virc='vim ~/.vimrc'
alias mpf='mplayer /tmp/F*'
alias am='alsamixer'
alias nma='nm-applet'
alias nmp='nm-py-control'
alias soff='killall gnome-power-manager'
alias son='gnome-power-manager'
alias wi="watch 'sudo iwlist wlan0 scan |grep -e \"(ESSID|Qual|Enc)\"'"
alias ce='crontab -e'
alias speak='espeak -s 90 "speak master; for i am here to obey"&'

alias f='find -name'
#vim open files found in search by name in tabs 
vif(){vim -p $(find -name $1)}

mylatexpdf(){
[ $(ls -t |head -n1 |grep ".tex") ] && pdflatex "$1" 2>/dev/null;
};

myxelatexpdf(){
[ $(ls -t |head -n1 |grep ".tex") ] && xelatex "$1" 2>/dev/null;
};

doer(){
while true; do $@; sleep 1; done;
}


#alias de fichiers
alias -s pdf="evince"

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

# Use the wunjo prompt theme
prompt wunjo

prompt=""
prompt+="%(?.. exited %1v
)"
#prompt+="%(2~.%~.%/)"
prompt+="\$(prompt_wunjo_scm_status)"
#prompt+="
#"
#prompt+="%h "
#prompt+="%1~"
prompt+="\$(prompt_wunjo_scm_branch)"
#prompt+=" %#"
prompt+="
[%T] %F{red}%n%F{blue}@%F{green}%U%M%u%f:%~%F{yellow}$%f "

RPROMPT=""
