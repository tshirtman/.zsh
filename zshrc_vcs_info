autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git hg bzr svn
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats "(%s)%6.6i %F{cyan}%b%F{reset} %u%F{red}%c%F{reset} %m"
zstyle ':vcs_info:*:*' unstagedstr "%F{green}!%F{reset}"
zstyle ':vcs_info:*' actionformats "(%s|%F{red}%a%F{reset}) %6.6i %F{cyan}%b%F{reset} %u%F{red}%c%F{reset} %m"

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

### git: Show marker (?) if there are untracked files in repository
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


 ### Compare local changes to remote changes
 
 ### git: Show +N/-N when your local branch is ahead-of or behind remote HEAD.
 # Make sure you have added misc to your 'formats':  %m
 zstyle ':vcs_info:git*+set-message:*' hooks git-st
 function +vi-git-st() {
     local ahead behind
     local -a gitstatus
 
     # for git prior to 1.7
     # ahead=$(git rev-list origin/${hook_com[branch]}..HEAD | wc -l)
     ahead=$(git rev-list ${hook_com[branch]}@{upstream}..HEAD 2>/dev/null | wc -l)
     (( $ahead )) && gitstatus+=( "+${ahead}" )
 
     # for git prior to 1.7
     # behind=$(git rev-list HEAD..origin/${hook_com[branch]} | wc -l)
     behind=$(git rev-list HEAD..${hook_com[branch]}@{upstream} 2>/dev/null | wc -l)
     (( $behind )) && gitstatus+=( "-${behind}" )
 
     hook_com[misc]+=${(j:/:)gitstatus}
 }
 
 ### git: Show remote branch name for remote-tracking branches
 zstyle ':vcs_info:git*+set-message:*' hooks git-remotebranch
 
 function +vi-git-remotebranch() {
     local remote
 
     # Are we on a remote-tracking branch?
     remote=${$(git rev-parse --verify ${hook_com[branch]}@{upstream} \
         --symbolic-full-name 2>/dev/null)/refs\/remotes\/}
 
     # The first test will show a tracking branch whenever there is one. The
     # second test, however, will only show the remote branch's name if it
     # differs from the local one.
     if [[ -n ${remote} ]] ; then
     #if [[ -n ${remote} && ${remote#*/} != ${hook_com[branch]} ]] ; then
         hook_com[branch]="${hook_com[branch]} [${remote}]"
     fi
 }
 
 
 ### hg: Show marker when the working directory is not on a branch head
 # This may indicate that running `hg up` will do something
 # NOTE: the branchheads.cache file is not updated with every Mercurial
 # operation, so it will sometimes give false positives. Think of this more as a
 # hint that you might not be on a branch head instead of the final word.
 zstyle ':vcs_info:hg+set-hgrev-format:*' hooks hg-storerev
 zstyle ':vcs_info:hg+set-message:*' hooks hg-branchhead
 
 # The hash is available in the hgrev-format hook, store a copy of it in the
 # user_data array so we can access it in the second function
 function +vi-hg-storerev() {
     user_data[hash]=${hook_com[hash]}
 }
 
 function +vi-hg-branchhead() {
     local branchheadsfile i_tiphash i_branchname
     local -a branchheads
 
     local branchheadsfile=${hook_com[base]}/.hg/branchheads.cache
 
     # Bail out if any mq patches are applied
     [[ -s ${hook_com[base]}/.hg/patches/status ]] && return 0
 
     if [[ -r ${branchheadsfile} ]] ; then
         while read -r i_tiphash i_branchname ; do
             branchheads+=( $i_tiphash )
         done < ${branchheadsfile}
 
         if [[ ! ${branchheads[(i)${user_data[hash]}]} -le ${#branchheads} ]] ; then
             hook_com[revision]="^ ${hook_com[revision]}"
         fi
     fi
 }
 
