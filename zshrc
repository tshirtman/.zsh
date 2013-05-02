# Yeah let's try this!
set -o vi
bindkey 'jj' vi-cmd-mode

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

# fix vim being autocorrected
alias cp='nocorrect cp '
alias mv='nocorrect mv '
alias mkdir='nocorrect mkdir '

source ~/.zsh/zshrc_aliases

# files associations
alias -s pdf="evince"

source ~/.zsh/zshrc_functions

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

# python-for-android utils
source ~/.zsh/p4a_utils.sh

function set_prompt {
    prompt=""
    prompt+="%(?.. exited %1v
)"
    prompt+="[%T] "
    prompt+="%F{grey}${vcs_info_msg_0_}%F{reset}
"
    prompt+="%F{yellow}${VIRTUAL_ENV##*/}%F{reset}"
    prompt+=" %F{red}%n%F{blue}@%F{green}%U%M%u%f:%~%F{yellow}$%f "

    RPROMPT=""
}

# random quizz
source ~/.zsh/random_quizz.sh

# z.sh
source ~/.zsh/z.sh

function precmd {
   vcs_info
   set_prompt
   random_quizz 100 2
   z --add "$(pwd -P)"
}

if [ x$COLORTERM == "xgnome-terminal" ]
then
    export TERM=xterm-256color
fi

function ansi_colors {
  for attr in $(seq 0 1); do
    for fg in $(seq 30 37); do
      for bg in $(seq 40 47); do
        echo -n "\033[$attr;${bg};${fg}m$attr;$fg;$bg\033[m "
      done
      echo
    done
  done
}

source ~/.autoenv/activate.sh
