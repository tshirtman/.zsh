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

# VCS stuff
autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git hg bzr svn
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats "(%s)%6.6i %F{blue}%b%F{reset} %u%F{red}%c%F{reset} %m"
zstyle ':vcs_info:*:*' unstagedstr "%F{green}!%F{reset}"
zstyle ':vcs_info:*' actionformats "(%s|%F{red}%a%F{reset}) %6.6i %F{blue}%b%F{reset} %u%F{red}%c%F{reset} %m"

### Dynamically set hgrevformat based on if the local rev is available
# We don't always know the local revision, e.g. if use-simple is set
# Truncate long hash to 12-chars but also allow for multiple parents
function +vi-hg-hashfallback() {
    if [[ -z ${hook_com[localrev]} ]] ; then
        local -a parents

        parents=( ${(s:+:)hook_com[hash]} )
        parents=( ${(@r:12:)parents} )
        hook_com[rev-replace]="${(j:+:)parents}"

        ret=1
    fi
}

### Show when mq itself is under version control
function +vi-mq-vcs() {
    # if [[ -d ${hook_com[base]}/.hg/patches/.hg ]]; then
        # hook_com[hg-mqpatch-string]="mq:${hook_com[hg-mqpatch-string]}"
    # fi
}

# Show remote ref name and number of commits ahead-of or behind
function +vi-git-st() {
    local ahead behind remote
    local -a gitstatus

    # Are we on a remote-tracking branch?
    remote=${$(git rev-parse --verify ${hook_com[branch]}@{upstream} \
        --symbolic-full-name --abbrev-ref 2>/dev/null)}

    if [[ -n ${remote} ]] ; then
        # for git prior to 1.7
        # ahead=$(git rev-list origin/${hook_com[branch]}..HEAD | wc -l)
        ahead=$(git rev-list ${hook_com[branch]}@{upstream}..HEAD 2>/dev/null | wc -l)
        (( $ahead )) && gitstatus+=( "${green}+${ahead}${gray}" )

        # for git prior to 1.7
        # behind=$(git rev-list HEAD..origin/${hook_com[branch]} | wc -l)
        behind=$(git rev-list HEAD..${hook_com[branch]}@{upstream} 2>/dev/null | wc -l)
        (( $behind )) && gitstatus+=( "${red}-${behind}${gray}" )

        hook_com[branch]="${hook_com[branch]} [${remote} ${(j:/:)gitstatus}]"
    fi
}

# Show count of stashed changes
function +vi-git-stash() {
    local -a stashes

    if [[ -s ${hook_com[base]}/.git/refs/stash ]] ; then
        stashes=$(git stash list 2>/dev/null | wc -l)
        hook_com[misc]+=" (${stashes} stashed)"
    fi
}

### Display the existence of files not yet known to VCS

### git: Show marker (T) if there are untracked files in repository
# Make sure you have added staged to your 'formats':  %c
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked

function +vi-git-untracked(){
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        git status --porcelain | grep '??' &> /dev/null ; then
        # This will show the marker if there are any untracked files in repo.
        # If instead you want to show the marker only if there are untracked
        # files in $PWD, use:
        #[[ -n $(git ls-files --others --exclude-standard) ]] ; then
        hook_com[staged]+='?'
    fi
}


function set_prompt {
    prompt=""
    prompt+="%(?.. exited %1v
    )"
    #prompt+="%(2~.%~.%/)"
    #prompt+="\$(prompt_wunjo_scm_status)"
    #prompt+="
    #"
    #prompt+="%h "
    #prompt+="%1~"
    #prompt+="\$(prompt_wunjo_scm_branch)"
    #prompt+=" %#"
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

